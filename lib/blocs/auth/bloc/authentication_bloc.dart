import 'dart:async';

import 'package:bestro/blocs/auth/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthRepository _authRepository;
  StreamSubscription<auth.User?>? _userSubscription;
  AuthenticationBloc({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(_InitialAuthentication()) {
    on<AuthChanged>((event, emit) {
      _userSubscription = _authRepository.user.listen(
        (user) => add(
          AuthenticationEvent.authChanged(user!),
        ),
      );
    });
    on<SendOTP>((event, emit) {
      emit(AuthenticationState.initial());
      
    });
  }
}
