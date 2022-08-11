// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotificationsRecord> _$notificationsRecordSerializer =
    new _$NotificationsRecordSerializer();

class _$NotificationsRecordSerializer
    implements StructuredSerializer<NotificationsRecord> {
  @override
  final Iterable<Type> types = const [
    NotificationsRecord,
    _$NotificationsRecord
  ];
  @override
  final String wireName = 'NotificationsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NotificationsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.regtime;
    if (value != null) {
      result
        ..add('regtime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.msg;
    if (value != null) {
      result
        ..add('msg')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.notificationtype;
    if (value != null) {
      result
        ..add('notificationtype')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.regemailid;
    if (value != null) {
      result
        ..add('regemailid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isUserShown;
    if (value != null) {
      result
        ..add('isUserShown')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.targetEmailid;
    if (value != null) {
      result
        ..add('targetEmailid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.totalAmt;
    if (value != null) {
      result
        ..add('totalAmt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  NotificationsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'regtime':
          result.regtime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'msg':
          result.msg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'notificationtype':
          result.notificationtype = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'regemailid':
          result.regemailid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isUserShown':
          result.isUserShown = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'targetEmailid':
          result.targetEmailid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'totalAmt':
          result.totalAmt = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$NotificationsRecord extends NotificationsRecord {
  @override
  final String? uid;
  @override
  final DateTime? regtime;
  @override
  final String? msg;
  @override
  final String? notificationtype;
  @override
  final String? regemailid;
  @override
  final bool? isUserShown;
  @override
  final String? targetEmailid;
  @override
  final double? totalAmt;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NotificationsRecord(
          [void Function(NotificationsRecordBuilder)? updates]) =>
      (new NotificationsRecordBuilder()..update(updates))._build();

  _$NotificationsRecord._(
      {this.uid,
      this.regtime,
      this.msg,
      this.notificationtype,
      this.regemailid,
      this.isUserShown,
      this.targetEmailid,
      this.totalAmt,
      this.ffRef})
      : super._();

  @override
  NotificationsRecord rebuild(
          void Function(NotificationsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationsRecordBuilder toBuilder() =>
      new NotificationsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationsRecord &&
        uid == other.uid &&
        regtime == other.regtime &&
        msg == other.msg &&
        notificationtype == other.notificationtype &&
        regemailid == other.regemailid &&
        isUserShown == other.isUserShown &&
        targetEmailid == other.targetEmailid &&
        totalAmt == other.totalAmt &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, uid.hashCode), regtime.hashCode),
                                msg.hashCode),
                            notificationtype.hashCode),
                        regemailid.hashCode),
                    isUserShown.hashCode),
                targetEmailid.hashCode),
            totalAmt.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationsRecord')
          ..add('uid', uid)
          ..add('regtime', regtime)
          ..add('msg', msg)
          ..add('notificationtype', notificationtype)
          ..add('regemailid', regemailid)
          ..add('isUserShown', isUserShown)
          ..add('targetEmailid', targetEmailid)
          ..add('totalAmt', totalAmt)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NotificationsRecordBuilder
    implements Builder<NotificationsRecord, NotificationsRecordBuilder> {
  _$NotificationsRecord? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _regtime;
  DateTime? get regtime => _$this._regtime;
  set regtime(DateTime? regtime) => _$this._regtime = regtime;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  String? _notificationtype;
  String? get notificationtype => _$this._notificationtype;
  set notificationtype(String? notificationtype) =>
      _$this._notificationtype = notificationtype;

  String? _regemailid;
  String? get regemailid => _$this._regemailid;
  set regemailid(String? regemailid) => _$this._regemailid = regemailid;

  bool? _isUserShown;
  bool? get isUserShown => _$this._isUserShown;
  set isUserShown(bool? isUserShown) => _$this._isUserShown = isUserShown;

  String? _targetEmailid;
  String? get targetEmailid => _$this._targetEmailid;
  set targetEmailid(String? targetEmailid) =>
      _$this._targetEmailid = targetEmailid;

  double? _totalAmt;
  double? get totalAmt => _$this._totalAmt;
  set totalAmt(double? totalAmt) => _$this._totalAmt = totalAmt;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NotificationsRecordBuilder() {
    NotificationsRecord._initializeBuilder(this);
  }

  NotificationsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _regtime = $v.regtime;
      _msg = $v.msg;
      _notificationtype = $v.notificationtype;
      _regemailid = $v.regemailid;
      _isUserShown = $v.isUserShown;
      _targetEmailid = $v.targetEmailid;
      _totalAmt = $v.totalAmt;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationsRecord;
  }

  @override
  void update(void Function(NotificationsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationsRecord build() => _build();

  _$NotificationsRecord _build() {
    final _$result = _$v ??
        new _$NotificationsRecord._(
            uid: uid,
            regtime: regtime,
            msg: msg,
            notificationtype: notificationtype,
            regemailid: regemailid,
            isUserShown: isUserShown,
            targetEmailid: targetEmailid,
            totalAmt: totalAmt,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
