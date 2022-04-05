import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ethnicity/constants/constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Model/user_models.dart';
import '../creat_profile_creens/create_profile_main.dart';
import '../utils/dialouge.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  BuildContext context;
  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;
  static UserModel? currentUser;

  AuthService({required this.context});

  Future<bool> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final User? user = (await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      ))
          .user;
      print(email);
      print(password);
      user?.sendEmailVerification();
      currentUser = UserModel(
          uid: user?.uid, name: "", email: email, createdAt: Timestamp.now());
      await _fireStore.doc("users/${user?.uid}").set(currentUser!.toMap());
      return true;
      // await _fireStore
      //     .collection("users")
      //     .doc("123")
      //     .set({...localUser.toMap()});
      // return true;

    } on FirebaseAuthException catch (error) {
      // print("error code " + error.code);
      switch (error.code) {
        case ("network-request-failed"):
          break;
        case ('wrong-email'):
          {
            AppDialog().showOSDialog(
              context,
              "Error",
              invalidEmail,
              okText,
              () {},
            );
          }
          break;
        case ('weak-password'):
          {
            AppDialog().showOSDialog(
              context,
              "Error",
              weakPassword,
              okText,
              () {},
            );
          }
          break;
        case ('email-already-in-use'):
          {
            AppDialog().showOSDialog(
              context,
              "ethnigen",
              alreadyExistAccount,
              okText,
              () {},
            );
          }
          break;
      }
      return false;
    }
  }

  Future<dynamic> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    print(password);
    print(email);

    try {
      final UserCredential userCreditional =
          await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (userCreditional.user!.emailVerified == true) {
        await _checkUserExists();
        return;
      }
      AppDialog().showOSDialog(context, "Error",
          "Your email is not verified. Please check your inbox.", okText, () {},
          secondButtonText: "Resend", secondCallback: () {
        userCreditional.user?.sendEmailVerification();
      });
    } on FirebaseAuthException catch (error) {
      switch (error.code) {
        case ("network-request-failed"):
          {
            AppDialog().showOSDialog(
              context,
              "Error",
              disconnectInternetText,
              okText,
              () {},
            );
          }
          break;
        case ('wrong-email'):
          {
            AppDialog().showOSDialog(
              context,
              "Error",
              invalidEmail,
              okText,
              () {},
            );
          }
          break;
        case ('wrong-password'):
          {
            AppDialog().showOSDialog(
              context,
              "Error",
              wrongPassword,
              okText,
              () {},
            );
          }
          break;
        case ('user-not-found'):
          {
            AppDialog().showOSDialog(
              context,
              "Error",
              userNotFount,
              okText,
              () {},
            );
          }
          break;
      }
      print("error code " + error.code);
      try {
        await _auth.signOut();
      } catch (e) {
        print(e);
      }
      return;
    }
  }

  //****************** Login with Google ******************

  // Future<void> loginWithGoogle() async {
  //   try {
  //     final GoogleSignInAccount? googleSignInAccount =
  //         await GoogleSignIn().signIn();

  //     final GoogleSignInAuthentication? googleSignInAuthentication =
  //         await googleSignInAccount?.authentication;
  //     if (googleSignInAuthentication?.accessToken == null) {
  //       AppDialog().showOSDialog(
  //           context, "Error", "User cancel sign up procedure", "OK", () {});
  //       return;
  //     }
  //     final AuthCredential credential = GoogleAuthProvider.credential(
  //       accessToken: googleSignInAuthentication?.accessToken,
  //       idToken: googleSignInAuthentication?.idToken,
  //     );

  //     final UserCredential authResult =
  //         await _auth.signInWithCredential(credential);
  //     final User? user = authResult.user;

  //     if (user != null) {
  //       await checkUserExists(uid: user.uid);
  //     }
  //   } catch (e) {
  //     print("Google Login Error: $e");
  //   }
  // }

  //****************** Login with Apple ******************

  // Future<void> signInWithApple() async {
  //   try {
  //     final AppleSignInAvailable appleSignInAvailable =
  //         await AppleSignInAvailable.check();
  //     if (!appleSignInAvailable.isAvailable) {
  //       AppDialog().showOSDialog(
  //           context, "Error", "Apple Sign in not available", "OK", () {});
  //       return;
  //     }

  //     final rawNonce = _generateNonce();
  //     final nonce = _sha256ofString(rawNonce);

  //     final appleCredential = await SignInWithApple.getAppleIDCredential(
  //       scopes: [
  //         AppleIDAuthorizationScopes.email,
  //         AppleIDAuthorizationScopes.fullName,
  //       ],
  //       nonce: nonce,
  //     );

  //     OAuthCredential oauthCredential = OAuthProvider("apple.com").credential(
  //       idToken: appleCredential.identityToken,
  //       rawNonce: rawNonce,
  //     );

  //     final authResult = await _auth.signInWithCredential(oauthCredential);
  //     final firebaseUser = authResult.user;
  //     if (firebaseUser != null) {
  //       await checkUserExists(uid: firebaseUser.uid);
  //     }
  //   } on SignInWithAppleException catch (e) {
  //     print("Apple Login Error: $e");
  //   } on FirebaseAuthException catch (e) {
  //     print("Firebase Auth Error: $e");
  //   }
  // }

  // String _generateNonce([int length = 32]) {
  //   const charset =
  //       '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
  //   final random = Random.secure();
  //   return List.generate(length, (_) => charset[random.nextInt(charset.length)])
  //       .join();
  // }

  /// Returns the sha256 hash of [input] in hex notation.
  // String _sha256ofString(String input) {
  //   final bytes = utf8.encode(input);
  //   final digest = sha256.convert(bytes);
  //   return digest.toString();
  // }

  //****************** Check User Exists ******************

  Future<void> _checkUserExists() async {
    User? currentAuthUser = _auth.currentUser;
    print("Current User: ${_auth.currentUser}");
    if (currentAuthUser != null) {
      Get.to(const MainCreatProfile());
      return;
    }
  }
  // final DocumentSnapshot<Map<String, dynamic>> snapshot =
  //     await _fireStore.doc("users/${currentAuthUser.uid}").get();
  // if (!snapshot.exists) {
  //   currentUser = UserModel(
  //     uid: currentAuthUser.uid,
  //     email: currentAuthUser.email,
  //     createdAt: Timestamp.now(),
  //   );
  //   Go.off(context, const ActiveLocation());
  //   return;
  // }
  //   currentUser = UserModel.fromMap(snapshot.data());
  //   // if (snapshot.data()!['location'] == null) {
  //   //   Go.off(context, const ActiveLocation());
  //   //   return;
  //   // }
  //   if (snapshot.data()!['name'] == null) {
  //     Go.off(context, const CreateProfile());
  //     return;
  //   }
  //   if (snapshot.data()!['imageUrl'] == null) {
  //     Go.off(context, const CreateProfileImg());
  //     return;
  //   }
  //   if (snapshot.data()!['dropDownValue'] == null) {
  //     Go.off(context, const PoliticPosition());
  //     return;
  //   }
  //   if (snapshot.data()!['selectedList'] == null) {
  //     Go.off(context, const DiscussionTopic());
  //     return;
  //   }
  //   Go.off(context, const HomeScreen());
  // }

  //   DocumentSnapshot<Map<String, dynamic>>? snapshot = await _fireStore
  //       .doc("${FirebaseRef.USERS}/${uid ?? currentAuthUser.uid}")
  //       .get();
  //   if (!snapshot.exists) {
  //     if (!loginWithCredential) {
  //       AppStatic.currentUser = UserModel(
  //           name: currentAuthUser.displayName ?? "User",
  //           email: currentAuthUser.email,
  //           profileImg: currentAuthUser.photoURL,
  //           uid: currentAuthUser.uid);

  //       await _fireStore
  //           .doc(FirebaseRef.USERS + '/' + "${AppStatic.currentUser.uid}")
  //           .set(AppStatic.currentUser.toMap());
  //       Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(builder: (context) => CustomDrawerApp()),
  //       );
  //       return;
  //     }
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) => SignUpForm()),
  //     );

  //     return;
  //   }
  //   AppStatic.currentUser = UserModel.fromMap(snapshot.data());
  //   Navigator.pushReplacement(
  //     context,
  //     MaterialPageRoute(builder: (context) => CustomDrawerApp()),
  //   );
  // }

//   Future<void> logOut() async {
//     try {
//       AppStatic.currentUser = UserModel();
//       await _auth.signOut();
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => const SignIn()),
//       );
//     } catch (e) {
//       print(e);
//     }
//   }

// //   static Future<void> getUserInfo(String uid) async {
// //     try {
// //       DocumentSnapshot snapShot =
// //       await _fireStore.collection('users').doc(uid).get();
// //       if (snapShot.data() != null) {
// //         currentUser = UserModel.fromMap(snapShot.data());
// //       }
// //       return;
// //     } on SocketException catch (error) {
// //       print("$error");
// //     } on FirebaseException catch (error) {
// //       print("$error");
// //     }
// //   }
// //
// // //****************** Password Reset ******************

//   Future<void> sendPasswordResetEmail(String email) async {
//     try {
//       await _auth.sendPasswordResetEmail(email: email);
//       AppDialog().showOSDialog(context, "Success",
//           "Password reset email sent successfully", "Ok", () {});
//     } on FirebaseException catch (e) {
//       print("Password Reset Error: $e");
//       switch (e.code) {
//         case ('user-not-found'):
//           {
//             AppDialog().showOSDialog(
//               context,
//               "Error",
//               userNotFount,
//               okText,
//               () {},
//             );
//           }
//           break;
//       }
//     }
//   }
// }

// class FirebaseRef {
//   static const String USERS = "users";
//   static const String PROFILE_IMAGE = "profile_image";
//   static const String WRONG_PASSWORD = "wrong-password";
//   static const String USER_NOT_EXISTS = "user-not-found";
//   static const String EMAIL_ALREADY_EXISTS = "email-already-in-use";
//   static const String NO_CONNECTION = "network-request-failed";
// }

// class AppleSignInAvailable {
//   AppleSignInAvailable(this.isAvailable);
//   final bool isAvailable;

//   static Future<AppleSignInAvailable> check() async {
//     return AppleSignInAvailable(await SignInWithApple.isAvailable());
//   }
}
