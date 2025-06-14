// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocalUser _$LocalUserFromJson(Map<String, dynamic> json) {
  return _LocalUser.fromJson(json);
}

/// @nodoc
mixin _$LocalUser {
  @JsonKey(name: 'id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'token')
  String get token => throw _privateConstructorUsedError;

  /// Serializes this LocalUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocalUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalUserCopyWith<LocalUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalUserCopyWith<$Res> {
  factory $LocalUserCopyWith(LocalUser value, $Res Function(LocalUser) then) =
      _$LocalUserCopyWithImpl<$Res, LocalUser>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String userId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'token') String token});
}

/// @nodoc
class _$LocalUserCopyWithImpl<$Res, $Val extends LocalUser>
    implements $LocalUserCopyWith<$Res> {
  _$LocalUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalUserImplCopyWith<$Res>
    implements $LocalUserCopyWith<$Res> {
  factory _$$LocalUserImplCopyWith(
          _$LocalUserImpl value, $Res Function(_$LocalUserImpl) then) =
      __$$LocalUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String userId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'token') String token});
}

/// @nodoc
class __$$LocalUserImplCopyWithImpl<$Res>
    extends _$LocalUserCopyWithImpl<$Res, _$LocalUserImpl>
    implements _$$LocalUserImplCopyWith<$Res> {
  __$$LocalUserImplCopyWithImpl(
      _$LocalUserImpl _value, $Res Function(_$LocalUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocalUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = null,
    Object? token = null,
  }) {
    return _then(_$LocalUserImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalUserImpl extends _LocalUser {
  _$LocalUserImpl(
      {@JsonKey(name: 'id') required this.userId,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'token') required this.token})
      : super._();

  factory _$LocalUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalUserImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String userId;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'token')
  final String token;

  @override
  String toString() {
    return 'LocalUser(userId: $userId, name: $name, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalUserImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, name, token);

  /// Create a copy of LocalUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalUserImplCopyWith<_$LocalUserImpl> get copyWith =>
      __$$LocalUserImplCopyWithImpl<_$LocalUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalUserImplToJson(
      this,
    );
  }
}

abstract class _LocalUser extends LocalUser {
  factory _LocalUser(
      {@JsonKey(name: 'id') required final String userId,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'token') required final String token}) = _$LocalUserImpl;
  _LocalUser._() : super._();

  factory _LocalUser.fromJson(Map<String, dynamic> json) =
      _$LocalUserImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get userId;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'token')
  String get token;

  /// Create a copy of LocalUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalUserImplCopyWith<_$LocalUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
