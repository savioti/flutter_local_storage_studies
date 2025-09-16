import 'package:estudo_hive/services/contact/contact_service.dart';
import 'package:estudo_hive/shared/models/agenda.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  final ContactService _contactService = ContactService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Agenda?>(
      future: _contactService.loadAgenda(),
      builder: (_, snapshot) {
        if (!snapshot.hasData) {
          return CircularProgressIndicator();
        }

        var agenda = snapshot.data;

        return SingleChildScrollView(
          child: ListView.builder(
            itemCount: agenda!.contactsCount,
            shrinkWrap: true,
            itemBuilder: (_, i) {
              return ListTile(
                title: Text(agenda.contacts[i].name),
                subtitle: Text(agenda.contacts[i].phoneNumber),
              );
            },
          ),
        );
      },
    );
  }
}
