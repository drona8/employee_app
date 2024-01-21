// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmployeeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllEmployee,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllEmployee value) getAllEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllEmployee value)? getAllEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllEmployee value)? getAllEmployee,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeEventCopyWith<$Res> {
  factory $EmployeeEventCopyWith(
          EmployeeEvent value, $Res Function(EmployeeEvent) then) =
      _$EmployeeEventCopyWithImpl<$Res, EmployeeEvent>;
}

/// @nodoc
class _$EmployeeEventCopyWithImpl<$Res, $Val extends EmployeeEvent>
    implements $EmployeeEventCopyWith<$Res> {
  _$EmployeeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllEmployeeImplCopyWith<$Res> {
  factory _$$GetAllEmployeeImplCopyWith(_$GetAllEmployeeImpl value,
          $Res Function(_$GetAllEmployeeImpl) then) =
      __$$GetAllEmployeeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllEmployeeImplCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$GetAllEmployeeImpl>
    implements _$$GetAllEmployeeImplCopyWith<$Res> {
  __$$GetAllEmployeeImplCopyWithImpl(
      _$GetAllEmployeeImpl _value, $Res Function(_$GetAllEmployeeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllEmployeeImpl implements _GetAllEmployee {
  const _$GetAllEmployeeImpl();

  @override
  String toString() {
    return 'EmployeeEvent.getAllEmployee()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllEmployeeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllEmployee,
  }) {
    return getAllEmployee();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllEmployee,
  }) {
    return getAllEmployee?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllEmployee,
    required TResult orElse(),
  }) {
    if (getAllEmployee != null) {
      return getAllEmployee();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllEmployee value) getAllEmployee,
  }) {
    return getAllEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllEmployee value)? getAllEmployee,
  }) {
    return getAllEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllEmployee value)? getAllEmployee,
    required TResult orElse(),
  }) {
    if (getAllEmployee != null) {
      return getAllEmployee(this);
    }
    return orElse();
  }
}

abstract class _GetAllEmployee implements EmployeeEvent {
  const factory _GetAllEmployee() = _$GetAllEmployeeImpl;
}

/// @nodoc
mixin _$EmployeeState {
  List<Employee> get employeeList => throw _privateConstructorUsedError;
  Employee get selectedEmployee => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmployeeStateCopyWith<EmployeeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeStateCopyWith<$Res> {
  factory $EmployeeStateCopyWith(
          EmployeeState value, $Res Function(EmployeeState) then) =
      _$EmployeeStateCopyWithImpl<$Res, EmployeeState>;
  @useResult
  $Res call(
      {List<Employee> employeeList,
      Employee selectedEmployee,
      bool isLoading,
      bool isSubmitting});

  $EmployeeCopyWith<$Res> get selectedEmployee;
}

/// @nodoc
class _$EmployeeStateCopyWithImpl<$Res, $Val extends EmployeeState>
    implements $EmployeeStateCopyWith<$Res> {
  _$EmployeeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeList = null,
    Object? selectedEmployee = null,
    Object? isLoading = null,
    Object? isSubmitting = null,
  }) {
    return _then(_value.copyWith(
      employeeList: null == employeeList
          ? _value.employeeList
          : employeeList // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
      selectedEmployee: null == selectedEmployee
          ? _value.selectedEmployee
          : selectedEmployee // ignore: cast_nullable_to_non_nullable
              as Employee,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployeeCopyWith<$Res> get selectedEmployee {
    return $EmployeeCopyWith<$Res>(_value.selectedEmployee, (value) {
      return _then(_value.copyWith(selectedEmployee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EmployeeStateImplCopyWith<$Res>
    implements $EmployeeStateCopyWith<$Res> {
  factory _$$EmployeeStateImplCopyWith(
          _$EmployeeStateImpl value, $Res Function(_$EmployeeStateImpl) then) =
      __$$EmployeeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Employee> employeeList,
      Employee selectedEmployee,
      bool isLoading,
      bool isSubmitting});

  @override
  $EmployeeCopyWith<$Res> get selectedEmployee;
}

/// @nodoc
class __$$EmployeeStateImplCopyWithImpl<$Res>
    extends _$EmployeeStateCopyWithImpl<$Res, _$EmployeeStateImpl>
    implements _$$EmployeeStateImplCopyWith<$Res> {
  __$$EmployeeStateImplCopyWithImpl(
      _$EmployeeStateImpl _value, $Res Function(_$EmployeeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeList = null,
    Object? selectedEmployee = null,
    Object? isLoading = null,
    Object? isSubmitting = null,
  }) {
    return _then(_$EmployeeStateImpl(
      employeeList: null == employeeList
          ? _value._employeeList
          : employeeList // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
      selectedEmployee: null == selectedEmployee
          ? _value.selectedEmployee
          : selectedEmployee // ignore: cast_nullable_to_non_nullable
              as Employee,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EmployeeStateImpl extends _EmployeeState {
  const _$EmployeeStateImpl(
      {required final List<Employee> employeeList,
      required this.selectedEmployee,
      required this.isLoading,
      required this.isSubmitting})
      : _employeeList = employeeList,
        super._();

  final List<Employee> _employeeList;
  @override
  List<Employee> get employeeList {
    if (_employeeList is EqualUnmodifiableListView) return _employeeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employeeList);
  }

  @override
  final Employee selectedEmployee;
  @override
  final bool isLoading;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'EmployeeState(employeeList: $employeeList, selectedEmployee: $selectedEmployee, isLoading: $isLoading, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeStateImpl &&
            const DeepCollectionEquality()
                .equals(other._employeeList, _employeeList) &&
            (identical(other.selectedEmployee, selectedEmployee) ||
                other.selectedEmployee == selectedEmployee) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_employeeList),
      selectedEmployee,
      isLoading,
      isSubmitting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeStateImplCopyWith<_$EmployeeStateImpl> get copyWith =>
      __$$EmployeeStateImplCopyWithImpl<_$EmployeeStateImpl>(this, _$identity);
}

abstract class _EmployeeState extends EmployeeState {
  const factory _EmployeeState(
      {required final List<Employee> employeeList,
      required final Employee selectedEmployee,
      required final bool isLoading,
      required final bool isSubmitting}) = _$EmployeeStateImpl;
  const _EmployeeState._() : super._();

  @override
  List<Employee> get employeeList;
  @override
  Employee get selectedEmployee;
  @override
  bool get isLoading;
  @override
  bool get isSubmitting;
  @override
  @JsonKey(ignore: true)
  _$$EmployeeStateImplCopyWith<_$EmployeeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
