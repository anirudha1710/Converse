import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController{
  final auth = FirebaseAuth.instance;
  RxBool isLoading = false.obs;

  Future<void> login(String email, String password) async{
    isLoading.value = true;
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password,);
      Get.offAllNamed("/HomePage");
    } on FirebaseAuthException catch(e){
      if(e.code == 'user-not-found'){
        print('no user found for that email.');
      } else if(e.code == 'wrong-password'){
        print('Wrong password provided for that user.');
      }
    } catch(e){
      print(e);
    }
    isLoading.value = false;
  }

  Future<void> createUser(String email, String password) async{
    isLoading.value = true;
    try{
     await auth.createUserWithEmailAndPassword(email: (email), password: password);
    }on FirebaseAuthException catch(e){
      if(e.code == 'weak-password'){
        print('The Password provided is too weak.');
      } else if(e.code == 'email-already-in-use'){
        print('The account already exists for that email.');
      }
    }

    catch(e){
      print(e);
    }
    isLoading.value = false;
  }
}