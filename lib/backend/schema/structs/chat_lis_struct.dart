// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatLisStruct extends FFFirebaseStruct {
  ChatLisStruct({
    List<HistorygeminiStruct>? chatContentList,
    String? id,
    String? name,
    String? model,
    int? index,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _chatContentList = chatContentList,
        _id = id,
        _name = name,
        _model = model,
        _index = index,
        super(firestoreUtilData);

  // "chat_content_list" field.
  List<HistorygeminiStruct>? _chatContentList;
  List<HistorygeminiStruct> get chatContentList => _chatContentList ?? const [];
  set chatContentList(List<HistorygeminiStruct>? val) => _chatContentList = val;

  void updateChatContentList(Function(List<HistorygeminiStruct>) updateFn) {
    updateFn(_chatContentList ??= []);
  }

  bool hasChatContentList() => _chatContentList != null;

  // "ID" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "Model" field.
  String? _model;
  String get model => _model ?? '';
  set model(String? val) => _model = val;

  bool hasModel() => _model != null;

  // "index" field.
  int? _index;
  int get index => _index ?? 1;
  set index(int? val) => _index = val;

  void incrementIndex(int amount) => index = index + amount;

  bool hasIndex() => _index != null;

  static ChatLisStruct fromMap(Map<String, dynamic> data) => ChatLisStruct(
        chatContentList: getStructList(
          data['chat_content_list'],
          HistorygeminiStruct.fromMap,
        ),
        id: data['ID'] as String?,
        name: data['name'] as String?,
        model: data['Model'] as String?,
        index: castToType<int>(data['index']),
      );

  static ChatLisStruct? maybeFromMap(dynamic data) =>
      data is Map ? ChatLisStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'chat_content_list': _chatContentList?.map((e) => e.toMap()).toList(),
        'ID': _id,
        'name': _name,
        'Model': _model,
        'index': _index,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'chat_content_list': serializeParam(
          _chatContentList,
          ParamType.DataStruct,
          isList: true,
        ),
        'ID': serializeParam(
          _id,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'Model': serializeParam(
          _model,
          ParamType.String,
        ),
        'index': serializeParam(
          _index,
          ParamType.int,
        ),
      }.withoutNulls;

  static ChatLisStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChatLisStruct(
        chatContentList: deserializeStructParam<HistorygeminiStruct>(
          data['chat_content_list'],
          ParamType.DataStruct,
          true,
          structBuilder: HistorygeminiStruct.fromSerializableMap,
        ),
        id: deserializeParam(
          data['ID'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        model: deserializeParam(
          data['Model'],
          ParamType.String,
          false,
        ),
        index: deserializeParam(
          data['index'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ChatLisStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ChatLisStruct &&
        listEquality.equals(chatContentList, other.chatContentList) &&
        id == other.id &&
        name == other.name &&
        model == other.model &&
        index == other.index;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([chatContentList, id, name, model, index]);
}

ChatLisStruct createChatLisStruct({
  String? id,
  String? name,
  String? model,
  int? index,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChatLisStruct(
      id: id,
      name: name,
      model: model,
      index: index,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ChatLisStruct? updateChatLisStruct(
  ChatLisStruct? chatLis, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    chatLis
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addChatLisStructData(
  Map<String, dynamic> firestoreData,
  ChatLisStruct? chatLis,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (chatLis == null) {
    return;
  }
  if (chatLis.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && chatLis.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final chatLisData = getChatLisFirestoreData(chatLis, forFieldValue);
  final nestedData = chatLisData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = chatLis.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getChatLisFirestoreData(
  ChatLisStruct? chatLis, [
  bool forFieldValue = false,
]) {
  if (chatLis == null) {
    return {};
  }
  final firestoreData = mapToFirestore(chatLis.toMap());

  // Add any Firestore field values
  chatLis.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChatLisListFirestoreData(
  List<ChatLisStruct>? chatLiss,
) =>
    chatLiss?.map((e) => getChatLisFirestoreData(e, true)).toList() ?? [];
