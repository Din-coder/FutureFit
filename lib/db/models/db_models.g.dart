// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_models.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserModelAdapter extends TypeAdapter<UserModel> {
  @override
  final int typeId = 1;

  @override
  UserModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserModel(
      username: fields[1] as String,
      email: fields[2] as String,
      password: fields[3] as String,
    )..user_id = fields[0] as String?;
  }

  @override
  void write(BinaryWriter writer, UserModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.user_id)
      ..writeByte(1)
      ..write(obj.username)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.password);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ProfileModelAdapter extends TypeAdapter<ProfileModel> {
  @override
  final int typeId = 3;

  @override
  ProfileModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProfileModel(
      user: fields[1] as UserModel,
      firstname: fields[2] as String,
      lastname: fields[3] as String,
      age: fields[4] as int,
      gender: fields[5] as GenderType,
      birthdate: fields[6] as DateTime,
    )..profile_id = fields[0] as String?;
  }

  @override
  void write(BinaryWriter writer, ProfileModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.profile_id)
      ..writeByte(1)
      ..write(obj.user)
      ..writeByte(2)
      ..write(obj.firstname)
      ..writeByte(3)
      ..write(obj.lastname)
      ..writeByte(4)
      ..write(obj.age)
      ..writeByte(5)
      ..write(obj.gender)
      ..writeByte(6)
      ..write(obj.birthdate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProfileModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HealthModelAdapter extends TypeAdapter<HealthModel> {
  @override
  final int typeId = 5;

  @override
  HealthModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HealthModel(
      profile: fields[1] as ProfileModel,
      height: fields[2] as double,
      weight: fields[3] as double,
      status: fields[4] as HealthStatusType,
    )..Health_id = fields[0] as String?;
  }

  @override
  void write(BinaryWriter writer, HealthModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.Health_id)
      ..writeByte(1)
      ..write(obj.profile)
      ..writeByte(2)
      ..write(obj.height)
      ..writeByte(3)
      ..write(obj.weight)
      ..writeByte(4)
      ..write(obj.status);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HealthModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SensorModelAdapter extends TypeAdapter<SensorModel> {
  @override
  final int typeId = 7;

  @override
  SensorModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SensorModel(
      user: fields[1] as UserModel,
      sensor_name: fields[2] as String,
      status: fields[3] as SensorStatusType,
      battery_level: fields[4] as double,
    )..sensor_id = fields[0] as String?;
  }

  @override
  void write(BinaryWriter writer, SensorModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.sensor_id)
      ..writeByte(1)
      ..write(obj.user)
      ..writeByte(2)
      ..write(obj.sensor_name)
      ..writeByte(3)
      ..write(obj.status)
      ..writeByte(4)
      ..write(obj.battery_level);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SensorModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GenderTypeAdapter extends TypeAdapter<GenderType> {
  @override
  final int typeId = 2;

  @override
  GenderType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return GenderType.male;
      case 1:
        return GenderType.female;
      case 2:
        return GenderType.other;
      default:
        return GenderType.male;
    }
  }

  @override
  void write(BinaryWriter writer, GenderType obj) {
    switch (obj) {
      case GenderType.male:
        writer.writeByte(0);
        break;
      case GenderType.female:
        writer.writeByte(1);
        break;
      case GenderType.other:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenderTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HealthStatusTypeAdapter extends TypeAdapter<HealthStatusType> {
  @override
  final int typeId = 4;

  @override
  HealthStatusType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return HealthStatusType.green;
      case 1:
        return HealthStatusType.yellow;
      case 2:
        return HealthStatusType.red;
      default:
        return HealthStatusType.green;
    }
  }

  @override
  void write(BinaryWriter writer, HealthStatusType obj) {
    switch (obj) {
      case HealthStatusType.green:
        writer.writeByte(0);
        break;
      case HealthStatusType.yellow:
        writer.writeByte(1);
        break;
      case HealthStatusType.red:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HealthStatusTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SensorStatusTypeAdapter extends TypeAdapter<SensorStatusType> {
  @override
  final int typeId = 6;

  @override
  SensorStatusType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return SensorStatusType.on;
      case 1:
        return SensorStatusType.off;
      default:
        return SensorStatusType.on;
    }
  }

  @override
  void write(BinaryWriter writer, SensorStatusType obj) {
    switch (obj) {
      case SensorStatusType.on:
        writer.writeByte(0);
        break;
      case SensorStatusType.off:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SensorStatusTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
