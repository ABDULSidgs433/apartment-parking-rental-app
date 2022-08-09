// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addtocart_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AddtocartRecord> _$addtocartRecordSerializer =
    new _$AddtocartRecordSerializer();

class _$AddtocartRecordSerializer
    implements StructuredSerializer<AddtocartRecord> {
  @override
  final Iterable<Type> types = const [AddtocartRecord, _$AddtocartRecord];
  @override
  final String wireName = 'AddtocartRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AddtocartRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
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
    value = object.cartbyEmail;
    if (value != null) {
      result
        ..add('cartby_email')
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
    value = object.floorCount;
    if (value != null) {
      result
        ..add('floor_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cartby;
    if (value != null) {
      result
        ..add('cartby')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cartMobile;
    if (value != null) {
      result
        ..add('cart_mobile')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cartCurTime;
    if (value != null) {
      result
        ..add('cart_cur_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.directiontype;
    if (value != null) {
      result
        ..add('directiontype')
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
    value = object.uploadParkingUid;
    if (value != null) {
      result
        ..add('uploadParkingUid')
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
  AddtocartRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddtocartRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'img':
          result.img = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'cartby_email':
          result.cartbyEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'vehicle_type':
          result.vehicleType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'floor_count':
          result.floorCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'cartby':
          result.cartby = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cart_mobile':
          result.cartMobile = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cart_cur_time':
          result.cartCurTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'directiontype':
          result.directiontype = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uploadParkingUid':
          result.uploadParkingUid = serializers.deserialize(value,
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

class _$AddtocartRecord extends AddtocartRecord {
  @override
  final String? img;
  @override
  final double? price;
  @override
  final String? cartbyEmail;
  @override
  final String? vehicleType;
  @override
  final int? floorCount;
  @override
  final String? cartby;
  @override
  final String? cartMobile;
  @override
  final DateTime? cartCurTime;
  @override
  final String? directiontype;
  @override
  final String? uid;
  @override
  final String? uploadParkingUid;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AddtocartRecord([void Function(AddtocartRecordBuilder)? updates]) =>
      (new AddtocartRecordBuilder()..update(updates))._build();

  _$AddtocartRecord._(
      {this.img,
      this.price,
      this.cartbyEmail,
      this.vehicleType,
      this.floorCount,
      this.cartby,
      this.cartMobile,
      this.cartCurTime,
      this.directiontype,
      this.uid,
      this.uploadParkingUid,
      this.ffRef})
      : super._();

  @override
  AddtocartRecord rebuild(void Function(AddtocartRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddtocartRecordBuilder toBuilder() =>
      new AddtocartRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddtocartRecord &&
        img == other.img &&
        price == other.price &&
        cartbyEmail == other.cartbyEmail &&
        vehicleType == other.vehicleType &&
        floorCount == other.floorCount &&
        cartby == other.cartby &&
        cartMobile == other.cartMobile &&
        cartCurTime == other.cartCurTime &&
        directiontype == other.directiontype &&
        uid == other.uid &&
        uploadParkingUid == other.uploadParkingUid &&
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
                                            $jc($jc(0, img.hashCode),
                                                price.hashCode),
                                            cartbyEmail.hashCode),
                                        vehicleType.hashCode),
                                    floorCount.hashCode),
                                cartby.hashCode),
                            cartMobile.hashCode),
                        cartCurTime.hashCode),
                    directiontype.hashCode),
                uid.hashCode),
            uploadParkingUid.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddtocartRecord')
          ..add('img', img)
          ..add('price', price)
          ..add('cartbyEmail', cartbyEmail)
          ..add('vehicleType', vehicleType)
          ..add('floorCount', floorCount)
          ..add('cartby', cartby)
          ..add('cartMobile', cartMobile)
          ..add('cartCurTime', cartCurTime)
          ..add('directiontype', directiontype)
          ..add('uid', uid)
          ..add('uploadParkingUid', uploadParkingUid)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AddtocartRecordBuilder
    implements Builder<AddtocartRecord, AddtocartRecordBuilder> {
  _$AddtocartRecord? _$v;

  String? _img;
  String? get img => _$this._img;
  set img(String? img) => _$this._img = img;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  String? _cartbyEmail;
  String? get cartbyEmail => _$this._cartbyEmail;
  set cartbyEmail(String? cartbyEmail) => _$this._cartbyEmail = cartbyEmail;

  String? _vehicleType;
  String? get vehicleType => _$this._vehicleType;
  set vehicleType(String? vehicleType) => _$this._vehicleType = vehicleType;

  int? _floorCount;
  int? get floorCount => _$this._floorCount;
  set floorCount(int? floorCount) => _$this._floorCount = floorCount;

  String? _cartby;
  String? get cartby => _$this._cartby;
  set cartby(String? cartby) => _$this._cartby = cartby;

  String? _cartMobile;
  String? get cartMobile => _$this._cartMobile;
  set cartMobile(String? cartMobile) => _$this._cartMobile = cartMobile;

  DateTime? _cartCurTime;
  DateTime? get cartCurTime => _$this._cartCurTime;
  set cartCurTime(DateTime? cartCurTime) => _$this._cartCurTime = cartCurTime;

  String? _directiontype;
  String? get directiontype => _$this._directiontype;
  set directiontype(String? directiontype) =>
      _$this._directiontype = directiontype;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _uploadParkingUid;
  String? get uploadParkingUid => _$this._uploadParkingUid;
  set uploadParkingUid(String? uploadParkingUid) =>
      _$this._uploadParkingUid = uploadParkingUid;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AddtocartRecordBuilder() {
    AddtocartRecord._initializeBuilder(this);
  }

  AddtocartRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _img = $v.img;
      _price = $v.price;
      _cartbyEmail = $v.cartbyEmail;
      _vehicleType = $v.vehicleType;
      _floorCount = $v.floorCount;
      _cartby = $v.cartby;
      _cartMobile = $v.cartMobile;
      _cartCurTime = $v.cartCurTime;
      _directiontype = $v.directiontype;
      _uid = $v.uid;
      _uploadParkingUid = $v.uploadParkingUid;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddtocartRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddtocartRecord;
  }

  @override
  void update(void Function(AddtocartRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddtocartRecord build() => _build();

  _$AddtocartRecord _build() {
    final _$result = _$v ??
        new _$AddtocartRecord._(
            img: img,
            price: price,
            cartbyEmail: cartbyEmail,
            vehicleType: vehicleType,
            floorCount: floorCount,
            cartby: cartby,
            cartMobile: cartMobile,
            cartCurTime: cartCurTime,
            directiontype: directiontype,
            uid: uid,
            uploadParkingUid: uploadParkingUid,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
