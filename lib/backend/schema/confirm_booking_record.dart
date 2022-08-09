import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'confirm_booking_record.g.dart';

abstract class ConfirmBookingRecord
    implements Built<ConfirmBookingRecord, ConfirmBookingRecordBuilder> {
  static Serializer<ConfirmBookingRecord> get serializer =>
      _$confirmBookingRecordSerializer;

  String? get bookby;

  @BuiltValueField(wireName: 'booked_email_id')
  String? get bookedEmailId;

  String? get img;

  double? get price;

  @BuiltValueField(wireName: 'total_amt')
  double? get totalAmt;

  @BuiltValueField(wireName: 'direction_type')
  String? get directionType;

  @BuiltValueField(wireName: 'days_count')
  int? get daysCount;

  int? get floor;

  DateTime? get fromdate;

  DateTime? get todate;

  @BuiltValueField(wireName: 'utr_no')
  String? get utrNo;

  String? get vehicleType;

  DateTime? get regtime;

  String? get uid;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

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
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ConfirmBookingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ConfirmBookingRecord._();
  factory ConfirmBookingRecord(
          [void Function(ConfirmBookingRecordBuilder) updates]) =
      _$ConfirmBookingRecord;

  static ConfirmBookingRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createConfirmBookingRecordData({
  String? bookby,
  String? bookedEmailId,
  String? img,
  double? price,
  double? totalAmt,
  String? directionType,
  int? daysCount,
  int? floor,
  DateTime? fromdate,
  DateTime? todate,
  String? utrNo,
  String? vehicleType,
  DateTime? regtime,
  String? uid,
}) {
  final firestoreData = serializers.toFirestore(
    ConfirmBookingRecord.serializer,
    ConfirmBookingRecord(
      (c) => c
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
        ..uid = uid,
    ),
  );

  return firestoreData;
}
