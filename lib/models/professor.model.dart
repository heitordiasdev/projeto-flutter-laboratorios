class Professor {
  String? perfil;
  String? nome;
  String? telefone;
  String? cargo;

  Professor({
    required this.perfil,
    required this.nome,
    required this.telefone,
    required this.cargo,
  });

  @override
  String toString() {
    String texto = "<Professor: nome=$nome>";
    return texto;
  }
}
