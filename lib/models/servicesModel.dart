import 'package:freezed_annotation/freezed_annotation.dart';

part 'servicesModel.freezed.dart';

@freezed
class ServicesModel with _$ServicesModel {
  const factory ServicesModel({
    required String image,
    required String name,
  }) = _ServicesModel;
}
