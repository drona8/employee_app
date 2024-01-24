// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EmployeeDtoAdapter extends TypeAdapter<_$EmployeeDtoImpl> {
  @override
  final int typeId = 1;

  @override
  _$EmployeeDtoImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$EmployeeDtoImpl(
      id: fields[0] as String,
      name: fields[1] as String,
      designation: fields[2] as String,
      fromDate: fields[3] as String,
      toDate: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$EmployeeDtoImpl obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.designation)
      ..writeByte(3)
      ..write(obj.fromDate)
      ..writeByte(4)
      ..write(obj.toDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmployeeDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeeDtoImpl _$$EmployeeDtoImplFromJson(Map<String, dynamic> json) =>
    _$EmployeeDtoImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      designation: json['designation'] as String? ?? '',
      fromDate: json['fromDate'] as String? ?? '',
      toDate: json['toDate'] as String? ?? '',
    );

Map<String, dynamic> _$$EmployeeDtoImplToJson(_$EmployeeDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'designation': instance.designation,
      'fromDate': instance.fromDate,
      'toDate': instance.toDate,
    };
