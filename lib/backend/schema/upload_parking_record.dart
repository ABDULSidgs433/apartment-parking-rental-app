import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'upload_parking_record.g.dart';

abstract class UploadParkingRecord
    implements Built<UploadParkingRecord, UploadParkingRecordBuilder> {
  static Serializer<UploadParkingRecord> get serializer =>
      _$uploadParkingRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'parking_img')
  String get parkingImg;

  @nullable
  double get price;

  @nullable
  @BuiltValueField(wireName: 'location_direction')
  String get locationDirection;

  @nullable
  String get floor;

  @nullable
  @BuiltValueField(wireName: 'vehicle_type')
  String get vehicleType;

  @nullable
  String get uid;

  @nullable
  DateTime get regtime;

  @nullable
  @BuiltValueField(wireName: 'regby_email_id')
  String get regbyEmailId;

  @nullable
  String get regby;

  @nullable
  String get regbymobile;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UploadParkingRecordBuilder builder) => builder
    ..parkingImg = ''
    ..price = 0.0
    ..locationDirection = ''
    ..floor = ''
    ..vehicleType = ''
    ..uid = ''
    ..regbyEmailId = ''
    ..regby = ''
    ..regbymobile = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('UploadParking');

  static Stream<UploadParkingRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UploadParkingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  UploadParkingRecord._();
  factory UploadParkingRecord(
          [void Function(UploadParkingRecordBuilder) updates]) =
      _$UploadParkingRecord;

  static UploadParkingRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUploadParkingRecordData({
  String parkingImg,
  double price,
  String locationDirection,
  String floor,
  String vehicleType,
  String uid,
  DateTime regtime,
  String regbyEmailId,
  String regby,
  String regbymobile,
}) =>
    serializers.toFirestore(
        UploadParkingRecord.serializer,
        UploadParkingRecord((u) => u
          ..parkingImg = parkingImg
          ..price = price
          ..locationDirection = locationDirection
          ..floor = floor
          ..vehicleType = vehicleType
          ..uid = uid
          ..regtime = regtime
          ..regbyEmailId = regbyEmailId
          ..regby = regby
          ..regbymobile = regbymobile));
