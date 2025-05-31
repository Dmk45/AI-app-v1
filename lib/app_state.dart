import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _bult = await secureStorage.getBool('ff_bult') ?? _bult;
    });
    await _safeInitAsync(() async {
      _CurrentModel =
          await secureStorage.getString('ff_CurrentModel') ?? _CurrentModel;
    });
    await _safeInitAsync(() async {
      _modelsize = await secureStorage.getString('ff_modelsize') ?? _modelsize;
    });
    await _safeInitAsync(() async {
      _currentoken =
          await secureStorage.getString('ff_currentoken') ?? _currentoken;
    });
    await _safeInitAsync(() async {
      _bornN = await secureStorage.getBool('ff_bornN') ?? _bornN;
    });
    await _safeInitAsync(() async {
      _Index = await secureStorage.getInt('ff_Index') ?? _Index;
    });
    await _safeInitAsync(() async {
      _Temppassword =
          await secureStorage.getString('ff_Temppassword') ?? _Temppassword;
    });
    await _safeInitAsync(() async {
      _chatlis = (await secureStorage.getStringList('ff_chatlis'))
              ?.map((x) {
                try {
                  return ChatLisStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _chatlis;
    });
    await _safeInitAsync(() async {
      _currentINDEX =
          await secureStorage.getInt('ff_currentINDEX') ?? _currentINDEX;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  bool _bult = true;
  bool get bult => _bult;
  set bult(bool value) {
    _bult = value;
    secureStorage.setBool('ff_bult', value);
  }

  void deleteBult() {
    secureStorage.delete(key: 'ff_bult');
  }

  String _CurrentModel = 'gemini';
  String get CurrentModel => _CurrentModel;
  set CurrentModel(String value) {
    _CurrentModel = value;
    secureStorage.setString('ff_CurrentModel', value);
  }

  void deleteCurrentModel() {
    secureStorage.delete(key: 'ff_CurrentModel');
  }

  String _currentrepo = '';
  String get currentrepo => _currentrepo;
  set currentrepo(String value) {
    _currentrepo = value;
  }

  bool _finit = true;
  bool get finit => _finit;
  set finit(bool value) {
    _finit = value;
  }

  String _modelsize = '';
  String get modelsize => _modelsize;
  set modelsize(String value) {
    _modelsize = value;
    secureStorage.setString('ff_modelsize', value);
  }

  void deleteModelsize() {
    secureStorage.delete(key: 'ff_modelsize');
  }

  String _currentoken = '';
  String get currentoken => _currentoken;
  set currentoken(String value) {
    _currentoken = value;
    secureStorage.setString('ff_currentoken', value);
  }

  void deleteCurrentoken() {
    secureStorage.delete(key: 'ff_currentoken');
  }

  bool _bornN = true;
  bool get bornN => _bornN;
  set bornN(bool value) {
    _bornN = value;
    secureStorage.setBool('ff_bornN', value);
  }

  void deleteBornN() {
    secureStorage.delete(key: 'ff_bornN');
  }

  int _Index = 1;
  int get Index => _Index;
  set Index(int value) {
    _Index = value;
    secureStorage.setInt('ff_Index', value);
  }

  void deleteIndex() {
    secureStorage.delete(key: 'ff_Index');
  }

  String _wholetext = '';
  String get wholetext => _wholetext;
  set wholetext(String value) {
    _wholetext = value;
  }

  String _Temppassword = '';
  String get Temppassword => _Temppassword;
  set Temppassword(String value) {
    _Temppassword = value;
    secureStorage.setString('ff_Temppassword', value);
  }

  void deleteTemppassword() {
    secureStorage.delete(key: 'ff_Temppassword');
  }

  List<ChatLisStruct> _chatlis = [];
  List<ChatLisStruct> get chatlis => _chatlis;
  set chatlis(List<ChatLisStruct> value) {
    _chatlis = value;
    secureStorage.setStringList(
        'ff_chatlis', value.map((x) => x.serialize()).toList());
  }

  void deleteChatlis() {
    secureStorage.delete(key: 'ff_chatlis');
  }

  void addToChatlis(ChatLisStruct value) {
    chatlis.add(value);
    secureStorage.setStringList(
        'ff_chatlis', _chatlis.map((x) => x.serialize()).toList());
  }

  void removeFromChatlis(ChatLisStruct value) {
    chatlis.remove(value);
    secureStorage.setStringList(
        'ff_chatlis', _chatlis.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromChatlis(int index) {
    chatlis.removeAt(index);
    secureStorage.setStringList(
        'ff_chatlis', _chatlis.map((x) => x.serialize()).toList());
  }

  void updateChatlisAtIndex(
    int index,
    ChatLisStruct Function(ChatLisStruct) updateFn,
  ) {
    chatlis[index] = updateFn(_chatlis[index]);
    secureStorage.setStringList(
        'ff_chatlis', _chatlis.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInChatlis(int index, ChatLisStruct value) {
    chatlis.insert(index, value);
    secureStorage.setStringList(
        'ff_chatlis', _chatlis.map((x) => x.serialize()).toList());
  }

  int _currentINDEX = 0;
  int get currentINDEX => _currentINDEX;
  set currentINDEX(int value) {
    _currentINDEX = value;
    secureStorage.setInt('ff_currentINDEX', value);
  }

  void deleteCurrentINDEX() {
    secureStorage.delete(key: 'ff_currentINDEX');
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
