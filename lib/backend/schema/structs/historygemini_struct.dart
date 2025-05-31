// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistorygeminiStruct extends FFFirebaseStruct {
  HistorygeminiStruct({
    String? role,
    String? modelName,
    String? modelsize,
    String? content,
    String? id,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _role = role,
        _modelName = modelName,
        _modelsize = modelsize,
        _content = content,
        _id = id,
        super(firestoreUtilData);

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;

  bool hasRole() => _role != null;

  // "model_name" field.
  String? _modelName;
  String get modelName => _modelName ?? '';
  set modelName(String? val) => _modelName = val;

  bool hasModelName() => _modelName != null;

  // "modelsize" field.
  String? _modelsize;
  String get modelsize => _modelsize ?? '';
  set modelsize(String? val) => _modelsize = val;

  bool hasModelsize() => _modelsize != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  set content(String? val) => _content = val;

  bool hasContent() => _content != null;

  // "ID" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  static HistorygeminiStruct fromMap(Map<String, dynamic> data) =>
      HistorygeminiStruct(
        role: data['role'] as String?,
        modelName: data['model_name'] as String?,
        modelsize: data['modelsize'] as String?,
        content: data['content'] as String?,
        id: data['ID'] as String?,
      );

  static HistorygeminiStruct? maybeFromMap(dynamic data) => data is Map
      ? HistorygeminiStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'role': _role,
        'model_name': _modelName,
        'modelsize': _modelsize,
        'content': _content,
        'ID': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
        'model_name': serializeParam(
          _modelName,
          ParamType.String,
        ),
        'modelsize': serializeParam(
          _modelsize,
          ParamType.String,
        ),
        'content': serializeParam(
          _content,
          ParamType.String,
        ),
        'ID': serializeParam(
          _id,
          ParamType.String,
        ),
      }.withoutNulls;

  static HistorygeminiStruct fromSerializableMap(Map<String, dynamic> data) =>
      HistorygeminiStruct(
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
        modelName: deserializeParam(
          data['model_name'],
          ParamType.String,
          false,
        ),
        modelsize: deserializeParam(
          data['modelsize'],
          ParamType.String,
          false,
        ),
        content: deserializeParam(
          data['content'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['ID'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'HistorygeminiStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HistorygeminiStruct &&
        role == other.role &&
        modelName == other.modelName &&
        modelsize == other.modelsize &&
        content == other.content &&
        id == other.id;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([role, modelName, modelsize, content, id]);
}

HistorygeminiStruct createHistorygeminiStruct({
  String? role,
  String? modelName,
  String? modelsize,
  String? content,
  String? id,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    HistorygeminiStruct(
      role: role,
      modelName: modelName,
      modelsize: modelsize,
      content: content,
      id: id,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

HistorygeminiStruct? updateHistorygeminiStruct(
  HistorygeminiStruct? historygemini, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    historygemini
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addHistorygeminiStructData(
  Map<String, dynamic> firestoreData,
  HistorygeminiStruct? historygemini,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (historygemini == null) {
    return;
  }
  if (historygemini.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && historygemini.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final historygeminiData =
      getHistorygeminiFirestoreData(historygemini, forFieldValue);
  final nestedData =
      historygeminiData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = historygemini.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getHistorygeminiFirestoreData(
  HistorygeminiStruct? historygemini, [
  bool forFieldValue = false,
]) {
  if (historygemini == null) {
    return {};
  }
  final firestoreData = mapToFirestore(historygemini.toMap());

  // Add any Firestore field values
  historygemini.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getHistorygeminiListFirestoreData(
  List<HistorygeminiStruct>? historygeminis,
) =>
    historygeminis
        ?.map((e) => getHistorygeminiFirestoreData(e, true))
        .toList() ??
    [];
