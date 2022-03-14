part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.sendOTP(String phone) = SendOTP;
  const factory AuthenticationEvent.authChanged(auth.User user) = AuthChanged;
  const factory AuthenticationEvent.initial() = Initial;
}
