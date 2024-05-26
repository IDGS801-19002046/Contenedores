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
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Es es estegosaurio de la suerte")));
              },
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("../assets/estegosaurio.png"),
                  ),
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.green],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
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
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                gradient: SweepGradient(
                  colors: [
                    Colors.blue,
                    Colors.red,
                    Colors.yellow,
                    Colors.green
                  ],
                ),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Icon(Icons.flash_on, color: Colors.white),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Icon(Icons.home, color: Colors.red),
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
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.yellow,
                      blurRadius: 15,
                      offset: Offset(5, -5),
                    )
                  ],
                  shape: BoxShape.rectangle,
                  gradient: RadialGradient(
                    center: Alignment.centerRight,
                    radius: 0.8,
                    colors: [Colors.pink, Colors.deepPurple],
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
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 10,
                    offset: Offset(4, 4),
                  ),
                ],
              ),
              child: Center(
                child: Icon(Icons.favorite, color: Colors.white),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.yellow,
                shape: BoxShape.rectangle,
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: Center(
                child: Text('Ceci no estuvo aquí',
                    style: TextStyle(color: Colors.black)),
              ),
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
                width: 150,
                height: 150,
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
                    const SnackBar(content: Text("Te dije que no")));
              },
              child: Container(
                width: 100,
                height: 100,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [Colors.pink, Colors.deepPurple],
                    center: Alignment.center,
                    radius: 0.85,
                  ),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text('No le presiones',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            InkWell(
              onDoubleTap: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text("Brilla")));
              },
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.red],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Icon(Icons.star, color: Colors.white),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple, width: 3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text('Hola desde un lugar muy lejano',
                    style: TextStyle(color: Colors.purple)),
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
