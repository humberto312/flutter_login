import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: inicio(),
    );
  }
}

class inicio extends StatelessWidget {
  const inicio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login en flutter'),
      ),
      body: cuerpo(),
    );
  }
}

class cuerpo extends StatelessWidget {
  const cuerpo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1471922694854-ff1b63b20054?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8bWFyfGVufDB8fDB8fHww'),
              fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Etiqueta(),
          CampoUser(),
          CampoPass(),
          BotonEntrar(),
        ],
      ),
    );
  }
}

Widget Etiqueta() {
  return Container(
    child: Center(
      child: Text(
        'sing in',
        style: TextStyle(
            fontSize: 25.0, color: const Color.fromARGB(255, 243, 54, 33)),
      ),
    ),
  );
}

Widget CampoUser() {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'user', fillColor: Colors.white, filled: true),
      ));
}

Widget CampoPass() {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'password', fillColor: Colors.white, filled: true),
      ));
}

Widget BotonEntrar() {
  return ElevatedButton(
      onPressed: () {},
      child: Text('Intro now',
          style: TextStyle(fontSize: 30.0, color: Colors.blue)));
}
