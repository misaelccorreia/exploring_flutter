import 'package:flutter/material.dart';

void main() => runApp(const RockInRio());

class RockInRio extends StatelessWidget {
  const RockInRio({Key? key}):super(key: key);

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
        title: const Text('Atrações'),),
        body: const Placeholder(),
    );
  }
}

class Atracao{
  final String nome;
  final int dia;
  final List<String> tags;

  const Atracao(this.nome, this.dia, this.tags);

}

const listaAtracoes = Atracao("Iron", 2, ["Show"]);