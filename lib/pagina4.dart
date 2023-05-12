import 'package:flutter/material.dart';

class Pantalla4 extends StatelessWidget {
  const Pantalla4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Extras'),
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
                      'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/panesajo.png'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Pan de Ajo',
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
                      'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/canelazos.jpg'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Canelazos',
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
                      'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/panes.png'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Panes Queso',
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
                      'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/hamburguesa.jpg'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Hamburguesas',
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
                      'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/boneless.jpg'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Boneless',
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
                      'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/papas.jpeg'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Papas Fritas',
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
                      'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/pure.jpg'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Pure Tomate',
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
                      'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/ranch.jpg'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Ranch',
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
                      'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/buffalo%20ranch.jpg'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Buffalo Ranch',
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
                      'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/pasta%20limon.jpg'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Pasta Limon',
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
                      'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/jalape%C3%B1o.jpg'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Jalapeño',
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
                      'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/pasta.jpg'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Pasta',
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
                      'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/ensalada.jpg'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Ensalada',
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
                      'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/caprese.jpg'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Caprese',
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
