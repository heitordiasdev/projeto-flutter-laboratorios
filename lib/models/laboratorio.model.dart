import 'package:app_lab/models/professor.model.dart';

class Laboratorio {
  String? identificacao;
  Professor? professor;
  bool? estaAberto;

  Laboratorio({
    required this.identificacao,
    required this.professor,
    required this.estaAberto,
  });

  @override
  String toString() {
    String texto = "<Laboratorio: idt=$identificacao, prof=$professor, status=$estaAberto>";
    return texto;
  }
}
