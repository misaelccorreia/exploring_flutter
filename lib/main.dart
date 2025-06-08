import 'package:flutter/material.dart';
//faz a serialização e a desserialização do json
import 'dart:convert' as convert;

//faz chamada para api rest
import 'package:http/http.dart' as http;

void main(){
  runApp(BookApp());
}

class BookApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  const HomePage({Key? key}):super(key: key);

  @override
  _HomePageState createState()=> _HomePageState();
}

class _HomePageState extends State<HomePage>{
  void _buscarLivros() async {
    final url = Uri.http(
      'www.googleapi.com',
      '/book/v1/volumes',
      {'q':'{http}'},
    );
    final response = await http.get(url);

    if(response.statusCode == 200){
      final jsonResponse = convert.jsonDecode(response.body);
      final itemCount = jsonResponse['totalItems'];
      print('Number of books about HTTP: $itemCount.');
      } else {
        print('Request failed with status: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const TextField(),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: _buscarLivros,
              icon: const Icon(Icons.search),
              label: const Text('Pesquisar')),
            const SizedBox(height: 16),
            Text('Foram encontrados X livros sobre X:' ,
            style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}

