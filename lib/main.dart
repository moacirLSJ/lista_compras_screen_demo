import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lista_comras/pages/home_page.dart';
import 'package:lista_comras/pages/test_page.dart';
import 'package:lista_comras/theme/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Lista de Compras',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(context).defaultTheme,
        // home: const HomePage(),
        home: const TestPage(),
    );
  }
}
