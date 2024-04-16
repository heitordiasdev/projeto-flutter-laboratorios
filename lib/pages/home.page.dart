// essa pagina é a lista de labs

import 'package:app_lab/models/laboratorio.model.dart';
import 'package:app_lab/models/professor.model.dart';
import 'package:app_lab/pages/info_lab.page.dart';
import 'package:app_lab/shared/tema.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;

    List<Laboratorio> laboratorios = [
      Laboratorio(
        identificacao: "Lab 1",
        professor: Professor(
          perfil: "perfil",
          nome: "nome",
          telefone: "telefone",
          cargo: "cargo",
        ),
        estaAberto: true,
      ),
      Laboratorio(
        identificacao: "Lab 2",
        professor: Professor(
          perfil: "perfil",
          nome: "nome",
          telefone: "telefone",
          cargo: "cargo",
        ),
        estaAberto: false,
      ),
    ];

    return Scaffold(
      //
      appBar: AppBar(
        title: const Text(
          "Lista de Laboratorios",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Tema().corPrimeira,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
          ),
        ],
      ),
      //
      body: Center(
        child: SizedBox(
          width: largura - 32,
          height: altura,
          child: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: ListView.separated(
              itemCount: laboratorios.length,
              separatorBuilder: (_, __) => const SizedBox(
                height: 24,
              ),
              itemBuilder: (_, index) => Container(
                height: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xFFF6F6F6),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                InfoLabPage(laboratorio: laboratorios[index])));
                  },
                  leading: Icon(
                    Icons.computer,
                    color: Tema().corPrimeira,
                    size: 32,
                  ),
                  title: Text(
                    laboratorios[index].identificacao!,
                    style: const TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  trailing: Icon(
                    laboratorios[index].estaAberto!
                        ? Icons.lock_open
                        : Icons.lock,
                    size: 32,
                    color: laboratorios[index].estaAberto!
                        ? Colors.green
                        : Colors.red,
                  ),
                ),
              ),
              //
            ),
          ),
        ),
      ),
    );
  }
}
