import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';

abstract class BaseAuth {
  Future<String> signIn(String email, String password);

  Future<String> signUp(String email, String password);

  Future<FirebaseUser> getCurrentUser();

  Future<void> sendEmailVerification();

  Future<void> signOut();

  Future<bool> isEmailVerified();
}

class AuthHelper implements BaseAuth{
  
final FirebaseAuth _firebaseAuth=FirebaseAuth.instance;

  Future<String> signIn(String email, String password) async{
       
       //you have to methods to done so far 
      // => first one
     // FirebaseUser user= await  _firebaseAuth.signInWithEmailAndPassword(
    //   email: email, password:password);
   // return user.uid;
  // => second one
    AuthResult result=await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    FirebaseUser users=result.user;
    return users.uid;

  }

  Future<String> signUp(String email, String password)async {
    AuthResult result =await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    FirebaseUser user=result.user;
    return user.uid;
  }

  Future<void> signOut() async{
    return await _firebaseAuth.signOut();
  }


  Future<FirebaseUser> getCurrentUser() async{
    FirebaseUser user=await _firebaseAuth.currentUser();
    return user;
  }


Future<bool> isEmailVerified() async{

    FirebaseUser user=await _firebaseAuth.currentUser();
    return user.isEmailVerified;
  }



  Future<void> sendEmailVerification() async{
    FirebaseUser user=await _firebaseAuth.currentUser();
    user.sendEmailVerification();
  }
}
