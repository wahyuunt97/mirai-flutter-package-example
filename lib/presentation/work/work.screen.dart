import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:stac/stac.dart'; // For JSON decoding

class WorkScreen extends StatefulWidget {
  const WorkScreen({super.key});

  @override
  State<WorkScreen> createState() => _WorkScreenState();
}

class _WorkScreenState extends State<WorkScreen> {
  late Future<Map<String, dynamic>> _jsonFuture;

  @override
  void initState() {
    super.initState();
    // Initialize the future to fetch JSON
    _jsonFuture = fetchWidgetJson();
  }

  Future<Map<String, dynamic>> fetchWidgetJson() async {
    const url = 'https://wahyuunt97.github.io/widget.json';

    try {
      print("Fetching widget JSON from: $url");
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        print("JSON Response: ${response.body}");
        return jsonDecode(response.body);
      } else {
        throw Exception('Failed to load widget JSON: ${response.statusCode}');
      }
    } catch (e) {
      print("Error fetching JSON: $e");
      throw Exception('Error fetching widget JSON');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FutureBuilder<Map<String, dynamic>>(
        future: _jsonFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data == null) {
            return const Center(child: Text('No data found.'));
          }

          print(snapshot.data);
          // Pass the fetched JSON to Mirai.fromJson
          return Stac.fromJson(snapshot.data!, context) ?? SizedBox();;
        },
      ),
    );
  }
}

