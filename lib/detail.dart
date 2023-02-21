import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final String id;

  const Detail({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('detail'),
      ),
      body: Center(
        child: Text('Detail: $id'),
      ),
    );
  }
}
