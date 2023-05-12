import 'package:flutter/material.dart';
// Uncomment lines 3 and 6 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const Pantalla2());
}

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Pizzeria Fanny',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Ciudad Juárez, Chihuahua',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          const Icon(
            Icons.star,
            color: Color(0xffcb5824),
          ),
          const Text('41'),
        ],
      ),
    );

    Color color = const Color(0xffcb5824);

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'Teléfono'),
        _buildButtonColumn(color, Icons.near_me, 'Ubicación'),
        _buildButtonColumn(color, Icons.share, 'Compartir'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'La mejor pizzeria de Cd Juárez, Chihuahua. '
        'Encontrarás los mejores pizzas a la leña excelente calidad, y  '
        'encantaras la gran variedad de comida a tu gusto que tenemos para ti. A un '
        'super precio. '
        'Nuestro proposito es hacer que vengas a disfrutar de una excelente '
        'comida, inita a tu familia o amigos.  '
        'Contamos con un excelente personal, quete haran sentir como en tu casa. '
        'TE ESPERAMOS.',
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );

    return MaterialApp(
      title: 'Pizzeria Fanny',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
        body: ListView(
          children: [
            Image.network(
              'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/logo4.jpg',
              width: 600,
              height: 360,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
