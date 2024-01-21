// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmployeeDto _$EmployeeDtoFromJson(Map<String, dynamic> json) {
  return _EmployeeDto.fromJson(json);
}

/// @nodoc
mixin _$EmployeeDto {
  @JsonKey(name: 'name', defaultValue: '')
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'designation', defaultValue: '')
  @HiveField(1)
  String get designation => throw _privateConstructorUsedError;
  @JsonKey(name: 'fromDate', defaultValue: '')
  @HiveField(2)
  String get fromDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'toDate', defaultValue: '')
  @HiveField(3)
  String get toDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeDtoCopyWith<EmployeeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeDtoCopyWith<$Res> {
  factory $EmployeeDtoCopyWith(
          EmployeeDto value, $Res Function(EmployeeDto) then) =
      _$EmployeeDtoCopyWithImpl<$Res, EmployeeDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name', defaultValue: '') @HiveField(0) String name,
      @JsonKey(name: 'designation', defaultValue: '')
      @HiveField(1)
      String designation,
      @JsonKey(name: 'fromDate', defaultValue: '')
      @HiveField(2)
      String fromDate,
      @JsonKey(name: 'toDate', defaultValue: '') @HiveField(3) String toDate});
}

/// @nodoc
class _$EmployeeDtoCopyWithImpl<$Res, $Val extends EmployeeDto>
    implements $EmployeeDtoCopyWith<$Res> {
  _$EmployeeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? designation = null,
    Object? fromDate = null,
    Object? toDate = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      designation: null == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String,
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmployeeDtoImplCopyWith<$Res>
    implements $EmployeeDtoCopyWith<$Res> {
  factory _$$EmployeeDtoImplCopyWith(
          _$EmployeeDtoImpl value, $Res Function(_$EmployeeDtoImpl) then) =
      __$$EmployeeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name', defaultValue: '') @HiveField(0) String name,
      @JsonKey(name: 'designation', defaultValue: '')
      @HiveField(1)
      String designation,
      @JsonKey(name: 'fromDate', defaultValue: '')
      @HiveField(2)
      String fromDate,
      @JsonKey(name: 'toDate', defaultValue: '') @HiveField(3) String toDate});
}

/// @nodoc
class __$$EmployeeDtoImplCopyWithImpl<$Res>
    extends _$EmployeeDtoCopyWithImpl<$Res, _$EmployeeDtoImpl>
    implements _$$EmployeeDtoImplCopyWith<$Res> {
  __$$EmployeeDtoImplCopyWithImpl(
      _$EmployeeDtoImpl _value, $Res Function(_$EmployeeDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? designation = null,
    Object? fromDate = null,
    Object? toDate = null,
  }) {
    return _then(_$EmployeeDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      designation: null == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String,
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1, adapterName: 'EmployeeDtoAdapter')
class _$EmployeeDtoImpl extends _EmployeeDto {
  _$EmployeeDtoImpl(
      {@JsonKey(name: 'name', defaultValue: '')
      @HiveField(0)
      required this.name,
      @JsonKey(name: 'designation', defaultValue: '')
      @HiveField(1)
      required this.designation,
      @JsonKey(name: 'fromDate', defaultValue: '')
      @HiveField(2)
      required this.fromDate,
      @JsonKey(name: 'toDate', defaultValue: '')
      @HiveField(3)
      required this.toDate})
      : super._();

  factory _$EmployeeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeDtoImplFromJson(json);

  @override
  @JsonKey(name: 'name', defaultValue: '')
  @HiveField(0)
  final String name;
  @override
  @JsonKey(name: 'designation', defaultValue: '')
  @HiveField(1)
  final String designation;
  @override
  @JsonKey(name: 'fromDate', defaultValue: '')
  @HiveField(2)
  final String fromDate;
  @override
  @JsonKey(name: 'toDate', defaultValue: '')
  @HiveField(3)
  final String toDate;

  @override
  String toString() {
    return 'EmployeeDto(name: $name, designation: $designation, fromDate: $fromDate, toDate: $toDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.designation, designation) ||
                other.designation == designation) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, designation, fromDate, toDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeDtoImplCopyWith<_$EmployeeDtoImpl> get copyWith =>
      __$$EmployeeDtoImplCopyWithImpl<_$EmployeeDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeDtoImplToJson(
      this,
    );
  }
}

abstract class _EmployeeDto extends EmployeeDto {
  factory _EmployeeDto(
      {@JsonKey(name: 'name', defaultValue: '')
      @HiveField(0)
      required final String name,
      @JsonKey(name: 'designation', defaultValue: '')
      @HiveField(1)
      required final String designation,
      @JsonKey(name: 'fromDate', defaultValue: '')
      @HiveField(2)
      required final String fromDate,
      @JsonKey(name: 'toDate', defaultValue: '')
      @HiveField(3)
      required final String toDate}) = _$EmployeeDtoImpl;
  _EmployeeDto._() : super._();

  factory _EmployeeDto.fromJson(Map<String, dynamic> json) =
      _$EmployeeDtoImpl.fromJson;

  @override
  @JsonKey(name: 'name', defaultValue: '')
  @HiveField(0)
  String get name;
  @override
  @JsonKey(name: 'designation', defaultValue: '')
  @HiveField(1)
  String get designation;
  @override
  @JsonKey(name: 'fromDate', defaultValue: '')
  @HiveField(2)
  String get fromDate;
  @override
  @JsonKey(name: 'toDate', defaultValue: '')
  @HiveField(3)
  String get toDate;
  @override
  @JsonKey(ignore: true)
  _$$EmployeeDtoImplCopyWith<_$EmployeeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
