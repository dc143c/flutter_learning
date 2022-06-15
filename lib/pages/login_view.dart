import 'package:flutter/material.dart';
import 'package:frete_ja/pages/faq_unregistered.dart';
import 'package:frete_ja/pages/pre_register.dart';

class LoginView extends StatefulWidget {
const LoginView({ super.key });

@override
State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
late final TextEditingController _email;
late final TextEditingController _password;

@override
void initState() {
_email = TextEditingController();
_password = TextEditingController();
super.initState();
}

@override
void dispose() {
_email.dispose();
_password.dispose();
super.dispose();
}

@override
Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(),
  body: Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.002),
            child:
            TextField(
              controller: _email,
              decoration: const InputDecoration(
                  hintText: 'E-mail',
                  border: OutlineInputBorder()
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.002),
            child:
            TextField(
              controller: _email,
              decoration: const InputDecoration(
                  hintText: 'Senha',
                  border: OutlineInputBorder()
              ),
            ),
          ),
        ),
        TextButton(
          onPressed: () async {
            final email = _email.text;
            final password = _password.text;
          },
          child: const Text('Login'),
        ),
        Text("Não tem uma conta ainda?"),
        TextButton(
          onPressed: () async {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const preRegister()));
          },
          child: const Text('Registre-se'),
        ),
      ],
    ),
  ),
    floatingActionButton: FloatingActionButton(
        tooltip: "Ajuda",
        onPressed: () => {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => const FaqUnregistered()))
        },
        child: const Icon(Icons.question_mark)
    ),
);
}
}
