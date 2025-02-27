import 'package:flutter/material.dart';

void main() => runApp(MyContenedor());

class MyContenedor extends StatelessWidget {
  const MyContenedor({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Gabriel Montes'),
          centerTitle: true,
          titleTextStyle: const TextStyle(
              color: Colors.cyanAccent,
              fontSize: 25,
              fontStyle: FontStyle.italic),
          backgroundColor: const Color(0xff01213b),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Primer contenedor
              Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blue, // Color del primer contenedor
                  borderRadius:
                      BorderRadius.circular(15), // Esquinas redondeadas
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(01), // Sombra
                      blurRadius: 10,
                      offset: Offset(0, 5), // Desplazamiento de la sombra
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Container 1',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 20), // Espacio entre los contenedores
              // Segundo contenedor
              Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.red, // Color del segundo contenedor
                  borderRadius:
                      BorderRadius.circular(20), // Esquinas redondeadas
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.9), // Sombra
                      blurRadius: 10,
                      offset: Offset(0, 4), // Desplazamiento de la sombra
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Center(
        child: Text(
          'Hello, World!',
        ),
      ),
    );
  }
}
