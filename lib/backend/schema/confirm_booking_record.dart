import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'confirm_booking_record.g.dart';

abstract class ConfirmBookingRecord
    implements Built<ConfirmBookingRecord, ConfirmBookingRecordBuilder> {
  static Serializer<ConfirmBookingRecord> get serializer =>
      _$confirmBookingRecordSerializer;

  @nullable
  String get bookby;

  @nullable
  @BuiltValueField(wireName: 'booked_email_id')
  String get bookedEmailId;

  @nullable
  String get img;

  @nullable
  double get price;

  @nullable
  @BuiltValueField(wireName: 'total_amt')
  double get totalAmt;

  @nullable
  @BuiltValueField(wireName: 'direction_type')
  String get directionType;

  @nullable
  @BuiltValueField(wireName: 'days_count')
  int get daysCount;

  @nullable
  int get floor;

  @nullable
  DateTime get fromdate;

  @nullable
  DateTime get todate;

  @nullable
  @BuiltValueField(wireName: 'utr_no')
  String get utrNo;

  @nullable
  String get vehicleType;

  @nullable
  DateTime get regtime;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ConfirmBookingRecordBuilder builder) => builder
    ..bookby = ''
    ..bookedEmailId = ''
    ..img = ''
    ..price = 0.0
    ..totalAmt = 0.0
    ..directionType = ''
    ..daysCount = 0
    ..floor = 0
    ..utrNo = ''
    ..vehicleType = ''
    ..uid = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('confirmBooking');

  static Stream<ConfirmBookingRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ConfirmBookingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  ConfirmBookingRecord._();
  factory ConfirmBookingRecord(
          [void Function(ConfirmBookingRecordBuilder) updates]) =
      _$ConfirmBookingRecord;

  static ConfirmBookingRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createConfirmBookingRecordData({
  String bookby,
  String bookedEmailId,
  String img,
  double price,
  double totalAmt,
  String directionType,
  int daysCount,
  int floor,
  DateTime fromdate,
  DateTime todate,
  String utrNo,
  String vehicleType,
  DateTime regtime,
  String uid,
}) =>
    serializers.toFirestore(
        ConfirmBookingRecord.serializer,
        ConfirmBookingRecord((c) => c
          ..bookby = bookby
          ..bookedEmailId = bookedEmailId
          ..img = img
          ..price = price
          ..totalAmt = totalAmt
          ..directionType = directionType
          ..daysCount = daysCount
          ..floor = floor
          ..fromdate = fromdate
          ..todate = todate
          ..utrNo = utrNo
          ..vehicleType = vehicleType
          ..regtime = regtime
          ..uid = uid));
