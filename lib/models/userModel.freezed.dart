// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'userModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserModelTearOff {
  const _$UserModelTearOff();

_UserModel call({required  required phone}) {
  return  _UserModel(phone:phone,);
}

}

/// @nodoc
const $UserModel = _$UserModelTearOff();

/// @nodoc
mixin _$UserModel {

 required get phone => throw _privateConstructorUsedError;








@JsonKey(ignore: true)
$UserModelCopyWith<UserModel> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) = _$UserModelCopyWithImpl<$Res>;
$Res call({
 required phone
});



}

/// @nodoc
class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  final UserModel _value;
  // ignore: unused_field
  final $Res Function(UserModel) _then;

@override $Res call({Object? phone = freezed,}) {
  return _then(_value.copyWith(
phone: phone == freezed ? _value.phone : phone // ignore: cast_nullable_to_non_nullable
as required,
  ));
}

}


/// @nodoc
abstract class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) then) = __$UserModelCopyWithImpl<$Res>;
@override $Res call({
 required phone
});



}

/// @nodoc
class __$UserModelCopyWithImpl<$Res> extends _$UserModelCopyWithImpl<$Res> implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(_UserModel _value, $Res Function(_UserModel) _then)
      : super(_value, (v) => _then(v as _UserModel));

@override
_UserModel get _value => super._value as _UserModel;

@override $Res call({Object? phone = freezed,}) {
  return _then(_UserModel(
phone: phone == freezed ? _value.phone : phone // ignore: cast_nullable_to_non_nullable
as required,
  ));
}


}

/// @nodoc


class _$_UserModel  implements _UserModel {
  const _$_UserModel({required this.phone});

  

@override  final required phone;

@override
String toString() {
  return 'UserModel(phone: $phone)';
}


@override
bool operator ==(dynamic other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&const DeepCollectionEquality().equals(other.phone, phone));
}

@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(phone));

@JsonKey(ignore: true)
@override
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);








}


abstract class _UserModel implements UserModel {
  const factory _UserModel({required  required phone}) = _$_UserModel;
  

  

@override  required get phone;
@override @JsonKey(ignore: true)
_$UserModelCopyWith<_UserModel> get copyWith => throw _privateConstructorUsedError;

}
