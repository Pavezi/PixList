import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../page/home_page.dart';
import '../provider/contacts.dart';

Future main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await .initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'PixList Contatos';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ContactsProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title,
          theme: ThemeData(
            primarySwatch: Colors.amber,
            scaffoldBackgroundColor: Colors.white,
          ),
          home: HomePage(),
        ),
      );
}
