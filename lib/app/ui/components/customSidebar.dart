// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get_utils/src/extensions/export.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// import '../../data/utils/colors.dart';
//
//
// class CustomSidebar extends StatelessWidget {
//   final String icon;
//   final String title;
//   final Color? iconColor;
//   final bool isSelectedIndex;
//   final bool isCollapsed;
//   final Function()? onTap;
//   const CustomSidebar(
//       {super.key,
//         required this.icon,
//         required this.isCollapsed,
//         required this.title,
//         this.onTap,
//         this.isSelectedIndex = false,
//         this.iconColor});
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Row(
//         children: [
//           Image.asset(
//             icon,
//             width: 24,
//             color: isSelectedIndex ? AppColors.kDrawerBackground : AppColors.kBDBED5,
//             height: 24,
//           ),
//           const SizedBox(width: 8),
//           Text(title.tr,
//               style: GoogleFonts.poppins(
//                 fontSize: isSelectedIndex ? 14 : 14,
//                 fontWeight: isSelectedIndex ? FontWeight.w600 : FontWeight.w400,
//                 color: isSelectedIndex ? AppColors.kDrawerBackground : AppColors.kBDBED5,
//               )),
//         ],
//       ),
//     ).paddingSymmetric(vertical: 20, horizontal: 25);
//   }
// }
