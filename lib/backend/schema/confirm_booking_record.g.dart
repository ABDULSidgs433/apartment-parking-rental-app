// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_booking_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ConfirmBookingRecord> _$confirmBookingRecordSerializer =
    new _$ConfirmBookingRecordSerializer();

class _$ConfirmBookingRecordSerializer
    implements StructuredSerializer<ConfirmBookingRecord> {
  @override
  final Iterable<Type> types = const [
    ConfirmBookingRecord,
    _$ConfirmBookingRecord
  ];
  @override
  final String wireName = 'ConfirmBookingRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ConfirmBookingRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.bookby;
    if (value != null) {
      result
        ..add('bookby')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bookedEmailId;
    if (value != null) {
      result
        ..add('booked_email_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.img;
    if (value != null) {
      result
        ..add('img')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.totalAmt;
    if (value != null) {
      result
        ..add('total_amt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.directionType;
    if (value != null) {
      result
        ..add('direction_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.daysCount;
    if (value != null) {
      result
        ..add('days_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.floor;
    if (value != null) {
      result
        ..add('floor')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.fromdate;
    if (value != null) {
      result
        ..add('fromdate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.todate;
    if (value != null) {
      result
        ..add('todate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.utrNo;
    if (value != null) {
      result
        ..add('utr_no')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.vehicleType;
    if (value != null) {
      result
        ..add('vehicleType')
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
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  ConfirmBookingRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConfirmBookingRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'bookby':
          result.bookby = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'booked_email_id':
          result.bookedEmailId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'img':
          result.img = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'total_amt':
          result.totalAmt = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'direction_type':
          result.directionType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'days_count':
          result.daysCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'floor':
          result.floor = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'fromdate':
          result.fromdate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'todate':
          result.todate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'utr_no':
          result.utrNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'vehicleType':
          result.vehicleType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'regtime':
          result.regtime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$ConfirmBookingRecord extends ConfirmBookingRecord {
  @override
  final String? bookby;
  @override
  final String? bookedEmailId;
  @override
  final String? img;
  @override
  final double? price;
  @override
  final double? totalAmt;
  @override
  final String? directionType;
  @override
  final int? daysCount;
  @override
  final int? floor;
  @override
  final DateTime? fromdate;
  @override
  final DateTime? todate;
  @override
  final String? utrNo;
  @override
  final String? vehicleType;
  @override
  final DateTime? regtime;
  @override
  final String? uid;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ConfirmBookingRecord(
          [void Function(ConfirmBookingRecordBuilder)? updates]) =>
      (new ConfirmBookingRecordBuilder()..update(updates))._build();

  _$ConfirmBookingRecord._(
      {this.bookby,
      this.bookedEmailId,
      this.img,
      this.price,
      this.totalAmt,
      this.directionType,
      this.daysCount,
      this.floor,
      this.fromdate,
      this.todate,
      this.utrNo,
      this.vehicleType,
      this.regtime,
      this.uid,
      this.ffRef})
      : super._();

  @override
  ConfirmBookingRecord rebuild(
          void Function(ConfirmBookingRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfirmBookingRecordBuilder toBuilder() =>
      new ConfirmBookingRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfirmBookingRecord &&
        bookby == other.bookby &&
        bookedEmailId == other.bookedEmailId &&
        img == other.img &&
        price == other.price &&
        totalAmt == other.totalAmt &&
        directionType == other.directionType &&
        daysCount == other.daysCount &&
        floor == other.floor &&
        fromdate == other.fromdate &&
        todate == other.todate &&
        utrNo == other.utrNo &&
        vehicleType == other.vehicleType &&
        regtime == other.regtime &&
        uid == other.uid &&
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
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                0,
                                                                bookby
                                                                    .hashCode),
                                                            bookedEmailId
                                                                .hashCode),
                                                        img.hashCode),
                                                    price.hashCode),
                                                totalAmt.hashCode),
                                            directionType.hashCode),
                                        daysCount.hashCode),
                                    floor.hashCode),
                                fromdate.hashCode),
                            todate.hashCode),
                        utrNo.hashCode),
                    vehicleType.hashCode),
                regtime.hashCode),
            uid.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConfirmBookingRecord')
          ..add('bookby', bookby)
          ..add('bookedEmailId', bookedEmailId)
          ..add('img', img)
          ..add('price', price)
          ..add('totalAmt', totalAmt)
          ..add('directionType', directionType)
          ..add('daysCount', daysCount)
          ..add('floor', floor)
          ..add('fromdate', fromdate)
          ..add('todate', todate)
          ..add('utrNo', utrNo)
          ..add('vehicleType', vehicleType)
          ..add('regtime', regtime)
          ..add('uid', uid)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ConfirmBookingRecordBuilder
    implements Builder<ConfirmBookingRecord, ConfirmBookingRecordBuilder> {
  _$ConfirmBookingRecord? _$v;

  String? _bookby;
  String? get bookby => _$this._bookby;
  set bookby(String? bookby) => _$this._bookby = bookby;

  String? _bookedEmailId;
  String? get bookedEmailId => _$this._bookedEmailId;
  set bookedEmailId(String? bookedEmailId) =>
      _$this._bookedEmailId = bookedEmailId;

  String? _img;
  String? get img => _$this._img;
  set img(String? img) => _$this._img = img;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  double? _totalAmt;
  double? get totalAmt => _$this._totalAmt;
  set totalAmt(double? totalAmt) => _$this._totalAmt = totalAmt;

  String? _directionType;
  String? get directionType => _$this._directionType;
  set directionType(String? directionType) =>
      _$this._directionType = directionType;

  int? _daysCount;
  int? get daysCount => _$this._daysCount;
  set daysCount(int? daysCount) => _$this._daysCount = daysCount;

  int? _floor;
  int? get floor => _$this._floor;
  set floor(int? floor) => _$this._floor = floor;

  DateTime? _fromdate;
  DateTime? get fromdate => _$this._fromdate;
  set fromdate(DateTime? fromdate) => _$this._fromdate = fromdate;

  DateTime? _todate;
  DateTime? get todate => _$this._todate;
  set todate(DateTime? todate) => _$this._todate = todate;

  String? _utrNo;
  String? get utrNo => _$this._utrNo;
  set utrNo(String? utrNo) => _$this._utrNo = utrNo;

  String? _vehicleType;
  String? get vehicleType => _$this._vehicleType;
  set vehicleType(String? vehicleType) => _$this._vehicleType = vehicleType;

  DateTime? _regtime;
  DateTime? get regtime => _$this._regtime;
  set regtime(DateTime? regtime) => _$this._regtime = regtime;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ConfirmBookingRecordBuilder() {
    ConfirmBookingRecord._initializeBuilder(this);
  }

  ConfirmBookingRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bookby = $v.bookby;
      _bookedEmailId = $v.bookedEmailId;
      _img = $v.img;
      _price = $v.price;
      _totalAmt = $v.totalAmt;
      _directionType = $v.directionType;
      _daysCount = $v.daysCount;
      _floor = $v.floor;
      _fromdate = $v.fromdate;
      _todate = $v.todate;
      _utrNo = $v.utrNo;
      _vehicleType = $v.vehicleType;
      _regtime = $v.regtime;
      _uid = $v.uid;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfirmBookingRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfirmBookingRecord;
  }

  @override
  void update(void Function(ConfirmBookingRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfirmBookingRecord build() => _build();

  _$ConfirmBookingRecord _build() {
    final _$result = _$v ??
        new _$ConfirmBookingRecord._(
            bookby: bookby,
            bookedEmailId: bookedEmailId,
            img: img,
            price: price,
            totalAmt: totalAmt,
            directionType: directionType,
            daysCount: daysCount,
            floor: floor,
            fromdate: fromdate,
            todate: todate,
            utrNo: utrNo,
            vehicleType: vehicleType,
            regtime: regtime,
            uid: uid,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
