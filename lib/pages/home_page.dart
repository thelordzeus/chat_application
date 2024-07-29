import 'package:chat_application/auth/auth_service.dart';
import 'package:chat_application/components/drawer_custom.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      drawer: CDrawer(),
    );
  }
}
