import 'package:estudo_hive/shared/models/contact.dart';
import 'package:estudo_hive/shared/models/agenda.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveRepository {
  static Future<void> initialize() async {
    Hive.registerAdapter(ContactAdapter());
    Hive.registerAdapter(AgendaAdapter());
    await Hive.initFlutter();
  }

  Future<Agenda?> loadAgenda() async {
    final Box<Agenda> _agendaBox = await _openAgendaBox();
    var agenda = _agendaBox.get('agenda');
    return agenda;
  }

  Future<void> addContact(Contact contact) async {
    var agenda = await loadAgenda();

    if (agenda == null) {
      agenda = Agenda();
    }

    agenda.contacts.add(contact);
    _updateAgenda(agenda);
  }

  Future<void> _updateAgenda(Agenda agenda) async {
    try {
      var box = await _openAgendaBox();
      await box.put('agenda', agenda);
    } catch (e) {
      throw (e);
    }
  }

  Future<Box<Agenda>> _openAgendaBox() async {
    var _agendaBox = await Hive.openBox<Agenda>('agenda');
    return _agendaBox;
  }
}
