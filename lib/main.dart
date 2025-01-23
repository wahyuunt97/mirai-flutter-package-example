import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:get/get.dart';
import 'package:mirai/mirai.dart';

import 'infrastructure/navigation/navigation.dart';
import 'infrastructure/navigation/routes.dart';
import 'infrastructure/dal/services/mirai/widget/parser/custom_container_parser.dart';
import 'infrastructure/dal/services/mirai/navigation/parser/mirai_navigation_parser.dart';
import 'package:http/http.dart' as http; // HTTP package for API calls
import 'dart:convert'; // For JSON decoding

void main() async {
  var initialRoute = await Routes.initialRoute;

  print("hittttt");
  await Mirai.initialize(parsers: [
    CustomContainerParser(), // Registrasi parser
  ], actionParsers: [
    NavigateActionParser(),
  ]);

  final themeJson = await fetchThemeFromServer();

  runApp(Main(
    themeJson: themeJson,
  ));
}

Future<Map<String, dynamic>> fetchThemeFromServer() async {
  print("fetch theme started");

  try {
    final response =
        await http.get(Uri.parse('https://wahyuunt97.github.io/theme.json'));
    print("fetch complete with status: ${response.statusCode}");

    if (response.statusCode == 200) {
      print("get response ${response.body}");

      return jsonDecode(response.body);
    } else {
      print("failed with status: ${response.statusCode}");
      throw Exception('Failed to load theme');
    }
  } catch (e) {
    print("fetch error: $e");
    throw Exception('Failed to load theme');
  }
}

class Main extends StatelessWidget {
  final Map<String, dynamic> themeJson;

  const Main({required this.themeJson, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MiraiApp(
      theme: MiraiTheme.fromJson(themeJson),
      homeBuilder: (context) {
        // Use MiraiTheme and pass it to GetMaterialApp
        return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: Theme.of(context).copyWith(),
            initialRoute: '/home',
            getPages: Nav.routes);
      },
    );
  }
}
