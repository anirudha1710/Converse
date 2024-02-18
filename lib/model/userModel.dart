import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  String? id;
  String? name;
  String? email;
  String? profileImage;
  String? phonenumber;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.profileImage,
    this.phonenumber,
  });

  UserModel.fromJson(Map<String, dynamic> json){
    id = json["id"];
    id = json["name"];
    id = json["email"];
    id = json["profileImage"];
    id = json["phonenumber"];
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> _data = <String, dynamic> {};
    _data["id"] = id;
    _data["name"] = name;
    _data["email"] = email;
    _data["profileImage"] = profileImage;
    _data["phonenumber"] = phonenumber;
    return _data;
  }

}
