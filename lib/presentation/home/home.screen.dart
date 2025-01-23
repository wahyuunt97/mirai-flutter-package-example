import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirai/mirai.dart';
import 'package:http/http.dart' as http;
import 'package:mirai_test/presentation/screens.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Dynamic Themed App',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary, // Use theme color
            ),
          ),
          backgroundColor: Theme.of(context).colorScheme.primary, // Theme color
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Theme set from : https://wahyuunt97.github.io/theme.json',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary, // Theme color
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary, // Theme color
                  foregroundColor: Theme.of(context).colorScheme.onPrimary, // Text color
                ),
                onPressed: () {
                  Get.toNamed('/work');
                },
                child: const Text('Open page from : /widget'),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
