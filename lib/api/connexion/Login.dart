import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Map<String, dynamic>> login(String loginOrEmail, String password) async {
  final response = await http.post(
    Uri.parse('http://your-laravel-app.com/api/login'),
    headers: {'Content-Type': 'application/json'},
    body: json.encode({
      'login_or_email': loginOrEmail,
      'password': password,
    }),
  );

  if (response.statusCode == 200) {
    // Si le serveur renvoie une réponse OK, parsez les données
    return json.decode(response.body);
  } else {
    // Si la réponse n'est pas OK, lancez une exception
    throw Exception('Échec de la connexion. ${json.decode(response.body)['error']}');
  }
}
// void _handleLogin() async {
//   try {
//     final result = await login(_loginOrEmailController.text, _passwordController.text);
//     // Stockez le token ou autres informations de l'utilisateur
//     print('Token: ${result['token']}');
//   } catch (e) {
//     print('Erreur: $e');
//   }
// }
