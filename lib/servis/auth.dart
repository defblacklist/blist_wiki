import 'package:blist_wiki/servis/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods{

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  User? cUser = FirebaseAuth.instance.currentUser;

  AppUse? _userFromFirebaseUser(User user){
    return AppUse(userId: user.uid);
  }

  // Email ve Sifre kullanarak kullanıcı girişi
  Future emailveSifreGiris(String email, String sifre) async{
    try{
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: sifre);
      User? firebaseUser = result.user;
      return _userFromFirebaseUser(firebaseUser!);
    }catch(e){
      // ignore: avoid_print
      print(e.toString());
    }
  }

  // Cıkış yap
  Future cikisYap() async{
    try{
      return await _auth.signOut();
    }catch(e){
      // ignore: avoid_print
      print(e.toString());
    }
  }


}