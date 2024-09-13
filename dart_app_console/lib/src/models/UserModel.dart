class UserModel {
  //    ATRIBUTOS.    //
  String _name, _document, _password;
  bool _status = true;
  //   /ATRIBUTOS.    //

  //    CONSTRUCTOR.    //
  UserModel(this._name, this._document, this._password);
  //   /CONSTRUCTOR.    //

  //    FUNÇÕES.    //
  String get name => this._name;
  String get document => this._document;
  String get password => this._password;
  bool get status => this._status;

  @override
  String toString() {
    return 'Nome: ${this._name}\nDocumento: ${this._document}\nSenha: ${this._password}\n${this._status}';
  }
  //   /FUNÇÕES.    //
}
