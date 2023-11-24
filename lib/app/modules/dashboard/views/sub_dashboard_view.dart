import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smart_ship/app/modules/dashboard/views/components/main_data.dart';

import '../../../../constants.dart';
import '../controllers/dashboard_controller.dart';
import 'components/header.dart';


class SubDashboardView extends GetView<DashboardController> {
  SubDashboardView({Key? key}) : super(key: key);

  final DashboardController dashboardController =
  Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('DashboardView'),
    //     centerTitle: true,
    //   ),
    //   body: const Center(
    //     child: Text(
    //       'DashboardView is working',
    //       style: TextStyle(fontSize: 20),
    //     ),
    //   ),
    // );
    return Scaffold(
     // key: dashboardController.scaffoldKey,
      body: SafeArea(
        child: SingleChildScrollView(
          primary: false,
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              Header(),
              SizedBox(height: defaultPadding),
              MainDataView(),
            ],
          ),
        ),
      ),
    );
  }
}
