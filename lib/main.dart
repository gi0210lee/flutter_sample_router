import 'package:flutter/material.dart';
import 'package:sample_router/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Routing Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.rootRoute,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
