// // import 'package:flutter/material.dart';
// //
// // import 'package:get/get.dart';
// //
// // import '../controllers/dashboard_controller.dart';
// //
// // class DashboardView extends GetView<DashboardController> {
// //   const DashboardView({Key? key}) : super(key: key);
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('DashboardView'),
// //         centerTitle: true,
// //       ),
// //       body: const Center(
// //         child: Text(
// //           'DashboardView is working',
// //           style: TextStyle(fontSize: 20),
// //         ),
// //       ),
// //     );
// //   }
// // }
//
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_ship/app/data/utils/colors.dart';
import 'package:smart_ship/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:smart_ship/app/modules/dashboard/views/sub_dashboard_view.dart';
import '../../../responsive.dart';
import 'components/navigation_drawer.dart';

class DashboardView extends GetView<DashboardController> {
  DashboardView({Key? key}) : super(key: key);

  final DashboardController homeController =
  Get.put(DashboardController());


  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
    return
      //   Scaffold(
      //   drawer: NavigationDrawerWidget(),
      //   appBar: AppBar(
      //     title: const Text('HomeView'),
      //     centerTitle: true,
      //   ),
      //   body: const Center(
      //     child: Text(
      //       'HomeView is working',
      //       style: TextStyle(fontSize: 20),
      //     ),
      //   ),
      // );
      Scaffold(
        key: _scaffoldKey,
       backgroundColor: AppColors.FBFCFF,
       drawer: NavigationDrawerWidget(),
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // We want this side menu only for large screen
              if (Responsive.isDesktop(context))
                Flexible(
                  // and it takes 1/6 part of the screen
                  child: NavigationDrawerWidget(),
                  // child: Container(),
                ),
              Flexible(
                // It takes 5/6 part of the screen
                flex: 5,
                child: SubDashboardView(),
              ),
            ],
          ),
        ),
      );
  }
}

