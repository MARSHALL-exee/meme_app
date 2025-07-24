import 'dart:convert';
import 'package:http/http.dart' as http;
import 'meme_model.dart';

class MemeService {
  static Future<List<Meme>> fetchMemes() async {
    final response = await http.get(
      Uri.parse('https://meme-api.com/gimme/50'), // Fetch 50 memes
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return (data['memes'] as List)
          .map((json) => Meme.fromJson(json))
          .toList();
    } else {
      throw Exception('Failed to load memes');
    }
  }
}
