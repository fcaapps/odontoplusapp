import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:odontoplusapp/pages/api_response.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'usuario.dart';

import '../main.dart';

class UserModel extends Model {

  FirebaseAuth _auth = FirebaseAuth.instance;

  FirebaseUser firebaseUser;

  GoogleSignIn googleSignIn = GoogleSignIn();

  Map<String, dynamic> userData = Map();

  bool isLoading = false;

  bool isDentista = false;

  final GoogleSignIn _googleSignIn = GoogleSignIn();


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

  String firebaseUserUid;


  Future<ApiResponse> signInGoogle() async {
    try {
      // Login com o Google
      final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
      await googleUser.authentication;

      print("Google User: ${googleUser.email}");

      // Credenciais para o Firebase
      final AuthCredential credential = GoogleAuthProvider.getCredential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Login no Firebase
      AuthResult result = await _auth.signInWithCredential(credential);
      firebaseUser = result.user;
      print("Firebase Nome: ${firebaseUser.displayName}");
      print("Firebase Email: ${firebaseUser.email}");
      print("Firebase Foto: ${firebaseUser.photoUrl}");

      // Cria um usuario do app
      final user = Usuario(
        nome: firebaseUser.displayName,
        email: firebaseUser.email,
        telefone: firebaseUser.phoneNumber,
        dentista: false,
        urlFoto: firebaseUser.photoUrl,
      );
      // Salva no Firestore
      saveUser(firebaseUser);

      await _loadCurrentUser();
      notifyListeners();

      // Resposta genérica
      return ApiResponse.ok();
      notifyListeners();

    } catch (error) {
      print("Firebase error $error");
      return ApiResponse.error(msg: "Não foi possível fazer o login");
    }
  }

  void logoutGoogle() async {

    await _auth.signOut();
    await _googleSignIn.signOut();
  }

  // salva o usuario na collection de usuarios logados
  void saveUser(FirebaseUser fUser) async {
    if (fUser != null) {
      firebaseUserUid = fUser.uid;
      DocumentReference refUser =
      Firestore.instance.collection("usuarios").document(firebaseUserUid);
      refUser.setData({
        'nome': fUser.displayName,
        'email': fUser.email,
        'telefone': fUser.phoneNumber,
        'dentista': false,
        'urlFoto': fUser.photoUrl,
      });

    }
  }

  void signOut() async {
    await _auth.signOut();
    await _googleSignIn.signOut();

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