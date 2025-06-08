import 'package:flutter/material.dart';

void main() => runApp(const RockInRio());

class RockInRio extends StatelessWidget {
  const RockInRio({Key? key}):super(key: key);
  //opcional mas por boas praticas do linter apresentamos o construtor


  //override para o que precisa indicar
  @override
  Widget build(BuildContext){
    return MaterialApp(
      title: 'Rock in Rio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
 const HomePage({Key? key}): super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: const Text('Atrações'),
        ),
        body: ListView.builder(
          itemCount: listaAtracoes.length,
          itemBuilder: (context, index){
            return ListTile(
              title: Text(listaAtracoes[index].nome),
            );
        }),
    );
  }
}

class Atracao{
  final String nome;
  final int dia;
  final List<String> tags;

  const Atracao(this.nome, this.dia, this.tags);
  
}
  
//por inferencia o compilador de Dart admite como uma lista de objetos Atracao
const listaAtracoes = [
  Atracao("Iron Maiden", 2, ["Show"]),
  Atracao("Alok", 3, ["Influente", "Top", "Show"]),
  Atracao("Justin Bieber", 4, ["TopCharts", "Hits", "PríncipeDoPOP"]),
  Atracao("Guns N’ Roses", 8, ["Sucesso", "Espetáculo", "Fas"]),
  Atracao("Capital Inicial", 9, ["2019", "Novo Álbum", "Fas"]),
  Atracao("Green Day", 9, ["Sucesso", "Reconhecimento", "Show"]),
  Atracao("Cold Play", 10, ["NovoAlbum", "Sucesso", "2011"]),
  Atracao("Ivete Sangalo", 10, ["Unica", "Carreiras", "Fas"]),
  Atracao("Racionais", 3, ["Hits", "Prêmios", "Respeito"]),
  Atracao("Gloria Groove", 8, ["Streams", "Representatividade", "Sucesso"]),
  Atracao("Avril Lavigne", 9, ["Estreia", "Sucesso", "Lançamento"]),
  Atracao("Ludmilla", 10, ["Representativade", "Sucesso", "Parcerias"]),
  ];