import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Главное окно')),
      body: Center(child: Column(children: [
        RaisedButton(onPressed: (){Navigator.pushNamed(context, '/second');}, child: Text('Открыть второе окно'))
      ],)),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Второе окно')),
      body: Center(child: RaisedButton(onPressed: (){
        Navigator.pop(context);
      }, child: Text('Назад'))),
    );
  }
}

void main() {
  runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(BuildContext context) => MainScreen(),
        '/second':(BuildContext context) => SecondScreen()
      }
  ));
}