

//sign in sign up Strings
const String okText = "OK";
const String invalidEmail = 'Email is not valid';
const String wrongPassword = 'Wrong password';
const String userNotFount = 'User not found';
const String userEmailVerified = 'E-mail is not verified check your inbox';
const String alreadyExistAccount =
    'Account already exist with different credentials';
const String weakPassword =
    'Weak password! Password must be 8 characters long.';
const String passwordIsRequired = "Password is required";
const String nameIsRequired = "Name is required";

const String emailIsRequired = 'Email is required';
const String nameisrequired = 'name is required';

const String somethingWrong =
    'Something wrong! We could not complete this action';
const String emailVerify = 'Please verify your email';
const String userNotExist = 'User not exist';
const String signinFailedMessage = 'Failed to Login:';
const String disconnectInternetText = 'Please Check Your Internet connection.';

String? emailValidator(String? email) {
  email = email?.trim() ?? "";
  if (email.isEmpty) {
    return emailIsRequired;
  }
  if (!isValidEmail(email)) return invalidEmail;
  return null;
}

String? namevalidator(String? name) {
  name = name?.trim() ?? "";
  if (name.isEmpty) {
    return nameisrequired;
  }
  // if (!isValidEmail(name)) return invalidEmail;
  // return null;
}

String? passwordValidator(String? password) {
  password = password ?? "";
  if (password.isEmpty) {
    return passwordIsRequired;
  }
  if (password.length < 8) return weakPassword;
  return null;
}

String? confirmPasswordValidator(String? password) {
  password = password ?? "";
  if (password.isEmpty) {
    return passwordIsRequired;
  }
  if (password.length < 8) return weakPassword;
  if (password != password) {
    return 'Confimation password does not match the entered password';
  }
  return null;
}

//  validator: (value) {
//                     if (value.isEmpty) {
//                       return 'Password cannot be empty';
//                     } else{
//                       if (value.trim().length < 8) {
//                         return 'Userpassword must be at least 8 characters in length';
//                       }
//                       else{
//                         if (value != _password) {
//                           return 'Confimation password does not match the entered password';
//                         }

//                         return null;
//                       }
//                     }
//                      // return null;
//                   },

String? nameValidator(String? name) {
  name = name ?? "";
  if (name.isEmpty) {
    return nameIsRequired;
  }

  return null;
}

bool isValidEmail(String? email) {
  return RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      .hasMatch(email ?? "");
}
