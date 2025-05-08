import 'package:flutter/material.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(title: const Text('new app')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text("this new app"),
      ),
    );
  }
}
