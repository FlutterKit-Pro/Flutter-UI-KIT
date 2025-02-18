// import 'dart:developer';

// import 'package:change_app/src/constants/constant.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// final authProviderDio = StateProvider<String?>((ref) => null);

// class DioClient {
//   final Dio dio;
//   final Ref ref;

//   DioClient(this.dio, this.ref) {
//     _configureBaseOptions();
//     _addInterceptors();
//   }

//   void _configureBaseOptions() {
//     dio.options = BaseOptions(
//       baseUrl: Constant.baseUrl,
//       connectTimeout: const Duration(seconds: 30),
//       receiveTimeout: const Duration(seconds: 30),
//       sendTimeout: const Duration(seconds: 30),
//       headers: {
//         'Accept': 'application/json',
//       },
//     );
//   }

//   void _addInterceptors() {
//     dio.interceptors.add(
//       InterceptorsWrapper(
//         onRequest: (options, handler) {
//           final token = ref.read(authProviderDio);
//           if (token != null) {
//             options.headers['Authorization'] = 'Bearer $token';
//           }
//           return handler.next(options);
//         },
//         onError: (error, handler) {
//           if (error.response?.statusCode == 401) {
//             ref.read(authProviderDio.notifier).state = null;
//           }
//           return handler.next(error);
//         },
//       ),
//     );
//   }

//   Future<Response<T>> get<T>(
//     String url, {
//     Map<String, dynamic>? queryParameters,
//     Options? options,
//   }) async {
//     try {
//       return await dio.get<T>(
//         url,
//         queryParameters: queryParameters,
//         options: options,
//       );
//     } catch (e) {
//       log(e.toString());
//       rethrow;
//     }
//   }

//   Future<Response<T>> post<T>(
//     String url, {
//     dynamic data,
//     Map<String, dynamic>? queryParameters,
//     Options? options,
//     FormData? formData,
//   }) async {
//     try {
//       return await dio.post<T>(
//         url,
//         data: data,
//         queryParameters: queryParameters,
//         options: options,
//       );
//     } catch (e) {
//       if (e is DioException) {
//         log("Erreur du backend: ${e.response?.data}");
//       } else {
//         log("Erreur::::::  ${e.toString()}");
//       }
//       rethrow;
//     }
//   }

//   Future<Response<T>> put<T>(
//     String url, {
//     dynamic data,
//     Map<String, dynamic>? queryParameters,
//     Options? options,
//   }) async {
//     try {
//       return await dio.put<T>(
//         url,
//         data: data,
//         queryParameters: queryParameters,
//         options: options,
//       );
//     } catch (e) {
//       if (e is DioException) {
//         log("Erreur du backend: ${e.response?.data}");
//       } else {
//         log("Erreur::::::  ${e.toString()}");
//       }
//       rethrow;
//     }
//   }

//   Future<Response<T>> delete<T>(
//     String url, {
//     dynamic data,
//     Map<String, dynamic>? queryParameters,
//     Options? options,
//   }) async {
//     try {
//       return await dio.delete<T>(
//         url,
//         data: data,
//         queryParameters: queryParameters,
//         options: options,
//       );
//     } catch (e) {
//       if (e is DioException) {
//         log("Erreur du backend: ${e.response?.data}");
//       } else {
//         log("Erreur::::::  ${e.toString()}");
//       }
//       rethrow;
//     }
//   }

//   Future<Response<T>> patch<T>(
//     String url, {
//     dynamic data,
//     Map<String, dynamic>? queryParameters,
//     Options? options,
//   }) async {
//     try {
//       return await dio.patch<T>(
//         url,
//         data: data,
//         queryParameters: queryParameters,
//         options: options,
//       );
//     } catch (e) {
//       if (e is DioException) {
//         log("Erreur du backend: ${e.response?.data}");
//       } else {
//         log("Erreur::::::  ${e.toString()}");
//       }
//       rethrow;
//     }
//   }
// }

// final dioClientProvider = Provider<DioClient>((ref) {
//   final dio = Dio();
//   return DioClient(dio, ref);
// });
