// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:smart_ship/app/modules/dashboard/controllers/dashboard_controller.dart';
//
// import '../../../constants.dart';
// import '../../data/utils/colors.dart';
// import '../../modules/home/controllers/home_controller.dart';
// import '../../routes/app_pages.dart';
// import 'customSidebar.dart';
//
// class CustomDrawer extends StatefulWidget {
//   final int selectedIndex;
//   const CustomDrawer({super.key, required this.selectedIndex});
//
//   @override
//   State<CustomDrawer> createState() => _CustomDrawerState();
// }
//
// final DashboardController dashboardController =
// Get.put(DashboardController());
//
// class _CustomDrawerState extends State<CustomDrawer> {
//
//   final isCollapsed = dashboardController.isCollapsed;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // width: isCollapsed ? 1  : null,
//       // height: Get.height * 0.912,
//       color: isCollapsed ?AppColors.kDrawerBackground :AppColors.kffffff,
//       child: Column(
//         children: [
//           Container(
//             // padding: EdgeInsets.symmetric(vertical: 24).add(safeArea),
//             width: double.infinity,
//             color: Colors.white12,
//             child: Container(
//               child: buildHeader(isCollapsed),
//             ),
//           ),
//           const SizedBox(height: 24),
//           CustomSidebar(
//               isCollapsed: isCollapsed,
//               onTap: () {
//                 widget.selectedIndex == 1;
//                 setState(() {});
//                 Get.offNamed(Routes.HOME);
//               },
//               isSelectedIndex: widget.selectedIndex == 1 ? true : false,
//               icon: AppIcons.dashboardIcon,
//               title: 'dashboard'),
//          CustomSidebar(
//              isCollapsed: isCollapsed,
//               onTap: () {
//                 widget.selectedIndex == 2;
//                 setState(() {});
//                 Get.offNamed(Routes.HOME);
//               },
//               isSelectedIndex: widget.selectedIndex == 2 ? true : false,
//               icon: AppIcons.hSEQIcon,
//               title: 'HSEQ'),
//           CustomSidebar(
//               isCollapsed: isCollapsed,
//               onTap: () {
//                 widget.selectedIndex == 3;
//                 setState(() {});
//                 // Get.delete<CreateLeadsController>();
//                 Get.offNamed(Routes.HOME);
//               },
//               isSelectedIndex: widget.selectedIndex == 3 ? true : false,
//               icon: AppIcons.inspectionIcon,
//               // iconColor: AppColors.kBDBED5,
//               title: 'Inspection'),
//           CustomSidebar(
//               isCollapsed: isCollapsed,
//               onTap: () {
//                 widget.selectedIndex == 4;
//                 setState(() {});
//                 Get.toNamed(Routes.HOME);
//               },
//               isSelectedIndex: widget.selectedIndex == 4 ? true : false,
//               icon: AppIcons.riskIcon,
//               // iconColor: AppColors.kBDBED5,
//               title: 'Risk Assessment'),
//           CustomSidebar(
//               isCollapsed: isCollapsed,
//               onTap: () {
//                 widget.selectedIndex == 5;
//                 setState(() {});
//                 Get.offNamed(Routes.HOME);
//               },
//               isSelectedIndex: widget.selectedIndex == 5 ? true : false,
//               icon: AppIcons.hSEQTrackingIcon,
//               title: 'HSEQ Tracking'),
//          CustomSidebar(
//            isCollapsed: isCollapsed,
//               onTap: () {
//                 widget.selectedIndex == 6;
//                 setState(() {});
//                 Get.offNamed(Routes.HOME);
//               },
//               isSelectedIndex: widget.selectedIndex == 6 ? true : false,
//               icon: AppIcons.othersIcon,
//               title: 'Others'),
//           Spacer(),
//           buildCollapseIcon(context, isCollapsed),
//           Padding(
//             padding: const EdgeInsets.only(bottom: 21.0),
//             child: buildFooter(isCollapsed),
//           )
//         // CustomSidebar(
//         //       onTap: () {
//         //         widget.selectedIndex == 7;
//         //         setState(() {});
//         //         Get.offNamed(Routes.HOME);
//         //       },
//         //       isSelectedIndex: widget.selectedIndex == 7 ? true : false,
//         //       icon: AppIcons.openQueriesIcon,
//         //       title: 'open_queries'),
//         ],
//       ),
//     );
//   }
//   // Widget buildHeader(bool isCollapsed,) => isCollapsed
//   //     ?
//   //     : Padding(
//   //       padding: const EdgeInsets.only(left: 26.0),
//   //       child:
//   //     );
//
//
//   Widget buildHeader(bool isCollapsed) => isCollapsed
//       ?  Image.asset(AppImages.appLogo,height: 56,)
//       : Row(
//     children: [
//       const SizedBox(width: 24),
//       Image.asset(AppImages.appLogoWithName,height: 60,width: 184,),
//     ],
//   );
//   Widget buildCollapseIcon(BuildContext context, bool isCollapsed) {
//     final double size = 52;
//     final icon = isCollapsed ? Icons.arrow_forward_ios : Icons.arrow_back_ios;
//     final alignment = isCollapsed ? Alignment.center : Alignment.centerRight;
//     final margin = isCollapsed ? null : EdgeInsets.only(right: 16);
//     final width = isCollapsed ? double.infinity : size;
//
//     return Container(
//       alignment: alignment,
//       margin: margin,
//       child: Material(
//         color: Colors.transparent,
//         child: InkWell(
//           child: Container(
//             width: width,
//             height: size,
//             child: Icon(icon, color: Color(0xffDC7826)),
//           ),
//           onTap: () {
//             // final provider =
//             //     Provider.of<NavigationProvider>(context, listen: false);
//
//             dashboardController.toggleIsCollapsed();
//           },
//         ),
//       ),
//     );
//   }
//
//   Widget buildFooter(bool isCollapsed,) => isCollapsed
//       ?  Column(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: [
//       Container(
//         width: 25,
//         height: 35,
//         decoration: BoxDecoration(
//             border: Border.all(
//                 color: Color(0xffC3C3C3AB), // Set border color
//                 width: 1.0),
//             borderRadius: BorderRadius.all(Radius.circular(5))
//         ),
//         child: GestureDetector(
//           onTap: (){},
//           child: Image.asset(AppIcons.settingIcon,color: Colors.white,height: 24,),
//         ),
//       ),
//       Container(
//         width: 35,
//         height: 35,
//         decoration: BoxDecoration(
//             border: Border.all(
//                 color: Color(0xffC3C3C3AB), // Set border color
//                 width: 1.0),
//             borderRadius: BorderRadius.all(Radius.circular(5))
//         ),
//         child: GestureDetector(
//           onTap: (){},
//           child: Image.asset(AppIcons.logoutIcon,color: Colors.white,height: 24,),
//         ),
//       ),
//     ],
//   )
//       :   Row(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     children: [
//       Container(
//         width: 35,
//         height: 35,
//         decoration: BoxDecoration(
//             border: Border.all(
//                 color: Color(0xffC3C3C3AB), // Set border color
//                 width: 1.0),
//             borderRadius: BorderRadius.all(Radius.circular(5))
//         ),
//         child: GestureDetector(
//           onTap: (){},
//           child: Image.asset(AppIcons.settingIcon,color: Color(0xff243573),height: 24,),
//         ),
//       ),
//       SizedBox(height: 10,),
//       Container(
//         width: 35,
//         height: 35,
//         decoration: BoxDecoration(
//             border: Border.all(
//                 color: Color(0xffC3C3C3AB), // Set border color
//                 width: 1.0),
//             borderRadius: BorderRadius.all(Radius.circular(5))
//         ),
//         child: GestureDetector(
//           onTap: (){},
//           child: Image.asset(AppIcons.logoutIcon,color: Color(0xff243573),height: 24,),
//         ),
//       ),
//     ],
//   );
//
// }
//
