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
    required TResult Function() initialize,
    required TResult Function() getAllEmployee,
    required TResult Function(Employee employee, bool isEdit) saveEmployee,
    required TResult Function(Employee employee) proceedToEditEmployee,
    required TResult Function(Employee employee) deleteEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? getAllEmployee,
    TResult? Function(Employee employee, bool isEdit)? saveEmployee,
    TResult? Function(Employee employee)? proceedToEditEmployee,
    TResult? Function(Employee employee)? deleteEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? getAllEmployee,
    TResult Function(Employee employee, bool isEdit)? saveEmployee,
    TResult Function(Employee employee)? proceedToEditEmployee,
    TResult Function(Employee employee)? deleteEmployee,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetAllEmployee value) getAllEmployee,
    required TResult Function(_SaveEmployee value) saveEmployee,
    required TResult Function(_ProceedToEditEmployee value)
        proceedToEditEmployee,
    required TResult Function(_DeleteEmployee value) deleteEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetAllEmployee value)? getAllEmployee,
    TResult? Function(_SaveEmployee value)? saveEmployee,
    TResult? Function(_ProceedToEditEmployee value)? proceedToEditEmployee,
    TResult? Function(_DeleteEmployee value)? deleteEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetAllEmployee value)? getAllEmployee,
    TResult Function(_SaveEmployee value)? saveEmployee,
    TResult Function(_ProceedToEditEmployee value)? proceedToEditEmployee,
    TResult Function(_DeleteEmployee value)? deleteEmployee,
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
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializeImpl implements _Initialize {
  const _$InitializeImpl();

  @override
  String toString() {
    return 'EmployeeEvent.initialize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() getAllEmployee,
    required TResult Function(Employee employee, bool isEdit) saveEmployee,
    required TResult Function(Employee employee) proceedToEditEmployee,
    required TResult Function(Employee employee) deleteEmployee,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? getAllEmployee,
    TResult? Function(Employee employee, bool isEdit)? saveEmployee,
    TResult? Function(Employee employee)? proceedToEditEmployee,
    TResult? Function(Employee employee)? deleteEmployee,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? getAllEmployee,
    TResult Function(Employee employee, bool isEdit)? saveEmployee,
    TResult Function(Employee employee)? proceedToEditEmployee,
    TResult Function(Employee employee)? deleteEmployee,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetAllEmployee value) getAllEmployee,
    required TResult Function(_SaveEmployee value) saveEmployee,
    required TResult Function(_ProceedToEditEmployee value)
        proceedToEditEmployee,
    required TResult Function(_DeleteEmployee value) deleteEmployee,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetAllEmployee value)? getAllEmployee,
    TResult? Function(_SaveEmployee value)? saveEmployee,
    TResult? Function(_ProceedToEditEmployee value)? proceedToEditEmployee,
    TResult? Function(_DeleteEmployee value)? deleteEmployee,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetAllEmployee value)? getAllEmployee,
    TResult Function(_SaveEmployee value)? saveEmployee,
    TResult Function(_ProceedToEditEmployee value)? proceedToEditEmployee,
    TResult Function(_DeleteEmployee value)? deleteEmployee,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements EmployeeEvent {
  const factory _Initialize() = _$InitializeImpl;
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
    required TResult Function() initialize,
    required TResult Function() getAllEmployee,
    required TResult Function(Employee employee, bool isEdit) saveEmployee,
    required TResult Function(Employee employee) proceedToEditEmployee,
    required TResult Function(Employee employee) deleteEmployee,
  }) {
    return getAllEmployee();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? getAllEmployee,
    TResult? Function(Employee employee, bool isEdit)? saveEmployee,
    TResult? Function(Employee employee)? proceedToEditEmployee,
    TResult? Function(Employee employee)? deleteEmployee,
  }) {
    return getAllEmployee?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? getAllEmployee,
    TResult Function(Employee employee, bool isEdit)? saveEmployee,
    TResult Function(Employee employee)? proceedToEditEmployee,
    TResult Function(Employee employee)? deleteEmployee,
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
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetAllEmployee value) getAllEmployee,
    required TResult Function(_SaveEmployee value) saveEmployee,
    required TResult Function(_ProceedToEditEmployee value)
        proceedToEditEmployee,
    required TResult Function(_DeleteEmployee value) deleteEmployee,
  }) {
    return getAllEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetAllEmployee value)? getAllEmployee,
    TResult? Function(_SaveEmployee value)? saveEmployee,
    TResult? Function(_ProceedToEditEmployee value)? proceedToEditEmployee,
    TResult? Function(_DeleteEmployee value)? deleteEmployee,
  }) {
    return getAllEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetAllEmployee value)? getAllEmployee,
    TResult Function(_SaveEmployee value)? saveEmployee,
    TResult Function(_ProceedToEditEmployee value)? proceedToEditEmployee,
    TResult Function(_DeleteEmployee value)? deleteEmployee,
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
abstract class _$$SaveEmployeeImplCopyWith<$Res> {
  factory _$$SaveEmployeeImplCopyWith(
          _$SaveEmployeeImpl value, $Res Function(_$SaveEmployeeImpl) then) =
      __$$SaveEmployeeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Employee employee, bool isEdit});

  $EmployeeCopyWith<$Res> get employee;
}

/// @nodoc
class __$$SaveEmployeeImplCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$SaveEmployeeImpl>
    implements _$$SaveEmployeeImplCopyWith<$Res> {
  __$$SaveEmployeeImplCopyWithImpl(
      _$SaveEmployeeImpl _value, $Res Function(_$SaveEmployeeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee = null,
    Object? isEdit = null,
  }) {
    return _then(_$SaveEmployeeImpl(
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee,
      isEdit: null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployeeCopyWith<$Res> get employee {
    return $EmployeeCopyWith<$Res>(_value.employee, (value) {
      return _then(_value.copyWith(employee: value));
    });
  }
}

/// @nodoc

class _$SaveEmployeeImpl implements _SaveEmployee {
  const _$SaveEmployeeImpl({required this.employee, required this.isEdit});

  @override
  final Employee employee;
  @override
  final bool isEdit;

  @override
  String toString() {
    return 'EmployeeEvent.saveEmployee(employee: $employee, isEdit: $isEdit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveEmployeeImpl &&
            (identical(other.employee, employee) ||
                other.employee == employee) &&
            (identical(other.isEdit, isEdit) || other.isEdit == isEdit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employee, isEdit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveEmployeeImplCopyWith<_$SaveEmployeeImpl> get copyWith =>
      __$$SaveEmployeeImplCopyWithImpl<_$SaveEmployeeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() getAllEmployee,
    required TResult Function(Employee employee, bool isEdit) saveEmployee,
    required TResult Function(Employee employee) proceedToEditEmployee,
    required TResult Function(Employee employee) deleteEmployee,
  }) {
    return saveEmployee(employee, isEdit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? getAllEmployee,
    TResult? Function(Employee employee, bool isEdit)? saveEmployee,
    TResult? Function(Employee employee)? proceedToEditEmployee,
    TResult? Function(Employee employee)? deleteEmployee,
  }) {
    return saveEmployee?.call(employee, isEdit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? getAllEmployee,
    TResult Function(Employee employee, bool isEdit)? saveEmployee,
    TResult Function(Employee employee)? proceedToEditEmployee,
    TResult Function(Employee employee)? deleteEmployee,
    required TResult orElse(),
  }) {
    if (saveEmployee != null) {
      return saveEmployee(employee, isEdit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetAllEmployee value) getAllEmployee,
    required TResult Function(_SaveEmployee value) saveEmployee,
    required TResult Function(_ProceedToEditEmployee value)
        proceedToEditEmployee,
    required TResult Function(_DeleteEmployee value) deleteEmployee,
  }) {
    return saveEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetAllEmployee value)? getAllEmployee,
    TResult? Function(_SaveEmployee value)? saveEmployee,
    TResult? Function(_ProceedToEditEmployee value)? proceedToEditEmployee,
    TResult? Function(_DeleteEmployee value)? deleteEmployee,
  }) {
    return saveEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetAllEmployee value)? getAllEmployee,
    TResult Function(_SaveEmployee value)? saveEmployee,
    TResult Function(_ProceedToEditEmployee value)? proceedToEditEmployee,
    TResult Function(_DeleteEmployee value)? deleteEmployee,
    required TResult orElse(),
  }) {
    if (saveEmployee != null) {
      return saveEmployee(this);
    }
    return orElse();
  }
}

abstract class _SaveEmployee implements EmployeeEvent {
  const factory _SaveEmployee(
      {required final Employee employee,
      required final bool isEdit}) = _$SaveEmployeeImpl;

  Employee get employee;
  bool get isEdit;
  @JsonKey(ignore: true)
  _$$SaveEmployeeImplCopyWith<_$SaveEmployeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProceedToEditEmployeeImplCopyWith<$Res> {
  factory _$$ProceedToEditEmployeeImplCopyWith(
          _$ProceedToEditEmployeeImpl value,
          $Res Function(_$ProceedToEditEmployeeImpl) then) =
      __$$ProceedToEditEmployeeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Employee employee});

  $EmployeeCopyWith<$Res> get employee;
}

/// @nodoc
class __$$ProceedToEditEmployeeImplCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$ProceedToEditEmployeeImpl>
    implements _$$ProceedToEditEmployeeImplCopyWith<$Res> {
  __$$ProceedToEditEmployeeImplCopyWithImpl(_$ProceedToEditEmployeeImpl _value,
      $Res Function(_$ProceedToEditEmployeeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee = null,
  }) {
    return _then(_$ProceedToEditEmployeeImpl(
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployeeCopyWith<$Res> get employee {
    return $EmployeeCopyWith<$Res>(_value.employee, (value) {
      return _then(_value.copyWith(employee: value));
    });
  }
}

/// @nodoc

class _$ProceedToEditEmployeeImpl implements _ProceedToEditEmployee {
  const _$ProceedToEditEmployeeImpl({required this.employee});

  @override
  final Employee employee;

  @override
  String toString() {
    return 'EmployeeEvent.proceedToEditEmployee(employee: $employee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProceedToEditEmployeeImpl &&
            (identical(other.employee, employee) ||
                other.employee == employee));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProceedToEditEmployeeImplCopyWith<_$ProceedToEditEmployeeImpl>
      get copyWith => __$$ProceedToEditEmployeeImplCopyWithImpl<
          _$ProceedToEditEmployeeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() getAllEmployee,
    required TResult Function(Employee employee, bool isEdit) saveEmployee,
    required TResult Function(Employee employee) proceedToEditEmployee,
    required TResult Function(Employee employee) deleteEmployee,
  }) {
    return proceedToEditEmployee(employee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? getAllEmployee,
    TResult? Function(Employee employee, bool isEdit)? saveEmployee,
    TResult? Function(Employee employee)? proceedToEditEmployee,
    TResult? Function(Employee employee)? deleteEmployee,
  }) {
    return proceedToEditEmployee?.call(employee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? getAllEmployee,
    TResult Function(Employee employee, bool isEdit)? saveEmployee,
    TResult Function(Employee employee)? proceedToEditEmployee,
    TResult Function(Employee employee)? deleteEmployee,
    required TResult orElse(),
  }) {
    if (proceedToEditEmployee != null) {
      return proceedToEditEmployee(employee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetAllEmployee value) getAllEmployee,
    required TResult Function(_SaveEmployee value) saveEmployee,
    required TResult Function(_ProceedToEditEmployee value)
        proceedToEditEmployee,
    required TResult Function(_DeleteEmployee value) deleteEmployee,
  }) {
    return proceedToEditEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetAllEmployee value)? getAllEmployee,
    TResult? Function(_SaveEmployee value)? saveEmployee,
    TResult? Function(_ProceedToEditEmployee value)? proceedToEditEmployee,
    TResult? Function(_DeleteEmployee value)? deleteEmployee,
  }) {
    return proceedToEditEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetAllEmployee value)? getAllEmployee,
    TResult Function(_SaveEmployee value)? saveEmployee,
    TResult Function(_ProceedToEditEmployee value)? proceedToEditEmployee,
    TResult Function(_DeleteEmployee value)? deleteEmployee,
    required TResult orElse(),
  }) {
    if (proceedToEditEmployee != null) {
      return proceedToEditEmployee(this);
    }
    return orElse();
  }
}

abstract class _ProceedToEditEmployee implements EmployeeEvent {
  const factory _ProceedToEditEmployee({required final Employee employee}) =
      _$ProceedToEditEmployeeImpl;

  Employee get employee;
  @JsonKey(ignore: true)
  _$$ProceedToEditEmployeeImplCopyWith<_$ProceedToEditEmployeeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteEmployeeImplCopyWith<$Res> {
  factory _$$DeleteEmployeeImplCopyWith(_$DeleteEmployeeImpl value,
          $Res Function(_$DeleteEmployeeImpl) then) =
      __$$DeleteEmployeeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Employee employee});

  $EmployeeCopyWith<$Res> get employee;
}

/// @nodoc
class __$$DeleteEmployeeImplCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$DeleteEmployeeImpl>
    implements _$$DeleteEmployeeImplCopyWith<$Res> {
  __$$DeleteEmployeeImplCopyWithImpl(
      _$DeleteEmployeeImpl _value, $Res Function(_$DeleteEmployeeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee = null,
  }) {
    return _then(_$DeleteEmployeeImpl(
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployeeCopyWith<$Res> get employee {
    return $EmployeeCopyWith<$Res>(_value.employee, (value) {
      return _then(_value.copyWith(employee: value));
    });
  }
}

/// @nodoc

class _$DeleteEmployeeImpl implements _DeleteEmployee {
  const _$DeleteEmployeeImpl({required this.employee});

  @override
  final Employee employee;

  @override
  String toString() {
    return 'EmployeeEvent.deleteEmployee(employee: $employee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteEmployeeImpl &&
            (identical(other.employee, employee) ||
                other.employee == employee));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteEmployeeImplCopyWith<_$DeleteEmployeeImpl> get copyWith =>
      __$$DeleteEmployeeImplCopyWithImpl<_$DeleteEmployeeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() getAllEmployee,
    required TResult Function(Employee employee, bool isEdit) saveEmployee,
    required TResult Function(Employee employee) proceedToEditEmployee,
    required TResult Function(Employee employee) deleteEmployee,
  }) {
    return deleteEmployee(employee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? getAllEmployee,
    TResult? Function(Employee employee, bool isEdit)? saveEmployee,
    TResult? Function(Employee employee)? proceedToEditEmployee,
    TResult? Function(Employee employee)? deleteEmployee,
  }) {
    return deleteEmployee?.call(employee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? getAllEmployee,
    TResult Function(Employee employee, bool isEdit)? saveEmployee,
    TResult Function(Employee employee)? proceedToEditEmployee,
    TResult Function(Employee employee)? deleteEmployee,
    required TResult orElse(),
  }) {
    if (deleteEmployee != null) {
      return deleteEmployee(employee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetAllEmployee value) getAllEmployee,
    required TResult Function(_SaveEmployee value) saveEmployee,
    required TResult Function(_ProceedToEditEmployee value)
        proceedToEditEmployee,
    required TResult Function(_DeleteEmployee value) deleteEmployee,
  }) {
    return deleteEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetAllEmployee value)? getAllEmployee,
    TResult? Function(_SaveEmployee value)? saveEmployee,
    TResult? Function(_ProceedToEditEmployee value)? proceedToEditEmployee,
    TResult? Function(_DeleteEmployee value)? deleteEmployee,
  }) {
    return deleteEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetAllEmployee value)? getAllEmployee,
    TResult Function(_SaveEmployee value)? saveEmployee,
    TResult Function(_ProceedToEditEmployee value)? proceedToEditEmployee,
    TResult Function(_DeleteEmployee value)? deleteEmployee,
    required TResult orElse(),
  }) {
    if (deleteEmployee != null) {
      return deleteEmployee(this);
    }
    return orElse();
  }
}

abstract class _DeleteEmployee implements EmployeeEvent {
  const factory _DeleteEmployee({required final Employee employee}) =
      _$DeleteEmployeeImpl;

  Employee get employee;
  @JsonKey(ignore: true)
  _$$DeleteEmployeeImplCopyWith<_$DeleteEmployeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmployeeState {
  List<Employee> get currentEmployeeList => throw _privateConstructorUsedError;
  List<Employee> get previousEmployeeList => throw _privateConstructorUsedError;
  Employee get selectedEmployee => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isDeleting => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

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
      {List<Employee> currentEmployeeList,
      List<Employee> previousEmployeeList,
      Employee selectedEmployee,
      bool isFetching,
      bool isSubmitting,
      bool isDeleting,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption});

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
    Object? currentEmployeeList = null,
    Object? previousEmployeeList = null,
    Object? selectedEmployee = null,
    Object? isFetching = null,
    Object? isSubmitting = null,
    Object? isDeleting = null,
    Object? apiFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      currentEmployeeList: null == currentEmployeeList
          ? _value.currentEmployeeList
          : currentEmployeeList // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
      previousEmployeeList: null == previousEmployeeList
          ? _value.previousEmployeeList
          : previousEmployeeList // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
      selectedEmployee: null == selectedEmployee
          ? _value.selectedEmployee
          : selectedEmployee // ignore: cast_nullable_to_non_nullable
              as Employee,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleting: null == isDeleting
          ? _value.isDeleting
          : isDeleting // ignore: cast_nullable_to_non_nullable
              as bool,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
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
      {List<Employee> currentEmployeeList,
      List<Employee> previousEmployeeList,
      Employee selectedEmployee,
      bool isFetching,
      bool isSubmitting,
      bool isDeleting,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption});

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
    Object? currentEmployeeList = null,
    Object? previousEmployeeList = null,
    Object? selectedEmployee = null,
    Object? isFetching = null,
    Object? isSubmitting = null,
    Object? isDeleting = null,
    Object? apiFailureOrSuccessOption = null,
  }) {
    return _then(_$EmployeeStateImpl(
      currentEmployeeList: null == currentEmployeeList
          ? _value._currentEmployeeList
          : currentEmployeeList // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
      previousEmployeeList: null == previousEmployeeList
          ? _value._previousEmployeeList
          : previousEmployeeList // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
      selectedEmployee: null == selectedEmployee
          ? _value.selectedEmployee
          : selectedEmployee // ignore: cast_nullable_to_non_nullable
              as Employee,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleting: null == isDeleting
          ? _value.isDeleting
          : isDeleting // ignore: cast_nullable_to_non_nullable
              as bool,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
    ));
  }
}

/// @nodoc

class _$EmployeeStateImpl extends _EmployeeState {
  const _$EmployeeStateImpl(
      {required final List<Employee> currentEmployeeList,
      required final List<Employee> previousEmployeeList,
      required this.selectedEmployee,
      required this.isFetching,
      required this.isSubmitting,
      required this.isDeleting,
      required this.apiFailureOrSuccessOption})
      : _currentEmployeeList = currentEmployeeList,
        _previousEmployeeList = previousEmployeeList,
        super._();

  final List<Employee> _currentEmployeeList;
  @override
  List<Employee> get currentEmployeeList {
    if (_currentEmployeeList is EqualUnmodifiableListView)
      return _currentEmployeeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentEmployeeList);
  }

  final List<Employee> _previousEmployeeList;
  @override
  List<Employee> get previousEmployeeList {
    if (_previousEmployeeList is EqualUnmodifiableListView)
      return _previousEmployeeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_previousEmployeeList);
  }

  @override
  final Employee selectedEmployee;
  @override
  final bool isFetching;
  @override
  final bool isSubmitting;
  @override
  final bool isDeleting;
  @override
  final Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption;

  @override
  String toString() {
    return 'EmployeeState(currentEmployeeList: $currentEmployeeList, previousEmployeeList: $previousEmployeeList, selectedEmployee: $selectedEmployee, isFetching: $isFetching, isSubmitting: $isSubmitting, isDeleting: $isDeleting, apiFailureOrSuccessOption: $apiFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeStateImpl &&
            const DeepCollectionEquality()
                .equals(other._currentEmployeeList, _currentEmployeeList) &&
            const DeepCollectionEquality()
                .equals(other._previousEmployeeList, _previousEmployeeList) &&
            (identical(other.selectedEmployee, selectedEmployee) ||
                other.selectedEmployee == selectedEmployee) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isDeleting, isDeleting) ||
                other.isDeleting == isDeleting) &&
            (identical(other.apiFailureOrSuccessOption,
                    apiFailureOrSuccessOption) ||
                other.apiFailureOrSuccessOption == apiFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_currentEmployeeList),
      const DeepCollectionEquality().hash(_previousEmployeeList),
      selectedEmployee,
      isFetching,
      isSubmitting,
      isDeleting,
      apiFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeStateImplCopyWith<_$EmployeeStateImpl> get copyWith =>
      __$$EmployeeStateImplCopyWithImpl<_$EmployeeStateImpl>(this, _$identity);
}

abstract class _EmployeeState extends EmployeeState {
  const factory _EmployeeState(
      {required final List<Employee> currentEmployeeList,
      required final List<Employee> previousEmployeeList,
      required final Employee selectedEmployee,
      required final bool isFetching,
      required final bool isSubmitting,
      required final bool isDeleting,
      required final Option<Either<ApiFailure, dynamic>>
          apiFailureOrSuccessOption}) = _$EmployeeStateImpl;
  const _EmployeeState._() : super._();

  @override
  List<Employee> get currentEmployeeList;
  @override
  List<Employee> get previousEmployeeList;
  @override
  Employee get selectedEmployee;
  @override
  bool get isFetching;
  @override
  bool get isSubmitting;
  @override
  bool get isDeleting;
  @override
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$EmployeeStateImplCopyWith<_$EmployeeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
