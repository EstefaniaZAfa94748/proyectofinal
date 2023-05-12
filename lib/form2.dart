import 'package:flutter/material.dart';

class Formulario2 extends StatelessWidget {
  const Formulario2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Formulario Pizzas'),
          backgroundColor: const Color(0xffcb5824),
          elevation: 8,
        ),
        body: Container(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: const [
                Text(
                  "Ingresa los siguientes datos",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
                Image(
                  image: NetworkImage(
                      'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/pizzas.jpg'),
                  width: 500,
                  height: 170,
                  fit: BoxFit.cover,
                ),
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Ingrese ID ",
                      labelText: "ID",
                      prefixIcon: Icon(
                        Icons.verified_user_outlined,
                        color: Color(0xff15078e),
                      )),
                ),
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Ingredientes",
                      labelText: "Ingredientes",
                      prefixIcon: Icon(
                        Icons.soap_outlined,
                        color: Color(0xff15078e),
                      )),
                ),
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Ingrese tamaño",
                      labelText: "Tamaño",
                      prefixIcon: Icon(
                        Icons.sanitizer,
                        color: Color(0xff15078e),
                      )),
                ),
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Ingrese forma",
                      labelText: "Forma",
                      prefixIcon: Icon(
                        Icons.format_align_center,
                        color: Color(0xff15078e),
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Precio",
                      labelText: "Precio",
                      prefixIcon: Icon(
                        Icons.money,
                        color: Color(0xff15078e),
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Ingrese ID extras",
                      labelText: "Extras",
                      prefixIcon: Icon(
                        Icons.verified_user_outlined,
                        color: Color(0xff15078e),
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Ingrese orilla",
                      labelText: "Orilla",
                      prefixIcon: Icon(
                        Icons.food_bank,
                        color: Color(0xff15078e),
                      )),
                ),
                DialogExample(),
              ],
            )));
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('¡Formulario Enviado!'),
          content: const Text('Tú información fue enviada correctamente.'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Aceptar'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      style: TextButton.styleFrom(
        fixedSize: const Size(50, 50),
        backgroundColor: Color(0xffcb5824), // Background Color
      ),
      child: const Text('Enviar',
          style: TextStyle(color: Color(0xffffffff), fontSize: 20)),
    );
  }
}
