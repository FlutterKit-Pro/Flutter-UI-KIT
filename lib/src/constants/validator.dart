class Validator {
  static final RegExp _nameRegExp = RegExp(r"^[a-zA-ZÀ-ÿ\s'-]{2,30}$");
  static final RegExp _emailRegExp =
      RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");
  static final RegExp _passwordRegExp =
      RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');

  static String? validateName(String? value) {
    return _nameRegExp.hasMatch(value ?? '') ? null : 'Nom invalide';
  }

  static String? validateEmail(String? value) {
    return _emailRegExp.hasMatch(value ?? '') ? null : 'Email invalide';
  }

  static String? validatePassword(String? value) {
    return _passwordRegExp.hasMatch(value ?? '')
        ? null
        : 'Mot de passe invalide';
  }
}
