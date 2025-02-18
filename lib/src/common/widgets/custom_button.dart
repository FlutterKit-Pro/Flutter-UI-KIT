// import 'package:change_app/src/common/themes/app_color.dart';
// import 'package:flutter/material.dart';

// class CustomButton extends StatefulWidget {
//   final String text;
//   final VoidCallback? onPressed;

//   const CustomButton({super.key, required this.text, required this.onPressed});

//   @override
//   State<CustomButton> createState() => _CustomButtonState();
// }

// class _CustomButtonState extends State<CustomButton>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _scaleAnimation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(milliseconds: 150),
//       vsync: this,
//     );
//     _scaleAnimation = Tween<double>(begin: 1.0, end: 0.95).animate(_controller);
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 3.0),
//       child: GestureDetector(
//         onTapDown: (_) => _controller.forward(),
//         onTapUp: (_) => _controller.reverse(),
//         onTapCancel: () => _controller.reverse(),
//         child: ScaleTransition(
//           scale: _scaleAnimation,
//           child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(30),
//             ),
//             child: ElevatedButton(
//               onPressed: widget.onPressed,
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: AppColors.primaryColor,
//                 padding: const EdgeInsets.symmetric(vertical: 15),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//               ),
//               child: Center(
//                 child: Text(
//                   widget.text,
//                   style: const TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
