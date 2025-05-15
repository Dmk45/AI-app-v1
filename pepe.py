import numpy as np

def binary_cross_entropy(y_true, y_pred):
    epsilon = 1e-15  # Small value to avoid division by zero
    y_pred = np.clip(y_pred, epsilon, 1 - epsilon)  # Clip values to avoid log(0)
    return -np.mean(y_true * np.log(y_pred) + (1 - y_true) * np.log(1 - y_pred))




class AdamOptimizer:
    def __init__(self, correct, loss, lr=0.001, beta1=0.9, beta2=0.999, epsilon=1e-8):
        self.lr = lr
        self.beta1 = beta1
        self.beta2 = beta2
        self.epsilon = epsilon
        self.m = None
        self.v = None
        self.t = 0
        self.coreect = correct
        self.loss = loss
    def decent(self):
        return self.loss/self.correct


a1 = np.array([0.333, 0.333, 0.333])
a2 = np.array([0.06700716, 0.2187655,  0.71422735])
t = binary_cross_entropy(a1, a2)
print(t)


y_true = np.array([0.333, 0.333, 0.333])