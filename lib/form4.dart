import 'package:flutter/material.dart';

class Formulario4 extends StatelessWidget {
  const Formulario4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Formulario Ventas'),
          backgroundColor: const Color(0xffcb5824),
          elevation: 8,
        ),
        body: Container(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: const [
                Text(
                  "Ingresa los siguientes datos",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
                Image(
                  image: NetworkImage(
                      'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/ventas.jpg'),
                  width: 500,
                  height: 170,
                  fit: BoxFit.cover,
                ),
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Ingrese ID empleado",
                      labelText: "ID",
                      prefixIcon: Icon(
                        Icons.verified_user_outlined,
                        color: Color(0xff15078e),
                      )),
                ),
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Ingrese pizzas vendidas",
                      labelText: "Pizzas Vendidas",
                      prefixIcon: Icon(
                        Icons.local_pizza_outlined,
                        color: Color(0xff15078e),
                      )),
                ),
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Ingrese su ID",
                      labelText: "ID Cliente",
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xff15078e),
                      )),
                ),
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Ingrese su metodo de pago",
                      labelText: "Metodo de pago",
                      prefixIcon: Icon(
                        Icons.local_attraction,
                        color: Color(0xff15078e),
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Ingrese su cantidad",
                      labelText: "Cantidad",
                      prefixIcon: Icon(
                        Icons.family_restroom_rounded,
                        color: Color(0xff15078e),
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Su total a pagar",
                      labelText: "Total a pagar",
                      prefixIcon: Icon(
                        Icons.insert_invitation_outlined,
                        color: Color(0xff15078e),
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Ingrese su fecha de orden",
                      labelText: "Orden",
                      prefixIcon: Icon(
                        Icons.insert_invitation_outlined,
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
