// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agenda.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AgendaAdapter extends TypeAdapter<Agenda> {
  @override
  final int typeId = 1;

  @override
  Agenda read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Agenda()..contacts = (fields[0] as List).cast<Contact>();
  }

  @override
  void write(BinaryWriter writer, Agenda obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.contacts);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AgendaAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
