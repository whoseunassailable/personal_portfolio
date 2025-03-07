import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/config/secrets.dart';

class OpenAIService {
  final String apiKey = Secrets.apiKey;
  final String apiUrl = "https://api.openai.com/v1/chat/completions";

  final Dio dio = Dio();

  // To track the progress of the request (you can replace this with a more sophisticated mechanism if needed)
  double analyzerPercent = 0.0;

  Future<String> analyzeCode(String codeSnippet) async {
    // Track progress
    analyzerPercent = 0.1; // Initial progress (after sending the request)

    try {
      final response = await dio.post(
        apiUrl,
        options: Options(
          headers: {
            "Authorization": "Bearer $apiKey",
            "Content-Type": "application/json",
          },
        ),
        data: jsonEncode({
          "model": "gpt-4-turbo", // Use the latest model
          "messages": [
            {"role": "system", "content": "You are a Flutter expert."},
            {
              "role": "user",
              "content": "Analyze this Flutter code:\n$codeSnippet"
            }
          ]
        }),
      );

      // Simulate some analysis progress (replace with real logic if needed)
      analyzerPercent = 0.7; // After receiving response from OpenAI

      if (response.statusCode == 200) {
        analyzerPercent = 1.0; // Analysis done
        final responseData = response.data;
        return responseData["choices"][0]["message"]["content"];
      } else {
        throw Exception("Failed to get response: ${response.data}");
      }
    } catch (e) {
      analyzerPercent = 0.0; // Reset progress if an error occurs
      return "Error: $e";
    }
  }
}

class CodeAnalyzerScreen extends StatefulWidget {
  @override
  _CodeAnalyzerScreenState createState() => _CodeAnalyzerScreenState();
}

class _CodeAnalyzerScreenState extends State<CodeAnalyzerScreen> {
  final OpenAIService _openAIService = OpenAIService();
  String _response = "";
  String _code = "";
  double _progress = 0.0;

  void _analyzeCode() async {
    // Read the code from a file (for example, 'lib/main.dart')
    String code = readFlutterFile("lib/main.dart");

    setState(() {
      _code = code;
      _progress = 0.1; // Show initial progress
    });

    // Send code to OpenAI and get response
    String result = await _openAIService.analyzeCode(code);

    setState(() {
      _response = result;
      _progress = _openAIService
          .analyzerPercent; // Update the progress to 100% when done
    });
  }

  String readFlutterFile(String filePath) {
    try {
      return File(filePath).readAsStringSync();
    } catch (e) {
      return "Error reading file: $e";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Code Analyzer"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: _analyzeCode,
              child: Text("Analyze Flutter Code"),
            ),
            SizedBox(height: 20),
            Text("Progress: ${(_progress * 100).toStringAsFixed(0)}%"),
            LinearProgressIndicator(
              value: _progress,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            SizedBox(height: 20),
            Text("Code Analysis Result:"),
            SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Text(_response, style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CodeAnalyzerScreen(),
  ));
}
