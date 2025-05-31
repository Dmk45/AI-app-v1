// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TokenStruct extends FFFirebaseStruct {
  TokenStruct({
    int? numberOfTokens,
    String? model,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _numberOfTokens = numberOfTokens,
        _model = model,
        super(firestoreUtilData);

  // "number_of_Tokens" field.
  int? _numberOfTokens;
  int get numberOfTokens => _numberOfTokens ?? 0;
  set numberOfTokens(int? val) => _numberOfTokens = val;

  void incrementNumberOfTokens(int amount) =>
      numberOfTokens = numberOfTokens + amount;

  bool hasNumberOfTokens() => _numberOfTokens != null;

  // "model" field.
  String? _model;
  String get model => _model ?? '';
  set model(String? val) => _model = val;

  bool hasModel() => _model != null;

  static TokenStruct fromMap(Map<String, dynamic> data) => TokenStruct(
        numberOfTokens: castToType<int>(data['number_of_Tokens']),
        model: data['model'] as String?,
      );

  static TokenStruct? maybeFromMap(dynamic data) =>
      data is Map ? TokenStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'number_of_Tokens': _numberOfTokens,
        'model': _model,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'number_of_Tokens': serializeParam(
          _numberOfTokens,
          ParamType.int,
        ),
        'model': serializeParam(
          _model,
          ParamType.String,
        ),
      }.withoutNulls;

  static TokenStruct fromSerializableMap(Map<String, dynamic> data) =>
      TokenStruct(
        numberOfTokens: deserializeParam(
          data['number_of_Tokens'],
          ParamType.int,
          false,
        ),
        model: deserializeParam(
          data['model'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TokenStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TokenStruct &&
        numberOfTokens == other.numberOfTokens &&
        model == other.model;
  }

  @override
  int get hashCode => const ListEquality().hash([numberOfTokens, model]);
}

TokenStruct createTokenStruct({
  int? numberOfTokens,
  String? model,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TokenStruct(
      numberOfTokens: numberOfTokens,
      model: model,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TokenStruct? updateTokenStruct(
  TokenStruct? token, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    token
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTokenStructData(
  Map<String, dynamic> firestoreData,
  TokenStruct? token,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (token == null) {
    return;
  }
  if (token.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && token.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final tokenData = getTokenFirestoreData(token, forFieldValue);
  final nestedData = tokenData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = token.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTokenFirestoreData(
  TokenStruct? token, [
  bool forFieldValue = false,
]) {
  if (token == null) {
    return {};
  }
  final firestoreData = mapToFirestore(token.toMap());

  // Add any Firestore field values
  token.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTokenListFirestoreData(
  List<TokenStruct>? tokens,
) =>
    tokens?.map((e) => getTokenFirestoreData(e, true)).toList() ?? [];
