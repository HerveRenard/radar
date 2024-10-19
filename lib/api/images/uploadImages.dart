import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> uploadImages(String filePath) async {
  final uri = Uri.parse('http://your-laravel-app-url/api/products');
  final request = http.MultipartRequest('POST', uri);

  request.fields['label'] = 'Example Label';
  request.fields['description'] = 'Example Description';
  request.fields['prix'] = '29.99';
  request.fields['favoris'] = 'true';
  request.fields['note'] = '8.5';

  if (filePath != null) {
    final file = await http.MultipartFile.fromPath('image', filePath);
    request.files.add(file);
  }

  final response = await request.send();
  
  if (response.statusCode == 200) {
    print('Image uploaded successfully');
  } else {
    print('Failed to upload image');
  }
}
