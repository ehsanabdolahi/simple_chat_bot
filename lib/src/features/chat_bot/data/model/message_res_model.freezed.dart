// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageResModel _$MessageResModelFromJson(Map<String, dynamic> json) {
  return _MessageResModel.fromJson(json);
}

/// @nodoc
mixin _$MessageResModel {
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;

  /// Serializes this MessageResModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageResModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageResModelCopyWith<MessageResModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageResModelCopyWith<$Res> {
  factory $MessageResModelCopyWith(
          MessageResModel value, $Res Function(MessageResModel) then) =
      _$MessageResModelCopyWithImpl<$Res, MessageResModel>;
  @useResult
  $Res call({@JsonKey(name: "message") String message});
}

/// @nodoc
class _$MessageResModelCopyWithImpl<$Res, $Val extends MessageResModel>
    implements $MessageResModelCopyWith<$Res> {
  _$MessageResModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageResModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageResModelImplCopyWith<$Res>
    implements $MessageResModelCopyWith<$Res> {
  factory _$$MessageResModelImplCopyWith(_$MessageResModelImpl value,
          $Res Function(_$MessageResModelImpl) then) =
      __$$MessageResModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "message") String message});
}

/// @nodoc
class __$$MessageResModelImplCopyWithImpl<$Res>
    extends _$MessageResModelCopyWithImpl<$Res, _$MessageResModelImpl>
    implements _$$MessageResModelImplCopyWith<$Res> {
  __$$MessageResModelImplCopyWithImpl(
      _$MessageResModelImpl _value, $Res Function(_$MessageResModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageResModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MessageResModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageResModelImpl implements _MessageResModel {
  const _$MessageResModelImpl(
      {@JsonKey(name: "message") required this.message});

  factory _$MessageResModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageResModelImplFromJson(json);

  @override
  @JsonKey(name: "message")
  final String message;

  @override
  String toString() {
    return 'MessageResModel(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageResModelImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MessageResModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageResModelImplCopyWith<_$MessageResModelImpl> get copyWith =>
      __$$MessageResModelImplCopyWithImpl<_$MessageResModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageResModelImplToJson(
      this,
    );
  }
}

abstract class _MessageResModel implements MessageResModel {
  const factory _MessageResModel(
          {@JsonKey(name: "message") required final String message}) =
      _$MessageResModelImpl;

  factory _MessageResModel.fromJson(Map<String, dynamic> json) =
      _$MessageResModelImpl.fromJson;

  @override
  @JsonKey(name: "message")
  String get message;

  /// Create a copy of MessageResModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageResModelImplCopyWith<_$MessageResModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
