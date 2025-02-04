// To parse this JSON data, do
//
//     final messageResModel = messageResModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'message_res_model.freezed.dart';
part 'message_res_model.g.dart';

MessageResModel messageResModelFromJson(String str) => MessageResModel.fromJson(json.decode(str));

String messageResModelToJson(MessageResModel data) => json.encode(data.toJson());

@freezed
class MessageResModel with _$MessageResModel {
  const factory MessageResModel({
    @JsonKey(name: "message")
    required String message,
  }) = _MessageResModel;

  factory MessageResModel.fromJson(Map<String, dynamic> json) => _$MessageResModelFromJson(json);
}
