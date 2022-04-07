import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? uid, name, email, profileImg;

  
  var employee;

  Timestamp? createdAt;
  List? selectedList;

  UserModel(
      {this.uid,
      this.name,
      this.email,
      this.profileImg,
      this.createdAt,
      this.selectedList,
      this.employee});

  UserModel.fromMap(Map<String, dynamic>? map) {
    if (map == null) return;
    uid = map["uid"];
    employee = map["employee"];
    email = map["email"];
    name = map["name"];
    profileImg = map["imageUrl"];
   
    createdAt = map["createdAt"];
    selectedList = map["selectedList"];
  }

  Map<String, dynamic> toMap() {
    return {
      "uid": uid,
      "employee": employee,
      "name": name,
      "email": email,
      "imageUrl": profileImg,
      "createdAt": createdAt,
      "selectedList": selectedList ?? [],
    };
  }

  bool isEqual(UserModel? model) {
    return name == model?.name;
  }
}
