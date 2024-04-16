import 'package:app_lab/pages/home.page.dart';
import 'package:app_lab/shared/tema.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();

  bool ocultarSenha = true;

  IconData exibirIcon = Icons.visibility;
  IconData ocultar = Icons.visibility_off;

  void exibir() {
    setState(() {
      ocultarSenha = !ocultarSenha;
    });
  }

  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // imagem
              Image.asset(
                Tema().logoHorizontal,
                width: largura - 32,
              ),
              //
              const SizedBox(
                height: 48,
              ),
              // campo de texto para email
              SizedBox(
                width: largura - 32,
                height: 48,
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.alternate_email),
                    label: const Text("E-mail"),
                    hintText: "Digite seu e-mail",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              //
              const SizedBox(
                height: 24,
              ),
              //
              // campo de texto para senha
              SizedBox(
                width: largura - 32,
                height: 48,
                child: TextField(
                  controller: _senhaController,
                  obscureText: ocultarSenha,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.password),
                    suffixIcon: IconButton(
                      icon: Icon(ocultarSenha ? exibirIcon : ocultar),
                      onPressed: exibir,
                    ),
                    label: const Text("Senha"),
                    hintText: "Digite sua senha",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              //
              const SizedBox(
                height: 24,
              ),
              //
              // botao
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text(
                  "Entrar",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(
                    Size(largura - 32, 48),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    Tema().corPrimeira,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
