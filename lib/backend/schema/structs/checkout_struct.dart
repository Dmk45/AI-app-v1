// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CheckoutStruct extends FFFirebaseStruct {
  CheckoutStruct({
    String? session,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _session = session,
        super(firestoreUtilData);

  // "session" field.
  String? _session;
  String get session => _session ?? '';
  set session(String? val) => _session = val;

  bool hasSession() => _session != null;

  static CheckoutStruct fromMap(Map<String, dynamic> data) => CheckoutStruct(
        session: data['session'] as String?,
      );

  static CheckoutStruct? maybeFromMap(dynamic data) =>
      data is Map ? CheckoutStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'session': _session,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'session': serializeParam(
          _session,
          ParamType.String,
        ),
      }.withoutNulls;

  static CheckoutStruct fromSerializableMap(Map<String, dynamic> data) =>
      CheckoutStruct(
        session: deserializeParam(
          data['session'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CheckoutStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CheckoutStruct && session == other.session;
  }

  @override
  int get hashCode => const ListEquality().hash([session]);
}

CheckoutStruct createCheckoutStruct({
  String? session,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CheckoutStruct(
      session: session,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CheckoutStruct? updateCheckoutStruct(
  CheckoutStruct? checkout, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    checkout
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCheckoutStructData(
  Map<String, dynamic> firestoreData,
  CheckoutStruct? checkout,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (checkout == null) {
    return;
  }
  if (checkout.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && checkout.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final checkoutData = getCheckoutFirestoreData(checkout, forFieldValue);
  final nestedData = checkoutData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = checkout.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCheckoutFirestoreData(
  CheckoutStruct? checkout, [
  bool forFieldValue = false,
]) {
  if (checkout == null) {
    return {};
  }
  final firestoreData = mapToFirestore(checkout.toMap());

  // Add any Firestore field values
  checkout.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCheckoutListFirestoreData(
  List<CheckoutStruct>? checkouts,
) =>
    checkouts?.map((e) => getCheckoutFirestoreData(e, true)).toList() ?? [];
