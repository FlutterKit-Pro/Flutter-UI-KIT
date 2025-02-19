


// // Exemple avec Dio
// class DioAuthDataSource {
//   final Dio _dio;
  
//   DioAuthDataSource(this._dio);

//   Future<void> login(String email, String password) async {
//     try {
//       final response = await _dio.post(
//         'https://api.example.com/login',
//         data: {
//           'email': email,
//           'password': password,
//         },
//       );
//       // Traiter la réponse
//     } catch (e) {
//       throw Exception('Erreur de connexion');
//     }
//   }

//   Future<void> register(String name, String email, String password) async {
//     try {
//       final response = await _dio.post(
//         'https://api.example.com/register',
//         data: {
//           'name': name,
//           'email': email,
//           'password': password,
//         },
//       );
//       // Traiter la réponse
//     } catch (e) {
//       throw Exception('Erreur d\'inscription');
//     }
//   }
// }

// // Exemple avec Firebase
// class FirebaseAuthDataSource {
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   Future<void> login(String email, String password) async {
//     try {
//       await _auth.signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//     } catch (e) {
//       throw Exception('Erreur de connexion Firebase');
//     }
//   }

//   Future<void> register(String email, String password) async {
//     try {
//       await _auth.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//     } catch (e) {
//       throw Exception('Erreur d\'inscription Firebase');
//     }
//   }

//   Future<void> logout() async {
//     await _auth.signOut();
//   }
// }
