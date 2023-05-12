import 'package:flutter/material.dart';

class Formulario1 extends StatelessWidget {
  const Formulario1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Formulario Clientes'),
          backgroundColor: const Color(0xffcb5824),
          elevation: 8,
        ),
        body: Container(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: const [
                Text(
                  "Ingresa los siguientes datos",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
                Image(
                  image: NetworkImage(
                      'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/clientes.jpg'),
                  width: 500,
                  height: 170,
                  fit: BoxFit.cover,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Ingrese su ID",
                      labelText: "ID",
                      prefixIcon: Icon(
                        Icons.verified_user_outlined,
                        color: Color(0xff15078e),
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Ingrese su nombre",
                      labelText: "Nombre",
                      prefixIcon: Icon(
                        Icons.account_box_rounded,
                        color: Color(0xff15078e),
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Ingrese su apellido",
                      labelText: "Apellido",
                      prefixIcon: Icon(
                        Icons.account_box_rounded,
                        color: Color(0xff15078e),
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Ingrese su telefono",
                      labelText: "Telefono",
                      prefixIcon: Icon(
                        Icons.call,
                        color: Color(0xff15078e),
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Ingrese su domicilio",
                      labelText: "Domicilio",
                      prefixIcon: Icon(
                        Icons.add_location_rounded,
                        color: Color(0xff15078e),
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Ingrese su correo",
                      labelText: "Correo Electronico",
                      prefixIcon: Icon(
                        Icons.email,
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
