

import 'package:firebase_database/firebase_database.dart';

class User1{
  String fullName;
  String email;
  String phone;
  String id;

  User1({
    this.email,
    this.fullName,
    this.phone,
    this.id,
  });

  User1.fromSnapshot(DataSnapshot snapshot){
    id = snapshot.key;
    phone = snapshot.value['phone'];
    email = snapshot.value['email'];
    fullName = snapshot.value['fullname'];
  }

}