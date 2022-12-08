import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:t2_sistema_distribuido/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Trabalho Prático de Sistema Distribuídos',
      home: HomeView(),
    );
  }
}
