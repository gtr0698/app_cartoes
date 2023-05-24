class PerfilEntity{
  int? perfilID = 0;
  String? nome;
  String? email;
  String? senha;

  PerfilEntity();
  PerfilEntity.comDados(this.perfilID, this.nome, this.email, this.senha);

  @override
  String toString() {
    return '$perfilID - $nome - $email';
  }
}