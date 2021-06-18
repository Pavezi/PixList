import 'package:flutter/material.dart';
import 'package:pixlist/models/contact.dart';

import 'database/app_database.dart';
import 'screens/dashboard.dart';

void main() {
  runApp(PixListApp());
  save(Contact( 01,'name', 'pix')).then((id){
    findAll().then((contacts) => debugPrint(contacts.toString()));
  });
}

class PixListApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dashboard(),
    );
  }
}

