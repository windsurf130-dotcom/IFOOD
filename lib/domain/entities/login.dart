class LoginModel {
  int? _status;
  String? _message;
  bool? _error;
  Data? _data;

  LoginModel({
    int? status,
    String? message,
    bool? error,
    Data? data,
  }) {
    _status = status;
    _message = message;
    _error = error;
    _data = data;
  }

  LoginModel.fromJson(dynamic json) {
    _status = int.tryParse(json['status']?.toString() ?? "0");
    _message = json['message'];
    _error = json['error'];

    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  int? get status => _status;
  String? get message => _message;
  bool? get error => _error;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    map['error'] = _error;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }
}

class Data {
  int? _id;
  String? _firstName;
  String? _lastName;
  String? _email;
  String? _phone;
  String? _gender;

  int? _documentVerify;
  int? _verified;
  int? _status;

  int? _itemId;
  int? _itemTypeId;

  Data({
    int? id,
    String? firstName,
    String? lastName,
    String? email,
    String? phone,
    String? gender,
    int? documentVerify,
    int? verified,
    int? status,
    int? itemId,
    int? itemTypeId,
  }) {
    _id = id;
    _firstName = firstName;
    _lastName = lastName;
    _email = email;
    _phone = phone;
    _gender = gender;

    _documentVerify = documentVerify;
    _verified = verified;
    _status = status;

    _itemId = itemId;
    _itemTypeId = itemTypeId;
  }

  Data.fromJson(dynamic json) {
    _id = int.tryParse(json['id']?.toString() ?? "0");
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _email = json['email'];
    _phone = json['phone'];
    _gender = json['gender'];

    _documentVerify = int.tryParse(json['document_verify']?.toString() ?? "0");
    _verified = int.tryParse(json['verified']?.toString() ?? "0");
    _status = int.tryParse(json['status']?.toString() ?? "0");

    _itemId = int.tryParse(json['item_id']?.toString() ?? "0");
    _itemTypeId = int.tryParse(json['item_type_id']?.toString() ?? "0");
  }

  int? get id => _id;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get email => _email;
  String? get phone => _phone;
  String? get gender => _gender;

  int? get documentVerify => _documentVerify;
  int? get verified => _verified;
  int? get status => _status;

  int? get itemId => _itemId;
  int? get itemTypeId => _itemTypeId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['email'] = _email;
    map['phone'] = _phone;
    map['gender'] = _gender;

    map['document_verify'] = _documentVerify;
    map['verified'] = _verified;
    map['status'] = _status;

    map['item_id'] = _itemId;
    map['item_type_id'] = _itemTypeId;

    return map;
  }
}
