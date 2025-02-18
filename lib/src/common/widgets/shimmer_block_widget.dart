// import 'package:flutter/material.dart';
// import 'package:shimmer/shimmer.dart';


// class ShimmerBlockWidget extends StatelessWidget {
//   final double width;
//   final double height;
//   final Decoration? decoration;
//   const ShimmerBlockWidget(
//       {super.key, required this.width, required this.height, this.decoration});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: width,
//       height: height,
//       child: Shimmer.fromColors(
//         baseColor: Colors.grey.withOpacity(.3),
//         highlightColor: Colors.grey.withOpacity(.1),
//         child: Container(
//           decoration: (decoration == null)
//               ? BoxDecoration(
//                   borderRadius: BorderRadius.circular(20.0),
//                   color: Colors.white,
//                 )
//               : decoration,
//         ),
//       ),
//     );
//   }
// }