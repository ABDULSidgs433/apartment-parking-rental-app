import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'addtocart_record.g.dart';

abstract class AddtocartRecord
    implements Built<AddtocartRecord, AddtocartRecordBuilder> {
  static Serializer<AddtocartRecord> get serializer =>
      _$addtocartRecordSerializer;

  String? get img;

  double? get price;

  @BuiltValueField(wireName: 'cartby_email')
  String? get cartbyEmail;

  @BuiltValueField(wireName: 'vehicle_type')
  String? get vehicleType;

  @BuiltValueField(wireName: 'floor_count')
  int? get floorCount;

  String? get cartby;

  @BuiltValueField(wireName: 'cart_mobile')
  String? get cartMobile;

  @BuiltValueField(wireName: 'cart_cur_time')
  DateTime? get cartCurTime;

  String? get directiontype;

  String? get uid;

  String? get uploadParkingUid;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AddtocartRecordBuilder builder) => builder
    ..img = ''
    ..price = 0.0
    ..cartbyEmail = ''
    ..vehicleType = ''
    ..floorCount = 0
    ..cartby = ''
    ..cartMobile = ''
    ..directiontype = ''
    ..uid = ''
    ..uploadParkingUid = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('addtocart');

  static Stream<AddtocartRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AddtocartRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AddtocartRecord._();
  factory AddtocartRecord([void Function(AddtocartRecordBuilder) updates]) =
      _$AddtocartRecord;

  static AddtocartRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAddtocartRecordData({
  String? img,
  double? price,
  String? cartbyEmail,
  String? vehicleType,
  int? floorCount,
  String? cartby,
  String? cartMobile,
  DateTime? cartCurTime,
  String? directiontype,
  String? uid,
  String? uploadParkingUid,
}) {
  final firestoreData = serializers.toFirestore(
    AddtocartRecord.serializer,
    AddtocartRecord(
      (a) => a
        ..img = img
        ..price = price
        ..cartbyEmail = cartbyEmail
        ..vehicleType = vehicleType
        ..floorCount = floorCount
        ..cartby = cartby
        ..cartMobile = cartMobile
        ..cartCurTime = cartCurTime
        ..directiontype = directiontype
        ..uid = uid
        ..uploadParkingUid = uploadParkingUid,
    ),
  );

  return firestoreData;
}
