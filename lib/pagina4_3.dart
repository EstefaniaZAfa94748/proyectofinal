import 'package:flutter/material.dart';

class Pantalla7 extends StatelessWidget {
  const Pantalla7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Pizzeria Fanny'),
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
      body: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: ListView(
            children: [
              const Text(
                "Formularios",
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 2.5,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    child: const Text(
                      'CLIENTE',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(50, 50),
                      backgroundColor: const Color(0xffcb5824),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/form1');
                    },
                  ),
                  ElevatedButton(
                    child: const Text(
                      'PIZZAS',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(50, 50),
                      backgroundColor: const Color(0xffcb5824),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/form2');
                    },
                  ),
                  ElevatedButton(
                    child: const Text(
                      'SUCURSALES',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(50, 50),
                      backgroundColor: const Color(0xffcb5824),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/form3');
                    },
                  ),
                  ElevatedButton(
                    child: const Text(
                      'VENTAS',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(50, 50),
                      backgroundColor: const Color(0xffcb5824),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/form4');
                    },
                  ),
                  ElevatedButton(
                    child: const Text(
                      'EMPLEADOS',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(50, 50),
                      backgroundColor: const Color(0xffcb5824),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/form5');
                    },
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
