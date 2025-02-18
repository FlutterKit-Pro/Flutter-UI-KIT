// import 'package:country_code_picker/country_code_picker.dart';
// import 'package:flutter/material.dart';

// class DialCodePickerWidget extends StatefulWidget {
//   final Function(String) onChanged;
//   final String initialSelection;
//   final TextEditingController? phoneController;

//   const DialCodePickerWidget({
//     super.key,
//     required this.onChanged,
//     this.initialSelection = 'SN',
//     this.phoneController,
//   });

//   @override
//   State<DialCodePickerWidget> createState() => _DialCodePickerWidgetState();
// }

// class _DialCodePickerWidgetState extends State<DialCodePickerWidget> {
//   String _selectedDialCode = '';
//   final RegExp _snRegex = RegExp(r'^(70|75|76|77|78)\d{7}$');
//   final RegExp _ciRegex = RegExp(r'^(01|05|07)\d{8}$');

//   @override
//   void initState() {
//     super.initState();
//     _selectedDialCode = widget.initialSelection;
//   }

//   bool _isValidPhoneNumber(String number) {
//     if (_selectedDialCode == '+221') {
//       // Sénégal
//       return _snRegex.hasMatch(number);
//     } else if (_selectedDialCode == '+225') {
//       // Côte d'Ivoire
//       return _ciRegex.hasMatch(number);
//     }
//     return false;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(8),
//         ),
//         child: CountryCodePicker(
//           onChanged: (CountryCode countryCode) {
//             setState(() {
//               _selectedDialCode = countryCode.dialCode ?? '';
//             });

//             // Vérifier le numéro actuel avec le nouveau code pays
//             if (widget.phoneController != null) {
//               final number = widget.phoneController!.text;
//               if (number.isNotEmpty && !_isValidPhoneNumber(number)) {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(
//                     content: Text('Numéro invalide pour ${countryCode.name}'),
//                   ),
//                 );
//               }
//             }

//             widget.onChanged(_selectedDialCode);
//           },
//           initialSelection: widget.initialSelection,
//           showCountryOnly: false,
//           showOnlyCountryWhenClosed: false,
//           alignLeft: false,
//           countryFilter: const ['SN', 'CI'],
//           padding: EdgeInsets.zero,
//           dialogSize: const Size(300, 300),
//           boxDecoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(8),
//           ),
//         ));
//   }

//   String get selectedDialCode => _selectedDialCode;
// }
