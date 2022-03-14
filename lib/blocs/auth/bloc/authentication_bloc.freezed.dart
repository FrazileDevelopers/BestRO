// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthenticationEventTearOff {
  const _$AuthenticationEventTearOff();

  SendOTP sendOTP(String phone) {
    return SendOTP(
      phone,
    );
  }

  AuthChanged authChanged(auth.User user) {
    return AuthChanged(
      user,
    );
  }

  Initial initial() {
    return const Initial();
  }
}

/// @nodoc
const $AuthenticationEvent = _$AuthenticationEventTearOff();

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) sendOTP,
    required TResult Function(auth.User user) authChanged,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phone)? sendOTP,
    TResult Function(auth.User user)? authChanged,
    TResult Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? sendOTP,
    TResult Function(auth.User user)? authChanged,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendOTP value) sendOTP,
    required TResult Function(AuthChanged value) authChanged,
    required TResult Function(Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendOTP value)? sendOTP,
    TResult Function(AuthChanged value)? authChanged,
    TResult Function(Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendOTP value)? sendOTP,
    TResult Function(AuthChanged value)? authChanged,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

/// @nodoc
abstract class $SendOTPCopyWith<$Res> {
  factory $SendOTPCopyWith(SendOTP value, $Res Function(SendOTP) then) =
      _$SendOTPCopyWithImpl<$Res>;
  $Res call({String phone});
}

/// @nodoc
class _$SendOTPCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $SendOTPCopyWith<$Res> {
  _$SendOTPCopyWithImpl(SendOTP _value, $Res Function(SendOTP) _then)
      : super(_value, (v) => _then(v as SendOTP));

  @override
  SendOTP get _value => super._value as SendOTP;

  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(SendOTP(
      phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendOTP implements SendOTP {
  const _$SendOTP(this.phone);

  @override
  final String phone;

  @override
  String toString() {
    return 'AuthenticationEvent.sendOTP(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendOTP &&
            const DeepCollectionEquality().equals(other.phone, phone));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(phone));

  @JsonKey(ignore: true)
  @override
  $SendOTPCopyWith<SendOTP> get copyWith =>
      _$SendOTPCopyWithImpl<SendOTP>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) sendOTP,
    required TResult Function(auth.User user) authChanged,
    required TResult Function() initial,
  }) {
    return sendOTP(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phone)? sendOTP,
    TResult Function(auth.User user)? authChanged,
    TResult Function()? initial,
  }) {
    return sendOTP?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? sendOTP,
    TResult Function(auth.User user)? authChanged,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (sendOTP != null) {
      return sendOTP(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendOTP value) sendOTP,
    required TResult Function(AuthChanged value) authChanged,
    required TResult Function(Initial value) initial,
  }) {
    return sendOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendOTP value)? sendOTP,
    TResult Function(AuthChanged value)? authChanged,
    TResult Function(Initial value)? initial,
  }) {
    return sendOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendOTP value)? sendOTP,
    TResult Function(AuthChanged value)? authChanged,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (sendOTP != null) {
      return sendOTP(this);
    }
    return orElse();
  }
}

abstract class SendOTP implements AuthenticationEvent {
  const factory SendOTP(String phone) = _$SendOTP;

  String get phone;
  @JsonKey(ignore: true)
  $SendOTPCopyWith<SendOTP> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthChangedCopyWith<$Res> {
  factory $AuthChangedCopyWith(
          AuthChanged value, $Res Function(AuthChanged) then) =
      _$AuthChangedCopyWithImpl<$Res>;
  $Res call({auth.User user});
}

/// @nodoc
class _$AuthChangedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthChangedCopyWith<$Res> {
  _$AuthChangedCopyWithImpl(
      AuthChanged _value, $Res Function(AuthChanged) _then)
      : super(_value, (v) => _then(v as AuthChanged));

  @override
  AuthChanged get _value => super._value as AuthChanged;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(AuthChanged(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as auth.User,
    ));
  }
}

/// @nodoc

class _$AuthChanged implements AuthChanged {
  const _$AuthChanged(this.user);

  @override
  final auth.User user;

  @override
  String toString() {
    return 'AuthenticationEvent.authChanged(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthChanged &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $AuthChangedCopyWith<AuthChanged> get copyWith =>
      _$AuthChangedCopyWithImpl<AuthChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) sendOTP,
    required TResult Function(auth.User user) authChanged,
    required TResult Function() initial,
  }) {
    return authChanged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phone)? sendOTP,
    TResult Function(auth.User user)? authChanged,
    TResult Function()? initial,
  }) {
    return authChanged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? sendOTP,
    TResult Function(auth.User user)? authChanged,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (authChanged != null) {
      return authChanged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendOTP value) sendOTP,
    required TResult Function(AuthChanged value) authChanged,
    required TResult Function(Initial value) initial,
  }) {
    return authChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendOTP value)? sendOTP,
    TResult Function(AuthChanged value)? authChanged,
    TResult Function(Initial value)? initial,
  }) {
    return authChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendOTP value)? sendOTP,
    TResult Function(AuthChanged value)? authChanged,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (authChanged != null) {
      return authChanged(this);
    }
    return orElse();
  }
}

abstract class AuthChanged implements AuthenticationEvent {
  const factory AuthChanged(auth.User user) = _$AuthChanged;

  auth.User get user;
  @JsonKey(ignore: true)
  $AuthChangedCopyWith<AuthChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'AuthenticationEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) sendOTP,
    required TResult Function(auth.User user) authChanged,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phone)? sendOTP,
    TResult Function(auth.User user)? authChanged,
    TResult Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? sendOTP,
    TResult Function(auth.User user)? authChanged,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendOTP value) sendOTP,
    required TResult Function(AuthChanged value) authChanged,
    required TResult Function(Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendOTP value)? sendOTP,
    TResult Function(AuthChanged value)? authChanged,
    TResult Function(Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendOTP value)? sendOTP,
    TResult Function(AuthChanged value)? authChanged,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AuthenticationEvent {
  const factory Initial() = _$Initial;
}

/// @nodoc
class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

  _InitialAuthentication initial() {
    return const _InitialAuthentication();
  }

  _Uninitialized uninitialized() {
    return const _Uninitialized();
  }

  _Authenticated authenticated() {
    return const _Authenticated();
  }

  _Unauthenticated unauthenticated() {
    return const _Unauthenticated();
  }

  _Loading loading() {
    return const _Loading();
  }
}

/// @nodoc
const $AuthenticationState = _$AuthenticationStateTearOff();

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() uninitialized,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uninitialized,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uninitialized,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthentication value) initial,
    required TResult Function(_Uninitialized value) uninitialized,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialAuthentication value)? initial,
    TResult Function(_Uninitialized value)? uninitialized,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthentication value)? initial,
    TResult Function(_Uninitialized value)? uninitialized,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;
}

/// @nodoc
abstract class _$InitialAuthenticationCopyWith<$Res> {
  factory _$InitialAuthenticationCopyWith(_InitialAuthentication value,
          $Res Function(_InitialAuthentication) then) =
      __$InitialAuthenticationCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialAuthenticationCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$InitialAuthenticationCopyWith<$Res> {
  __$InitialAuthenticationCopyWithImpl(_InitialAuthentication _value,
      $Res Function(_InitialAuthentication) _then)
      : super(_value, (v) => _then(v as _InitialAuthentication));

  @override
  _InitialAuthentication get _value => super._value as _InitialAuthentication;
}

/// @nodoc

class _$_InitialAuthentication implements _InitialAuthentication {
  const _$_InitialAuthentication();

  @override
  String toString() {
    return 'AuthenticationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InitialAuthentication);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() uninitialized,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uninitialized,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uninitialized,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthentication value) initial,
    required TResult Function(_Uninitialized value) uninitialized,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Loading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialAuthentication value)? initial,
    TResult Function(_Uninitialized value)? uninitialized,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Loading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthentication value)? initial,
    TResult Function(_Uninitialized value)? uninitialized,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialAuthentication implements AuthenticationState {
  const factory _InitialAuthentication() = _$_InitialAuthentication;
}

/// @nodoc
abstract class _$UninitializedCopyWith<$Res> {
  factory _$UninitializedCopyWith(
          _Uninitialized value, $Res Function(_Uninitialized) then) =
      __$UninitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UninitializedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$UninitializedCopyWith<$Res> {
  __$UninitializedCopyWithImpl(
      _Uninitialized _value, $Res Function(_Uninitialized) _then)
      : super(_value, (v) => _then(v as _Uninitialized));

  @override
  _Uninitialized get _value => super._value as _Uninitialized;
}

/// @nodoc

class _$_Uninitialized implements _Uninitialized {
  const _$_Uninitialized();

  @override
  String toString() {
    return 'AuthenticationState.uninitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Uninitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() uninitialized,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
  }) {
    return uninitialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uninitialized,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
  }) {
    return uninitialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uninitialized,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (uninitialized != null) {
      return uninitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthentication value) initial,
    required TResult Function(_Uninitialized value) uninitialized,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Loading value) loading,
  }) {
    return uninitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialAuthentication value)? initial,
    TResult Function(_Uninitialized value)? uninitialized,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Loading value)? loading,
  }) {
    return uninitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthentication value)? initial,
    TResult Function(_Uninitialized value)? uninitialized,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (uninitialized != null) {
      return uninitialized(this);
    }
    return orElse();
  }
}

abstract class _Uninitialized implements AuthenticationState {
  const factory _Uninitialized() = _$_Uninitialized;
}

/// @nodoc
abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated _value, $Res Function(_Authenticated) _then)
      : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;
}

/// @nodoc

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated();

  @override
  String toString() {
    return 'AuthenticationState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() uninitialized,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uninitialized,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uninitialized,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthentication value) initial,
    required TResult Function(_Uninitialized value) uninitialized,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Loading value) loading,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialAuthentication value)? initial,
    TResult Function(_Uninitialized value)? uninitialized,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Loading value)? loading,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthentication value)? initial,
    TResult Function(_Uninitialized value)? uninitialized,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthenticationState {
  const factory _Authenticated() = _$_Authenticated;
}

/// @nodoc
abstract class _$UnauthenticatedCopyWith<$Res> {
  factory _$UnauthenticatedCopyWith(
          _Unauthenticated value, $Res Function(_Unauthenticated) then) =
      __$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnauthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$UnauthenticatedCopyWith<$Res> {
  __$UnauthenticatedCopyWithImpl(
      _Unauthenticated _value, $Res Function(_Unauthenticated) _then)
      : super(_value, (v) => _then(v as _Unauthenticated));

  @override
  _Unauthenticated get _value => super._value as _Unauthenticated;
}

/// @nodoc

class _$_Unauthenticated implements _Unauthenticated {
  const _$_Unauthenticated();

  @override
  String toString() {
    return 'AuthenticationState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() uninitialized,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uninitialized,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uninitialized,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthentication value) initial,
    required TResult Function(_Uninitialized value) uninitialized,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Loading value) loading,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialAuthentication value)? initial,
    TResult Function(_Uninitialized value)? uninitialized,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Loading value)? loading,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthentication value)? initial,
    TResult Function(_Uninitialized value)? uninitialized,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AuthenticationState {
  const factory _Unauthenticated() = _$_Unauthenticated;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'AuthenticationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() uninitialized,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uninitialized,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uninitialized,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthentication value) initial,
    required TResult Function(_Uninitialized value) uninitialized,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialAuthentication value)? initial,
    TResult Function(_Uninitialized value)? uninitialized,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthentication value)? initial,
    TResult Function(_Uninitialized value)? uninitialized,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthenticationState {
  const factory _Loading() = _$_Loading;
}
