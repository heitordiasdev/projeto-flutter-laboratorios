import 'package:app_lab/models/laboratorio.model.dart';
import 'package:flutter/material.dart';

class InfoLabPage extends StatelessWidget {

  Laboratorio? laboratorio;

  InfoLabPage({super.key, required this.laboratorio});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(laboratorio!.identificacao!),
      ),
    );
  }
}