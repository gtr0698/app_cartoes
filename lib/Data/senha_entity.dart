import 'dart:html';

class SenhaEntity{
  int? senhaID;
  String? descricao;
  late String email;
  late String senha;

  SenhaEntity();
  SenhaEntity.comDados(this.senhaID, this.descricao, this.email, this.senha);

  @override
  String toString() {
    return '$senhaID - $descricao - $email';
  }
}