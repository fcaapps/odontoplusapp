import 'dart:convert' as convert;

class Usuario {
  String login;
  String nome;
  String email;
  String urlFoto;
  String token;
  String telefone;
  List<String> roles;

  Usuario(
      {this.login,
        this.nome,
        this.email,
        this.urlFoto,
        this.token,
        this.telefone,
        this.roles});

  Usuario.fromJson(Map<String, dynamic> json) {
    login = json['login'];
    nome = json['nome'];
    email = json['email'];
    urlFoto = json['urlFoto'];
    token = json['token'];
    telefone = json['telefone'];
    roles = json['roles'] != null ? json['roles'].cast<String>() : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['login'] = this.login;
    data['nome'] = this.nome;
    data['email'] = this.email;
    data['urlFoto'] = this.urlFoto;
    data['token'] = this.token;
    data['telefone'] = this.telefone;
    data['roles'] = this.roles;
    return data;
  }

}