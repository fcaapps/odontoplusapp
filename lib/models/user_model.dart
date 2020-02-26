import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:scoped_model/scoped_model.dart';

import '../main.dart';

class UserModel extends Model {

  FirebaseAuth _auth = FirebaseAuth.instance;

  FirebaseUser firebaseUser;

  Map<String, dynamic> userData = Map();

  bool isLoading = false;

  bool isDentista = false;


  @override
  void addListener(VoidCallback listener) {
    super.addListener(listener);
    _loadCurrentUser();
  }

  void signUp({@required Map<String, dynamic> userData, @required String pass, @required VoidCallback onSuccess, @required VoidCallback onFail}) {
    isLoading = true;
    notifyListeners();
    _auth.createUserWithEmailAndPassword(
      email: userData["email"],
      password: pass
    ).then((result) async {
      firebaseUser = result.user;
      await _saveUserData(userData);
      onSuccess();
      isLoading = false;
      notifyListeners();
    }).catchError((e){
      onFail();
      isLoading = false;
      notifyListeners();
    });
  }


  void recoverPass(String email) {
    _auth.sendPasswordResetEmail(email: email);
  }

  bool isLoggedIn() {
    return firebaseUser != null;
  }

  void signIn({@required String email, @required String pass,
    @required VoidCallback onSuccess, @required VoidCallback onFail}) async {

    isLoading = true;
    notifyListeners();

    _auth.signInWithEmailAndPassword(email: email, password: pass).then(
            (result) async {
          firebaseUser = result.user;

          await _loadCurrentUser();

          print(userData["dentista"]);
          isDentista = userData["dentista"];
          notifyListeners();

          isDentistaG = isDentista;

          onSuccess();
          isLoading = false;
          notifyListeners();

        }).catchError((e){
      onFail();
      isLoading = false;
      notifyListeners();
    });

  }

  void signOut() async {
    await _auth.signOut();

    userData = Map();
    firebaseUser = null;

    notifyListeners();

  }

  Future<Null> _saveUserData(Map<String, dynamic> userData) async {
    this.userData = userData;
    print("userData:" + userData.toString());
    await Firestore.instance.collection("usuarios").document(firebaseUser.uid).setData(userData);
  }

  Future<Null> _loadCurrentUser() async {
    if(firebaseUser == null)
      firebaseUser = await _auth.currentUser();
    if(firebaseUser != null){
      if(userData["nome"] == null){
        DocumentSnapshot docUser =
        await Firestore.instance.collection("usuarios").document(firebaseUser.uid).get();
        userData = docUser.data;

      }
    }
    notifyListeners();
  }
}