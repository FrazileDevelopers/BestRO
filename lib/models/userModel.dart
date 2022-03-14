import 'package:freezed_annotation/freezed_annotation.dart';

part 'userModel.freezed.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String phone,
  }) = _UserModel;
}
