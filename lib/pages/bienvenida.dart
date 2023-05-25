import 'package:flutter/material.dart';

import 'login.dart';

class GettingStarted extends StatelessWidget {
  const GettingStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[Fondo(), Contenido()],
    ));
  }
}

class Fondo extends StatelessWidget {
  const Fondo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 49, 156, 61),
        Color.fromARGB(255, 80, 187, 125),
      ], begin: Alignment.centerRight, end: Alignment.bottomLeft)),
    );
  }
}

class Contenido extends StatefulWidget {
  const Contenido({super.key});

  @override
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          'assets/user.png',
          height: 250,
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'Welcome to Silence Company!',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Start saving your money with us',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          width: 200,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => LoginScreen()));
            },
            style: ButtonStyle(
              //minimumSize: MaterialStateProperty.all(Size(200, 50)), // Tamaño mínimo
              backgroundColor:
                  MaterialStateProperty.all(Color.fromARGB(255, 255, 255, 255)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Forma redondeada
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  'Get Started',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),
        )
      ],
    );
  }
}
