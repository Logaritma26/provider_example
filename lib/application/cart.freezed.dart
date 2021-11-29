// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CartTearOff {
  const _$CartTearOff();

  _Cart call(Map<Product, int> map) {
    return _Cart(
      map,
    );
  }
}

/// @nodoc
const $Cart = _$CartTearOff();

/// @nodoc
mixin _$Cart {
  Map<Product, int> get map => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartCopyWith<Cart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartCopyWith<$Res> {
  factory $CartCopyWith(Cart value, $Res Function(Cart) then) =
      _$CartCopyWithImpl<$Res>;
  $Res call({Map<Product, int> map});
}

/// @nodoc
class _$CartCopyWithImpl<$Res> implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._value, this._then);

  final Cart _value;
  // ignore: unused_field
  final $Res Function(Cart) _then;

  @override
  $Res call({
    Object? map = freezed,
  }) {
    return _then(_value.copyWith(
      map: map == freezed
          ? _value.map
          : map // ignore: cast_nullable_to_non_nullable
              as Map<Product, int>,
    ));
  }
}

/// @nodoc
abstract class _$CartCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$CartCopyWith(_Cart value, $Res Function(_Cart) then) =
      __$CartCopyWithImpl<$Res>;
  @override
  $Res call({Map<Product, int> map});
}

/// @nodoc
class __$CartCopyWithImpl<$Res> extends _$CartCopyWithImpl<$Res>
    implements _$CartCopyWith<$Res> {
  __$CartCopyWithImpl(_Cart _value, $Res Function(_Cart) _then)
      : super(_value, (v) => _then(v as _Cart));

  @override
  _Cart get _value => super._value as _Cart;

  @override
  $Res call({
    Object? map = freezed,
  }) {
    return _then(_Cart(
      map == freezed
          ? _value.map
          : map // ignore: cast_nullable_to_non_nullable
              as Map<Product, int>,
    ));
  }
}

/// @nodoc

class _$_Cart implements _Cart {
  _$_Cart(this.map);

  @override
  final Map<Product, int> map;

  @override
  String toString() {
    return 'Cart(map: $map)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Cart &&
            const DeepCollectionEquality().equals(other.map, map));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(map));

  @JsonKey(ignore: true)
  @override
  _$CartCopyWith<_Cart> get copyWith =>
      __$CartCopyWithImpl<_Cart>(this, _$identity);
}

abstract class _Cart implements Cart {
  factory _Cart(Map<Product, int> map) = _$_Cart;

  @override
  Map<Product, int> get map;
  @override
  @JsonKey(ignore: true)
  _$CartCopyWith<_Cart> get copyWith => throw _privateConstructorUsedError;
}
