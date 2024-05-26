import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: ContainerGrid(),
        ),
      ),
    );
  }
}

class ContainerGrid extends StatelessWidget {
  const ContainerGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildColumn(shuffleWidgets([
            InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Soy un cocodrilo roar")));
              },
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("../assets/cocodrilo.png"),
                  ),
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    center: Alignment.centerRight,
                    radius: 0.8,
                    colors: [Colors.blue.shade900, Colors.green.shade900],
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.yellow,
                      blurRadius: 15,
                      offset: Offset(5, -5),
                    )
                  ],
                ),
                alignment: Alignment.center,
              ),
            ),
            Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(80),
                  bottomRight: Radius.circular(80),
                ),
                color: Colors.blue.shade900,
              ),
              alignment: Alignment.center,
            ),
            Container(
              width: 70,
              height: 70,
              color: Colors.blue.shade900,
              child: Icon(
                Icons.dangerous,
                color: Colors.red.shade900,
                size: 30,
              ),
            ),
            Container(
              width: 200,
              height: 50,
              color: Colors.pink.shade900,
              child: const Text(
                '¡Cordova es un buen estudiante!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                ),
              ),
            ),
            createContainer(90, 70, Colors.green.shade900),
          ])),
          buildColumn(shuffleWidgets([
            InkWell(
              onLongPress: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("El panda esta enojado")));
              },
              child: Container(
                width: 145,
                height: 145,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("../assets/panda.png"),
                  ),
                  shape: BoxShape.rectangle,
                  gradient: RadialGradient(
                    center: Alignment.centerRight,
                    radius: 0.8,
                    colors: [
                      Colors.pink.shade700,
                      Color.fromARGB(255, 23, 97, 33)
                    ],
                  ),
                ),
                alignment: Alignment.centerLeft,
              ),
            ),
            Container(
              width: 80,
              height: 90,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.zero,
                  bottomLeft: Radius.circular(70),
                ),
                color: Colors.yellow.shade900,
              ),
              alignment: Alignment.center,
            ),
            Container(
              width: 60,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.elliptical(600, 400),
                  bottomRight: Radius.elliptical(600, 400),
                ),
                color: Colors.purple.shade900,
              ),
              alignment: Alignment.center,
            ),
            Container(
              width: 90,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.green.shade900,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.purple,
                    blurRadius: 80,
                    offset: Offset(5, -5),
                  )
                ],
              ),
              alignment: Alignment.center,
            ),
            createContainer(78, 45, Colors.pink.shade700),
          ])),
          buildColumn(shuffleWidgets([
            InkWell(
              onDoubleTap: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("El espcio es un buen lugar para viajar")));
              },
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("../assets/space.png"),
                  ),
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    center: Alignment.centerRight,
                    radius: 0.8,
                    colors: [
                      Color.fromARGB(255, 44, 52, 165),
                      Color.fromARGB(255, 117, 33, 18)
                    ],
                  ),
                ),
                alignment: Alignment.centerRight,
              ),
            ),
            InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Cuidado muchachos")));
              },
              child: Container(
                width: 70,
                height: 70,
                color: Colors.orange.shade900,
                child: Icon(
                  Icons.sign_language_sharp,
                  color: Colors.orange.shade900,
                  size: 20,
                ),
                alignment: Alignment.topRight,
              ),
            ),
            InkWell(
              onTap: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text("Help ayuda")));
              },
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red.shade900,
                ),
                child: Icon(
                  Icons.help_sharp,
                  color: Color.fromARGB(255, 109, 167, 16),
                  size: 20,
                ),
                alignment: Alignment.topLeft,
              ),
            ),
            Container(
              width: 60,
              height: 80,
              color: Colors.blue.shade900,
              child: const Text(
                '¡Esto es una pruena de funcionamiento!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.0,
                  fontFamily: "Arial",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            createContainer(30, 80, Colors.green.shade700),
          ])),
        ],
      ),
    );
  }

  Widget buildColumn(List<Widget> containers) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: containers,
    );
  }

  Widget createContainer(double width, double height, Color color) {
    return Container(
      width: width,
      height: height,
      color: color,
      margin: const EdgeInsets.all(8.0),
    );
  }

  List<Widget> shuffleWidgets(List<Widget> widgets) {
    widgets.shuffle(Random());
    return widgets;
  }
}
