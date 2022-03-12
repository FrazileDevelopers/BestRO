import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'services_event.dart';
part 'services_state.dart';
part 'services_bloc.freezed.dart';

class ServicesBloc extends Bloc<ServicesEvent, ServicesState> {
  ServicesBloc() : super(_Initial()) {
    on<ServicesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
