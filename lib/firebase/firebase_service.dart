import 'package:odontoplusapp/pages/api_response.dart';
import 'package:odontoplusapp/models/usuario.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

String firebaseUserUid;

class FirebaseService {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseUser firebaseUser;

  Future<ApiResponse> login(String email, String senha) async {
    try {
      // Login no Firebase
      AuthResult result =
      await _auth.signInWithEmailAndPassword(email: email, password: senha);
      final FirebaseUser fUser = result.user;
      print("Firebase Nome: ${fUser.displayName}");
      print("Firebase Email: ${fUser.email}");
      print("Firebase Foto: ${fUser.photoUrl}");

      // Cria um usuario do app
      final user = Usuario(
        nome: firebaseUser.displayName,
        email: firebaseUser.email,
        telefone: firebaseUser.phoneNumber,
        dentista: false,
        urlFoto: firebaseUser.photoUrl,
      );
      // Salva no Firestore
      saveUser(fUser);

      // Resposta genérica
      return ApiResponse.ok();
    } catch (error) {
      print("Firebase error $error");
      return ApiResponse.error(msg: "Não foi possível fazer o login");
    }
  }

  Future<ApiResponse> loginGoogle() async {
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
      final FirebaseUser fUser = result.user;
      print("Firebase Nome: ${fUser.displayName}");
      print("Firebase Email: ${fUser.email}");
      print("Firebase Foto: ${fUser.photoUrl}");

      // Cria um usuario do app
      final user = Usuario(
        nome: fUser.displayName,
        login: fUser.email,
        email: fUser.email,
        urlFoto: fUser.photoUrl,
      );
      // Salva no Firestore
      saveUser(fUser);

      //carregausuario
      _loadCurrentUser();

      // Resposta genérica
      return ApiResponse.ok();
    } catch (error) {
      print("Firebase error $error");
      return ApiResponse.error(msg: "Não foi possível fazer o login");
    }
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

  Map<String, dynamic> userData = Map();

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
  }

  Future<ApiResponse> cadastrar(String nome, String email, String senha) async {
    try {
      // Usuario do Firebase
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: senha);
      final FirebaseUser fUser = result.user;
      print("Firebase Nome: ${fUser.displayName}");
      print("Firebase Email: ${fUser.email}");
      print("Firebase Foto: ${fUser.photoUrl}");

      // Dados para atualizar o usuário
      final userUpdateInfo = UserUpdateInfo();
      userUpdateInfo.displayName = nome;
      userUpdateInfo.photoUrl =
      "https://s3-sa-east-1.amazonaws.com/livetouch-temp/livrows/foto.png";

      fUser.updateProfile(userUpdateInfo);

      // Resposta genérica
      return ApiResponse.ok(msg: "Usuário criado com sucesso");
    } catch (error) {
      print(error);

      if (error is PlatformException) {
        print("Error Code ${error.code}");

        return ApiResponse.error(
            msg: "Erro ao criar um usuário.\n\n${error.message}");
      }

      return ApiResponse.error(msg: "Não foi possível criar um usuário.");
    }
  }

  Future<void> logout() async {

    await _auth.signOut();
    await _googleSignIn.signOut();
  }
}