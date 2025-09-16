import 'package:estudo_hive/services/contact/contact_service.dart';
import 'package:estudo_hive/shared/models/contact.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final ContactService _contactService = ContactService();

  String? _validateTextField(String? inputText) {
    if ((inputText == null) || (inputText.isEmpty)) {
      return 'This field can\'t be left blank';
    }

    return null;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text('Name'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextFormField(
              validator: _validateTextField,
              controller: _nameController,
            ),
          ),
          SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text('Phone'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextFormField(
              validator: _validateTextField,
              controller: _phoneController,
            ),
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    var contact = Contact(
                      name: _nameController.text,
                      phoneNumber: _phoneController.text,
                    );
                    _contactService.addContact(contact);
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, '/');
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
