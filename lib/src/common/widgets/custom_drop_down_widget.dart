// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class CustomDropdown extends StatelessWidget {
//   final String label;
//   final dynamic value;
//   final List<Map<String, dynamic>> items;
//   final void Function(dynamic) onChanged;

//   const CustomDropdown({
//     super.key,
//     required this.label,
//     this.value,
//     required this.items,
//     required this.onChanged,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final bool valueExists =
//         value == null || items.any((item) => item['id'] == value);
//     final effectiveValue = valueExists ? value : null;

//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 3),
//       child: DropdownButtonFormField<dynamic>(
//         decoration: InputDecoration(
//           hintText: label,
//           hintStyle: GoogleFonts.poppins(fontSize: 15),
//           fillColor: Colors.blueGrey.withOpacity(0.1),
//           filled: true,
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10.0),
//             borderSide: BorderSide.none,
//           ),
//           contentPadding: const EdgeInsets.symmetric(
//             vertical: 20,
//             horizontal: 10,
//           ),
//         ),
//         value: items.isEmpty ? null : effectiveValue,
//         items: items.map((item) {
//           return DropdownMenuItem<dynamic>(
//             value: item['id'],
//             child: Text(
//               item['name']?.toString() ?? '',
//               overflow: TextOverflow.ellipsis,
//             ),
//           );
//         }).toList(),
//         onChanged: onChanged,
//         validator: (dynamic value) {
//           if (value == null) {
//             return 'Ce champ est requis';
//           }
//           return null;
//         },
//       ),
//     );
//   }
// }

// class CustomDropDownWidget extends StatelessWidget {
//   final String label;
//   final dynamic value;
//   final List<Map<String, dynamic>> items;
//   final void Function(dynamic) onChanged;

//   const CustomDropDownWidget({
//     super.key,
//     required this.label,
//     this.value,
//     required this.items,
//     required this.onChanged,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final bool valueExists =
//         value == null || items.any((item) => item['id'] == value);
//     final effectiveValue = valueExists ? value : null;

//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 3),
//       child: DropdownButtonFormField<dynamic>(
//         decoration: InputDecoration(
//           hintText: label,
//           fillColor: Colors.blueGrey.withOpacity(0.1),
//           filled: true,
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10.0),
//             borderSide: BorderSide.none,
//           ),
//           contentPadding: const EdgeInsets.symmetric(
//             vertical: 20,
//             horizontal: 10,
//           ),
//         ),
//         value: effectiveValue,
//         items: items.map((item) {
//           return DropdownMenuItem<dynamic>(
//             value: item['value'],
//             child: Text(
//               item['label']?.toString() ?? '',
//               overflow: TextOverflow.ellipsis,
//             ),
//           );
//         }).toList(),
//         onChanged: onChanged,
//         validator: (dynamic value) {
//           if (value == null) {
//             return 'Ce champ est requis';
//           }
//           return null;
//         },
//       ),
//     );
//   }
// }
