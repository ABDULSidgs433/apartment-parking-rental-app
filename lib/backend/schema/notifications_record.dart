import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'notifications_record.g.dart';

abstract class NotificationsRecord
    implements Built<NotificationsRecord, NotificationsRecordBuilder> {
  static Serializer<NotificationsRecord> get serializer =>
      _$notificationsRecordSerializer;

  String? get uid;

  DateTime? get regtime;

  String? get msg;

  String? get notificationtype;

  String? get regemailid;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NotificationsRecordBuilder builder) => builder
    ..uid = ''
    ..msg = ''
    ..notificationtype = ''
    ..regemailid = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notifications');

  static Stream<NotificationsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NotificationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NotificationsRecord._();
  factory NotificationsRecord(
          [void Function(NotificationsRecordBuilder) updates]) =
      _$NotificationsRecord;

  static NotificationsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNotificationsRecordData({
  String? uid,
  DateTime? regtime,
  String? msg,
  String? notificationtype,
  String? regemailid,
}) {
  final firestoreData = serializers.toFirestore(
    NotificationsRecord.serializer,
    NotificationsRecord(
      (n) => n
        ..uid = uid
        ..regtime = regtime
        ..msg = msg
        ..notificationtype = notificationtype
        ..regemailid = regemailid,
    ),
  );

  return firestoreData;
}
