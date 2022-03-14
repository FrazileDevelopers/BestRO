part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = _InitialAuthentication;
  const factory AuthenticationState.uninitialized() = _Uninitialized;
  const factory AuthenticationState.authenticated() = _Authenticated;
  const factory AuthenticationState.unauthenticated() = _Unauthenticated;
  const factory AuthenticationState.loading() = _Loading;
}
