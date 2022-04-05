import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? uid, name, email, profileImg;
  
  String? text;
 
  String? address;
  Timestamp? createdAt;
  List? selectedList;

  UserModel(
      {this.uid,
      this.name,
      this.email,
      this.profileImg,
      this.createdAt,
      this.text,
      
      this.selectedList


      });

  UserModel.fromMap(Map<String, dynamic>? map) {
    if (map == null) return;
    uid = map["uid"];
    email = map["email"];
    name = map["name"];
    profileImg = map["imageUrl"];
    text = map["text"];
    createdAt = map["createdAt"];
    selectedList = map["selectedList"];
   
   
   
  }

  Map<String, dynamic> toMap() {
    return {
      "uid": uid,
      "name": name,
      "email": email,
      "text": text,
      "imageUrl": profileImg,
      "createdAt": createdAt,
      "Address": address,
      "selectedList": selectedList ?? [],
    };
  }

  bool isEqual(UserModel? model) {
    return name == model?.name;
  }
}

