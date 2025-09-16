import 'package:estudo_hive/pages/home/widgets/contact_form.dart';
import 'package:flutter/material.dart';

class AddContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.lime[100],
      appBar: AppBar(
        title: Text(
          'Add Contact',
          style: TextStyle(
            color: Colors.green[900],
          ),
        ),
      ),
      body: Center(
        child: ContactForm(),
      ),
    );
  }
}
