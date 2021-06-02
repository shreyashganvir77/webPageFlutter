import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final FirebaseAuth auth;
  AuthService({this.auth});

  Stream<User> get authStateChange => auth.authStateChanges();

  Future<UserCredential> signInWithGoogle() async {
    try {
      //await auth.signOut();
      final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();
      //await googleUser.clearAuthCache();
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final GoogleAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      return await auth.signInWithCredential(credential);
    } catch (e) {
      return e.message;
    }
  }

  Future<String> signIn(String email, String password) async {
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = userCredential.user;
      return "Signed In Successfully";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String> signUp(String email, String password) async {
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User user = userCredential.user;
      return "Signed In Successfully";
    } on FirebaseAuthException catch (e) {
      if (e.code == "weak-password") {
        return "Password is too weak.";
      } else if (e.code == "email-already-in-use") {
        return "The account already exists try Singing In.";
      }
      return e.message;
    } catch (e) {
      return e;
    }
  }

  Future<String> signOut() async {
    //final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();
    //await GoogleSignIn().disconnect();
    await auth.signOut();
    return "Signied Out Successfully";
  }
}
