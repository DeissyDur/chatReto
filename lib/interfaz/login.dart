import 'package:chat/proceso/autenticacion.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

final email = TextEditingController();
final password = TextEditingController();

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login / Registro"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                  image: NetworkImage(
                      "https://previews.123rf.com/images/alexwhite/alexwhite1505/alexwhite150506804/40217194-foro-violeta-icono-chat-s%C3%ADmbolo-burbuja-signo.jpg")),
            ),
            TextField(
              controller: email,
              decoration: InputDecoration(
                  hintText: "Email", suffixIcon: Icon(Icons.email)),
            ),
            TextField(
              obscureText: true,
              controller: password,
              decoration: InputDecoration(
                  hintText: "Password", suffixIcon: Icon(Icons.key)),
            ),
            Divider(),
            ElevatedButton.icon(
                onPressed: () {
                  Autenticacion().IniciarSesion(
                      email: email.text, password: password.text);
                },
                icon: Icon(Icons.login),
                label: Text("Iniciar sesión")),
            Divider(),
            ElevatedButton.icon(
                onPressed: () {
                  Autenticacion()
                      .CrearUsuario(email: email.text, password: password.text);
                },
                icon: Icon(Icons.person_add),
                label: Text("Registrar Usuario"))
          ],
        ),
      ),
    );
  }
}
