// import 'package:flutter/material.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
// import 'package:toastification/toastification.dart';

// class Constant {
//   static const String appName = 'Change';

//   static const String loginTitle = '/api/mobile/public/login';
//   static const String registerTitle = '/api/mobile/public/register';
//   static const String forgotPasswordTitle =
//       '/api/mobile/public/forgot-password';
//   static const String resetPasswordTitle = '/api/mobile/public/reset-password';
//   static const String verifyOtpTitle = '/api/mobile/public/verify-otp';
//   static const String transactionsTitle =
//       '/api/mobile/auth/transactions/create';
//   static const String servicesTitle = '/api/mobile/services/list';
//   static const String sourceNumbersTitle = '/api/mobile/auth/source_numero/add';
//   static const String logoutTitle = '/api/mobile/auth/logout';
//   static const String deleteAccountTitle =
//       '/api/mobile/auth/users/delete-account';
//   static final String baseUrl = dotenv.env['BASE_URL'] ?? 'BASE_URL not found';
//   static final String sentryDSN =
//       dotenv.env['SENTRY_DSN'] ?? 'SENTRY_DSN not found';

//   static void showToast(BuildContext context, String title, String description,
//       ToastificationType type) {
//     toastification.show(
//       style: ToastificationStyle.flatColored,
//       context: context,
//       type: type,
//       title: Text(title, style: const TextStyle(color: Colors.white)),
//       description:
//           Text(description, style: const TextStyle(color: Colors.white)),
//       primaryColor: Colors.white,
//       animationDuration: const Duration(milliseconds: 1000),
//       autoCloseDuration: const Duration(seconds: 4),
//       progressBarTheme: ProgressIndicatorThemeData(
//         color: type == ToastificationType.success
//             ? Colors.white
//             : type == ToastificationType.info
//                 ? Colors.white
//                 : type == ToastificationType.warning
//                     ? Colors.white
//                     : Colors.white,
//       ),
//       showProgressBar: true,
//       backgroundColor: type == ToastificationType.success
//           ? Colors.green.withOpacity(0.8)
//           : type == ToastificationType.info
//               ? Colors.blue
//               : type == ToastificationType.warning
//                   ? Colors.orange
//                   : Colors.red.withOpacity(0.8),
//       foregroundColor: Colors.white,
//       borderRadius: BorderRadius.circular(10),
//       boxShadow: [
//         BoxShadow(
//           color: Colors.black.withOpacity(0.2),
//           blurRadius: 10,
//           offset: const Offset(0, 5),
//         ),
//       ],
//     );
//   }

//   static Future showCupertinoButtomSheet(BuildContext context, Widget content,
//       {bool isDismissable = true}) {
//     return showCupertinoModalBottomSheet(
//       context: context,
//       builder: (context) {
//         return content;
//       },
//       isDismissible: isDismissable,
//       enableDrag: isDismissable,
//     );
//   }
// }
