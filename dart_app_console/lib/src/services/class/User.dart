class User {
  //    ATRIBUTOS.    //
  String _name, _document, _password;
  bool _status = true;
  //   /ATRIBUTOS.    //

  //    CONSTRUTOR.   //
  User(this._name, this._document, this._password);
  //   /CONSTRUTOR.   //

  //    GETTERS.    //
  String get name => _name;
  String get document => _document;
  String get password => _password;
  bool get status => _status;
  //   /GETTERS.    //

  bool createUser(User user) {
    return true;
  }

  @override
  String toString() {
    return 'Nome: $_name - Documento: $_document - Senha: $_password - Status: $_status';
  }
}
