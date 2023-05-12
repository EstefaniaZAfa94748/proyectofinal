import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Pizzas'),
            backgroundColor: const Color(0xffcb5824),
            elevation: 8,
            bottom: TabBar(
              indicatorColor: Colors.amberAccent,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), // Creates border
                  color: Color(0xffffffff)),
              tabs: [
                Tab(
                  icon: Image.network(
                      'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/icon.png'),
                ),
                Tab(
                  icon: Image.network(
                      'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/icon.png'),
                ),
                Tab(
                  icon: Image.network(
                      'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/icon.png'),
                ),
                Tab(
                  icon: Image.network(
                      'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/icon.png'),
                ),
              ],
            ),
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
          body: TabBarView(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(15),
                shadowColor: Colors.red,
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    const Image(
                      image: NetworkImage(
                          'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/pizza-de-peperoni.jpg'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'Pepperoni',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                    ),
                    const Text(
                      'La pizza pepperoni tiene su origen en América del Norte. '
                      'Se trata de una pizza con base de salsa de tomate, mozzarella '
                      'y pepperoni, un tipo de salami curado hecho a base de carne de'
                      'cerdo y de vaca mezclados y sazonados con pimentón. En esta '
                      'receta os cuento cómo hacer una pizza pepperoni deliciosa.'
                      'Esta pizza sencilla cuenta 80 pesitos.',
                      softWrap: true,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(15),
                shadowColor: Colors.red,
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    const Image(
                      image: NetworkImage(
                          'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/pizza-hawaiana.jpg'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Hawaiana',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                    ),
                    const Text(
                      'La pizza hawaiana a la leña, originaria de Canadá, ​​​​​​ es una pizza que '
                      'tradicionalmente contiene una base de queso fundido y tomate'
                      'que se aliña con jamón y piña. '
                      'Esta pizza sencilla es de 80 pesitos. ',
                      softWrap: true,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(15),
                shadowColor: Colors.red,
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    const Image(
                      image: NetworkImage(
                          'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/carne-picada.jpg'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Carne',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                    ),
                    const Text(
                      'Si eres fan de la carne, seguro que vas a disfrutar con esta'
                      'pizza de carne picada. Aquí encontrarás una versión muy sencilla'
                      'pero con un resultado que nos encanta. Si la preparas según nuestra '
                      'receta disfrutarás de un sabor carnívoro al máximo. La salsa de tomate'
                      'de esta pizza no está cocinada, lo que le da un toque fresco y delicioso.'
                      'En lo que respecta a los condimentos únicamente lleva orégano, sal y'
                      'pimienta para que, como ya hemos dicho antes, disfrutes sobre todo '
                      'de un rico sabor a carne.'
                      'Esta pizza cuesta 100 pesitos.',
                      softWrap: true,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(15),
                shadowColor: Colors.red,
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    const Image(
                      image: NetworkImage(
                          'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/pizza-boneless.jpg'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Boneless',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                    ),
                    const Text(
                      'Si eres fan de los boneless, seguro que vas a disfrutar con esta'
                      'pizza de boneless buffalo. Aquí encontrarás una versión muy sencilla'
                      'pero con un resultado que nos encanta. Si la preparas según nuestra '
                      'receta disfrutarás de un sabor al máximo.'
                      'En lo que respecta a los condimentos únicamente lleva orégano, sal y'
                      'pimienta para que, como ya hemos dicho antes, disfrutes sobre todo '
                      'de un rico sabor de los boneless. Esta pizza cuesta 120 pesitos.',
                      softWrap: true,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
