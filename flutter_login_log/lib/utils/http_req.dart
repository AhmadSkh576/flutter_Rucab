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
}
