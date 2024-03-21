class UserEntity {
  Data? data;
  Support? support;

  UserEntity({this.data, this.support});

}

class Data {
  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  Data({this.id, this.email, this.firstName, this.lastName, this.avatar});

}

class Support {
  String? url;
  String? text;

  Support({this.url, this.text});

}
