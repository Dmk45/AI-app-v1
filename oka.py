import socket
import threading
from queue import Queue

def scan_port(ip, port, timeout=1.0):
    """
    Attempts to connect to (ip, port). Returns True if the port is open.
    """
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.settimeout(timeout)
        try:
            s.connect((ip, port))
            return True
        except (socket.timeout, socket.error):
            return False

def worker(task_queue, results):
    """
    Worker thread: pulls (ip, port) pairs from the queue and scans them.
    """
    while True:
        try:
            ip, port = task_queue.get_nowait()
        except Queue.Empty:
            break

        if scan_port(ip, port):
            results.append((ip, port))
        task_queue.task_done()

def scan_network(subnet, ports, num_threads=100, timeout=1.0):
    """
    Scans the given /24 subnet for the specified ports using multiple threads.
    
    Args:
        subnet    (str): Subnet in CIDR, e.g. "192.168.1.0/24"
        ports     (list[int] or range): Ports to scan
        num_threads (int): Number of concurrent threads
        timeout   (float): Socket timeout per port (seconds)
    
    Returns:
        List of tuples (ip, port) for each open port found.
    """
    # Generate all host IPs in the /24 subnet
    base_ip = subnet.split('/')[0]
    octets = base_ip.split('.')
    network_prefix = '.'.join(octets[:3])
    ips = [f"{network_prefix}.{i}" for i in range(1, 255)]

    # Prepare task queue and shared results list
    task_queue = Queue()
    results = []

    # Enqueue scan jobs
    for ip in ips:
        for port in ports:
            task_queue.put((ip, port))

    # Start worker threads
    threads = []
    for _ in range(num_threads):
        t = threading.Thread(target=worker, args=(task_queue, results))
        t.daemon = True
        t.start()
        threads.append(t)

    # Wait for all tasks to finish
    task_queue.join()
    return results

if __name__ == "__main__":
    # Example usage
    target_subnet = "149.102.231.81/24"
    ports_to_scan = [22, 80, 443]       # Common ports
    threads = 50                        # Number of threads to use
    timeout = 0.5                       # Seconds to wait per port

    print(f"Scanning {target_subnet} on ports {ports_to_scan} with {threads} threads...")
    open_ports = scan_network(target_subnet, ports_to_scan, num_threads=threads, timeout=timeout)

    if open_ports:
        print("Open ports found:")
        for ip, port in sorted(open_ports):
            print(f"  {ip}:{port}")
    else:
        print("No open ports found.")
