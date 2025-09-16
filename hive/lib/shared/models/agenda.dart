import 'package:estudo_hive/shared/models/contact.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'agenda.g.dart';

@HiveType(typeId: 1)
class Agenda {
  @HiveField(0)
  late List<Contact> contacts;

  int get contactsCount => contacts.length;

  Agenda() {
    contacts = [];
  }
}
