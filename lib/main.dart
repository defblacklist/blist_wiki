// ignore_for_file: prefer_const_constructors
import 'package:blist_wiki/admin/cp_giris.dart';
import 'package:blist_wiki/tema_ui.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => TemaUI(),
        '/admin' : (context) => AdminPanelGiris(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
