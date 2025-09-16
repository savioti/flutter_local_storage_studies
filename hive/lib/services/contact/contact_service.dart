import 'package:estudo_hive/repositories/hive/hive_repository.dart';
import 'package:estudo_hive/shared/models/agenda.dart';
import 'package:estudo_hive/shared/models/contact.dart';

class ContactService {
  HiveRepository _hiveRepository = HiveRepository();

  Future<Agenda?> loadAgenda() async {
    final Agenda? _agenda = await _hiveRepository.loadAgenda();
    return _agenda;
  }

  void addContact(Contact contact) {
    _hiveRepository.addContact(contact);
  }
}
