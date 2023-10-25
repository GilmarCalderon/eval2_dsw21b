import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService{
  final FirebaseAuth _auth = FirebaseAuth.instance;

//método para registrarme
  Future <User?> signUpWithEmailAndPassword(String email, String password) async{
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
        return credential.user;
    }catch(e){
      print("Some error ocured");
    }
    return null;
  }

  Future <User?> signInWithEmailAndPassword (String email, String password) async{
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
        return credential.user;
    }catch(e){
      print("Some error ocured");
    }
    return null;
  }

}