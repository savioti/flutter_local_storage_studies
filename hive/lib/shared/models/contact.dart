import 'package:hive_flutter/hive_flutter.dart';
part 'contact.g.dart';

@HiveType(typeId: 0)
class Contact {
  @HiveField(0)
  String name = '';

  @HiveField(1)
  String phoneNumber = '';

  Contact({
    required this.name,
    required this.phoneNumber,
  });

  @override
  String toString() {
    return 'Name: $name\nPhone: $phoneNumber';
  }
}
