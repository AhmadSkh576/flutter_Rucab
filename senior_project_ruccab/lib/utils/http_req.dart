import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpRequests {
  Future<List<Object>> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('http://10.0.2.2:3000/api/auth/login'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: jsonEncode({
        'email': email,
        'password': password,
      }),
    );
    var res = jsonDecode(response.body);

    if (response.statusCode == 200) {
      return [true, res];
    } else {
      print(response.body);
      return [false, res];
    }
  }

  Future<List<Object>> signUp(
      String email,
      String password,
      String first_name,
      String last_name,
      String gender,
      String faculty,
      String confirmPassword,
      String phone) async {
    print("signuo clicked");
    final response = await http.post(
      Uri.parse('http://10.0.2.2:3000/api/auth/signup'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: jsonEncode({
        "first_name": first_name,
        "last_name": last_name,
        "email": email,
        "gender": gender,
        "faculty": faculty,
        "password": password,
        "confirmPassword": confirmPassword,
        "phone_number": phone
      }),
    );
    var res = jsonDecode(response.body);
    print("signUp");
    if (response.statusCode == 200) {
      return [true, res];
    } else {
      print(response.body);
      return [false, res];
    }
  }

  Future<List<Object>> validateEmail(
      String email, String verification_code) async {
    print(verification_code);

    final response = await http.patch(
      Uri.parse('http://10.0.2.2:3000/api/auth/validateEmail'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body:
          jsonEncode({"email": email, "verification_code": verification_code}),
    );
    var res = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return [true, res];
    } else {
      return [false, res];
    }
  }

  Future<List<Object>> resendEmail(String email) async {
    final response = await http.post(
      Uri.parse('http://10.0.2.2:3000/api/auth/resendEmail'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: jsonEncode({'email': email, "type": "email"}),
    );
    var res = jsonDecode(response.body);

    if (response.statusCode == 200) {
      return [true, res];
    } else {
      return [false, res];
    }
  }
}
