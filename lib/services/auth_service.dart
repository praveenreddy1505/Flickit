import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../models/user_model.dart';

class AuthService {
  final String baseUrl = dotenv.env['MONGO_DB_URI'] ?? '';  // Your MongoDB URI

  // Add user to MongoDB
  Future<void> addUser(User user) async {
    final url = Uri.parse('$baseUrl/users'); // Replace with your backend API endpoint

    try {
      final response = await http.post(url,
          headers: {"Content-Type": "application/json"},
          body: json.encode(user.toMap()));

      if (response.statusCode == 201) {
        print("User added successfully.");
      } else {
        throw Exception('Failed to add user');
      }
    } catch (error) {
      print("Error: $error");
    }
  }

  // Check login credentials (static for now)
  Future<bool> login(String username, String password) async {
    // Static credentials
    if (username == 'praveen' && password == '12345') {
      return true;
    } else {
      return false;
    }
  }
}
