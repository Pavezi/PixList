import 'package:flutter/material.dart';
import 'package:pixlist/database/app_database.dart';
import 'package:pixlist/screens/contact_form.dart';
import '../models/contact.dart';

class ContactsList extends StatelessWidget {
  // final List<Contact> contacts = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lista de Contatos'),
        ),
        body: FutureBuilder(
          future: findAll(),
          builder: (context, snapshot) {
            final List<Contact> contacts = snapshot.data as List<Contact>;
            return ListView.builder(
              itemBuilder: (context, index) {
                final Contact contact = contacts[index];
                return _ContactItem(contact);
              },
            );
          },
        ),
        // ListView.builder(
        //   itemBuilder: (context, index){
        //     final Contact contact = contacts[index];
        //     return _ContactItem(contact);
        //   },
        //   itemCount: contacts.length,
        // ),
        floatingActionButton: FloatingActionButton(
        onPressed: ()
    {
      Navigator.of(context)
          .push(
        MaterialPageRoute(
          builder: (context) => ContactForm(),
        ),
      )
          .then(
            (newContact) => debugPrint(newContact.toString()),
      );
    },
    child: Icon(Icons.add),
    ),
    );
  }
}

class _ContactItem extends StatelessWidget {

  final Contact contact;

  _ContactItem(this.contact);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(contact.name),
        subtitle: Text(contact.pix),
      ),
    );
  }

}