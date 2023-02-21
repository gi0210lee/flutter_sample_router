import 'package:flutter/material.dart';
import 'package:sample_router/routes.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String id = '22';

  void onPressed() {
    Navigator.pushNamed(context, '${Routes.detailRoute}/$id');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home'),
      ),
      body: TextButton(
        onPressed: onPressed,
        child: Center(child: Text('Button: $id')),
      ),
    );
  }
}
