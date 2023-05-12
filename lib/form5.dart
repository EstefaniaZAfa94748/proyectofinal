import 'package:flutter/material.dart';

class Formulario5 extends StatelessWidget {
  const Formulario5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Formulario Empleados'),
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
                      'https://raw.githubusercontent.com/EstefaniaZAfa94748/pizzeria_IMG/main/empleados.jpg'),
                  width: 500,
                  height: 170,
                  fit: BoxFit.cover,
                ),
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Ingrese su ID",
                      labelText: "ID",
                      prefixIcon: Icon(
                        Icons.verified_user_outlined,
                        color: Color(0xff15078e),
                      )),
                ),
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Ingrese su nombre",
                      labelText: "Nombre",
                      prefixIcon: Icon(
                        Icons.person_add,
                        color: Color(0xff15078e),
                      )),
                ),
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Ingrese su apellido paterno",
                      labelText: "Apellido Paterno",
                      prefixIcon: Icon(
                        Icons.person_add,
                        color: Color(0xff15078e),
                      )),
                ),
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Ingrese su apellido materno",
                      labelText: "Apellido Materno",
                      prefixIcon: Icon(
                        Icons.person_add,
                        color: Color(0xff15078e),
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Ingrese su puesto",
                      labelText: "Puesto",
                      prefixIcon: Icon(
                        Icons.store,
                        color: Color(0xff15078e),
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Ingrese su correo",
                      labelText: "Correo",
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color(0xff15078e),
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Ingrese su fecha de ingleso",
                      labelText: "Fecha de Ingreso",
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
