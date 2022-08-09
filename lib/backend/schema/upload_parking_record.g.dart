// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_parking_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UploadParkingRecord> _$uploadParkingRecordSerializer =
    new _$UploadParkingRecordSerializer();

class _$UploadParkingRecordSerializer
    implements StructuredSerializer<UploadParkingRecord> {
  @override
  final Iterable<Type> types = const [
    UploadParkingRecord,
    _$UploadParkingRecord
  ];
  @override
  final String wireName = 'UploadParkingRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, UploadParkingRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.parkingImg;
    if (value != null) {
      result
        ..add('parking_img')
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
    value = object.locationDirection;
    if (value != null) {
      result
        ..add('location_direction')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.floor;
    if (value != null) {
      result
        ..add('floor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.vehicleType;
    if (value != null) {
      result
        ..add('vehicle_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
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
    value = object.regbyEmailId;
    if (value != null) {
      result
        ..add('regby_email_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.regby;
    if (value != null) {
      result
        ..add('regby')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.regbymobile;
    if (value != null) {
      result
        ..add('regbymobile')
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
  UploadParkingRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UploadParkingRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'parking_img':
          result.parkingImg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'location_direction':
          result.locationDirection = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'floor':
          result.floor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'vehicle_type':
          result.vehicleType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'regtime':
          result.regtime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'regby_email_id':
          result.regbyEmailId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'regby':
          result.regby = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'regbymobile':
          result.regbymobile = serializers.deserialize(value,
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

class _$UploadParkingRecord extends UploadParkingRecord {
  @override
  final String? parkingImg;
  @override
  final double? price;
  @override
  final String? locationDirection;
  @override
  final String? floor;
  @override
  final String? vehicleType;
  @override
  final String? uid;
  @override
  final DateTime? regtime;
  @override
  final String? regbyEmailId;
  @override
  final String? regby;
  @override
  final String? regbymobile;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UploadParkingRecord(
          [void Function(UploadParkingRecordBuilder)? updates]) =>
      (new UploadParkingRecordBuilder()..update(updates))._build();

  _$UploadParkingRecord._(
      {this.parkingImg,
      this.price,
      this.locationDirection,
      this.floor,
      this.vehicleType,
      this.uid,
      this.regtime,
      this.regbyEmailId,
      this.regby,
      this.regbymobile,
      this.ffRef})
      : super._();

  @override
  UploadParkingRecord rebuild(
          void Function(UploadParkingRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UploadParkingRecordBuilder toBuilder() =>
      new UploadParkingRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadParkingRecord &&
        parkingImg == other.parkingImg &&
        price == other.price &&
        locationDirection == other.locationDirection &&
        floor == other.floor &&
        vehicleType == other.vehicleType &&
        uid == other.uid &&
        regtime == other.regtime &&
        regbyEmailId == other.regbyEmailId &&
        regby == other.regby &&
        regbymobile == other.regbymobile &&
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
                                        $jc($jc(0, parkingImg.hashCode),
                                            price.hashCode),
                                        locationDirection.hashCode),
                                    floor.hashCode),
                                vehicleType.hashCode),
                            uid.hashCode),
                        regtime.hashCode),
                    regbyEmailId.hashCode),
                regby.hashCode),
            regbymobile.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UploadParkingRecord')
          ..add('parkingImg', parkingImg)
          ..add('price', price)
          ..add('locationDirection', locationDirection)
          ..add('floor', floor)
          ..add('vehicleType', vehicleType)
          ..add('uid', uid)
          ..add('regtime', regtime)
          ..add('regbyEmailId', regbyEmailId)
          ..add('regby', regby)
          ..add('regbymobile', regbymobile)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UploadParkingRecordBuilder
    implements Builder<UploadParkingRecord, UploadParkingRecordBuilder> {
  _$UploadParkingRecord? _$v;

  String? _parkingImg;
  String? get parkingImg => _$this._parkingImg;
  set parkingImg(String? parkingImg) => _$this._parkingImg = parkingImg;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  String? _locationDirection;
  String? get locationDirection => _$this._locationDirection;
  set locationDirection(String? locationDirection) =>
      _$this._locationDirection = locationDirection;

  String? _floor;
  String? get floor => _$this._floor;
  set floor(String? floor) => _$this._floor = floor;

  String? _vehicleType;
  String? get vehicleType => _$this._vehicleType;
  set vehicleType(String? vehicleType) => _$this._vehicleType = vehicleType;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _regtime;
  DateTime? get regtime => _$this._regtime;
  set regtime(DateTime? regtime) => _$this._regtime = regtime;

  String? _regbyEmailId;
  String? get regbyEmailId => _$this._regbyEmailId;
  set regbyEmailId(String? regbyEmailId) => _$this._regbyEmailId = regbyEmailId;

  String? _regby;
  String? get regby => _$this._regby;
  set regby(String? regby) => _$this._regby = regby;

  String? _regbymobile;
  String? get regbymobile => _$this._regbymobile;
  set regbymobile(String? regbymobile) => _$this._regbymobile = regbymobile;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UploadParkingRecordBuilder() {
    UploadParkingRecord._initializeBuilder(this);
  }

  UploadParkingRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _parkingImg = $v.parkingImg;
      _price = $v.price;
      _locationDirection = $v.locationDirection;
      _floor = $v.floor;
      _vehicleType = $v.vehicleType;
      _uid = $v.uid;
      _regtime = $v.regtime;
      _regbyEmailId = $v.regbyEmailId;
      _regby = $v.regby;
      _regbymobile = $v.regbymobile;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UploadParkingRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UploadParkingRecord;
  }

  @override
  void update(void Function(UploadParkingRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UploadParkingRecord build() => _build();

  _$UploadParkingRecord _build() {
    final _$result = _$v ??
        new _$UploadParkingRecord._(
            parkingImg: parkingImg,
            price: price,
            locationDirection: locationDirection,
            floor: floor,
            vehicleType: vehicleType,
            uid: uid,
            regtime: regtime,
            regbyEmailId: regbyEmailId,
            regby: regby,
            regbymobile: regbymobile,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
