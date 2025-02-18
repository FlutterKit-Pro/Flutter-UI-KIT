// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class CustomTextField extends StatelessWidget {
//   final TextEditingController? controller;
//   final IconData? icon;
//   final String hint;
//   final TextInputType type;
//   final TextInputAction? textInputAction;
//   final FormFieldValidator<String> validator;
//   final FocusNode? focusNode;
//   final bool obscureTextValue;
//   final bool isTextArea;
//   final int? isTextAreaSize;
//   final int? totalDigit;
//   final Widget? prefixWidget;
//   final Widget? sufixWidget;

//   const CustomTextField({
//     super.key,
//     this.controller,
//     this.icon,
//     required this.hint,
//     required this.type,
//     this.focusNode,
//     this.obscureTextValue = false,
//     this.isTextArea = false,
//     required this.validator,
//     this.prefixWidget,
//     this.isTextAreaSize = 256,
//     this.sufixWidget,
//     this.totalDigit = 1,
//     this.textInputAction,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 3.0),
//       child: TextFormField(
//         validator: validator,
//         controller: controller,
//         textInputAction: textInputAction,
//         decoration: InputDecoration(
//             hintStyle: GoogleFonts.poppins(
//               color: Colors.grey,
//             ),
//             hintText: hint,
//             fillColor: Colors.blueGrey.withOpacity(0.1),
//             filled: true,
//             prefixIcon: (prefixWidget == null) ? Icon(icon) : prefixWidget,
//             contentPadding: const EdgeInsets.symmetric(
//               vertical: 20,
//               horizontal: 2.3,
//             ),
//             border: OutlineInputBorder(
//               borderSide: BorderSide.none,
//               borderRadius: BorderRadius.circular(10.0),
//             ),
//             suffixIcon: sufixWidget),
//         obscureText: obscureTextValue,
//         keyboardType: type,
//         focusNode: focusNode,
//         maxLines: (isTextArea) ? 4 : totalDigit,
//         maxLength: (isTextArea) ? isTextAreaSize : null,
//       ),
//     );
//   }
// }
