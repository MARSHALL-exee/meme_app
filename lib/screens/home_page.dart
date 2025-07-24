import 'package:flutter/material.dart';
import '../meme_service.dart';
import '../meme_model.dart';
import '../meme_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Meme> memes = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchMemes();
  }

  Future<void> _fetchMemes() async {
    try {
      final fetchedMemes = await MemeService.fetchMemes();
      setState(() {
        memes = fetchedMemes;
        isLoading = false;
      });
    } catch (e) {
      setState(() => isLoading = false);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Failed to load memes: $e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meme App', textAlign: TextAlign.center),
        backgroundColor: Colors.deepPurple.withOpacity(0.8),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : memes.isEmpty
          ? Center(child: Text('No memes available'))
          : ListView.builder(
              itemCount: memes.length,
              itemBuilder: (context, index) {
                return MemeCard(meme: memes[index]);
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _fetchMemes,
        child: Icon(Icons.refresh),
      ),
    );
  }
}
