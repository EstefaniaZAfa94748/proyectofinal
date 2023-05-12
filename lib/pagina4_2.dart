import 'package:flutter/material.dart';

class Pantalla6 extends StatelessWidget {
  const Pantalla6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Bebidas'),
        backgroundColor: const Color(0xffcb5824),
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
      body: GridView(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200, crossAxisSpacing: 10, mainAxisSpacing: 10),
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            shadowColor: Colors.red,
            elevation: 10,
            child: Column(
              children: <Widget>[
                const Image(
                  image: NetworkImage(
                      'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/pepsi.png'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Pepsi',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    foregroundColor: Color(0xffec1818),
                    backgroundColor: Color(0xffe3e0e0), // Background Color
                  ),
                  child: const Text(
                    'Comprar',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            shadowColor: Colors.red,
            elevation: 10,
            child: Column(
              children: <Widget>[
                const Image(
                  image: NetworkImage(
                      'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/sprite.png'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Sprite',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    foregroundColor: Color(0xffec1818),
                    backgroundColor: Color(0xffe3e0e0), // Background Color
                  ),
                  child: const Text(
                    'Comprar',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            shadowColor: Colors.red,
            elevation: 10,
            child: Column(
              children: <Widget>[
                const Image(
                  image: NetworkImage(
                      'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/fanta.png'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Fanta',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    foregroundColor: Color(0xffec1818),
                    backgroundColor: Color(0xffe3e0e0), // Background Color
                  ),
                  child: const Text(
                    'Comprar',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            shadowColor: Colors.red,
            elevation: 10,
            child: Column(
              children: <Widget>[
                const Image(
                  image: NetworkImage(
                      'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/cocacola.png'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Coca-Cola',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    foregroundColor: Color(0xffec1818),
                    backgroundColor: Color(0xffe3e0e0), // Background Color
                  ),
                  child: const Text(
                    'Comprar',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            shadowColor: Colors.red,
            elevation: 10,
            child: Column(
              children: <Widget>[
                const Image(
                  image: NetworkImage(
                      'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/agua.jpg'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Agua',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    foregroundColor: Color(0xffec1818),
                    backgroundColor: Color(0xffe3e0e0), // Background Color
                  ),
                  child: const Text(
                    'Comprar',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            shadowColor: Colors.red,
            elevation: 10,
            child: Column(
              children: <Widget>[
                const Image(
                  image: NetworkImage(
                      'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/7up.png'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    '7up',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    foregroundColor: Color(0xffec1818),
                    backgroundColor: Color(0xffe3e0e0), // Background Color
                  ),
                  child: const Text(
                    'Comprar',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            shadowColor: Colors.red,
            elevation: 10,
            child: Column(
              children: <Widget>[
                const Image(
                  image: NetworkImage(
                      'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/jarritos2.jpg'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Jarrito',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    foregroundColor: Color(0xffec1818),
                    backgroundColor: Color(0xffe3e0e0), // Background Color
                  ),
                  child: const Text(
                    'Comprar',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            shadowColor: Colors.red,
            elevation: 10,
            child: Column(
              children: <Widget>[
                const Image(
                  image: NetworkImage(
                      'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/mirinda.jpg'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Mirinda',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    foregroundColor: Color(0xffec1818),
                    backgroundColor: Color(0xffe3e0e0), // Background Color
                  ),
                  child: const Text(
                    'Comprar',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
