import 'package:flutter/material.dart';

class Pantalla1 extends StatelessWidget {
  const Pantalla1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Pizzeria Fanny'),
        backgroundColor: const Color(0xffcb5824),
        actions: const [Icon(Icons.search), Icon(Icons.more_vert)],
        elevation: 8,
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              // <-- SEE HERE
              decoration: BoxDecoration(color: const Color(0xffcb5824)),
              accountName: Text(
                "Estefania Zavala",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              accountEmail: Text(
                "a.20308051280563@cbtis128.edu.mx",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/mujer.jpg"),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: const Text('Inicio'),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.family_restroom_rounded,
              ),
              title: const Text('Sobre Nosotros'),
              onTap: () {
                Navigator.pushNamed(context, '/segunda');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.local_pizza,
              ),
              title: const Text('Pizzas'),
              onTap: () {
                Navigator.pushNamed(context, '/tercera');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.cookie,
              ),
              title: const Text('Extras'),
              onTap: () {
                Navigator.pushNamed(context, '/cuarta');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.local_drink,
              ),
              title: const Text('Bebidas'),
              onTap: () {
                Navigator.pushNamed(context, '/cuarta2');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.format_line_spacing,
              ),
              title: const Text('Formularios'),
              onTap: () {
                Navigator.pushNamed(context, '/cuarta3');
              },
            ),
          ],
        ),
      ),
      body: Container(
          decoration: BoxDecoration(color: Color(0xfff9f1eb)),
          child: ListView(
            children: [
              miCardImage(),
              miCard(),
              miCard2(),
            ],
          )),
    );
  }
}

Card miCardImage() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
    margin: const EdgeInsets.all(15),
    shadowColor: Colors.red,
    elevation: 10,
    child: Column(
      children: <Widget>[
        const Image(
          image: NetworkImage(
              'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/img1.png'),
        ),
      ],
    ),
  );
}

Card miCard() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: const EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: <Widget>[
        const ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          subtitle: Text(
              'Gracias por preferirnos, estamos muy agradecidos. Somos la mejor pizzeria de Cd. Juarez'),
        ),
      ],
    ),
  );
}

Card miCard2() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: const EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: <Widget>[
        const ListTile(
          contentPadding: EdgeInsets.fromLTRB(60, 5, 25, 0),
          subtitle: Text('Contamos con todos tus antojos'),
        ),
      ],
    ),
  );
}
