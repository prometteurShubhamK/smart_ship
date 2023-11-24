import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_ship/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:smart_ship/app/responsive.dart';
import 'package:smart_ship/app/ui/widgets/text_input_fiield.dart';
import 'package:smart_ship/app/ui/widgets/text_styles.dart';
import 'package:smart_ship/constants.dart';


class Header extends StatelessWidget {
  Header({
    Key? key,
  }) : super(key: key);

  final DashboardController dashboardController =
  Get.put(DashboardController());

  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        if (Responsive.isMobile(context))
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
             //   dashboardController.controlMenu();
              },
            ),
          ),
        !Responsive.isMobile(context)
            ? Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: Text(
            "Dashboard",
            style: TextStyles.desktopLargeTitleTexStyle(),
          ),
        )
            : Padding(
          padding: const EdgeInsets.only(left: 80.0),
          child: Text(
            "Dashboard",
            style: TextStyles.mobileLargeTitleTexStyle(),
          ),
        ),
        !Responsive.isMobile(context)
            ? Padding(
          padding: const EdgeInsets.only(left: 28.0),
          child: SizedBox(
            width: 346,
            height: 40,
            child:
            TextFormField(
              textAlign: TextAlign.start,
              controller: searchController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Search here',
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xff7A7A7A)),
                  suffixIcon: Icon(Icons.search)),
            ),
          ),
        )
            : Padding(
          padding: const EdgeInsets.only(left: 41.0),
          child: Container(
            width: 20,
            height: 20,
            child: Image.asset(AppImages.searchNormal),
          ),
        ),
        !Responsive.isMobile(context)
            ? Padding(
          padding: const EdgeInsets.only(left: 242.0),
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(
                    color: Color(0xffE5E5E5), // Set border color
                    width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Center(
                child: Icon(
                  Icons.notifications,
                  size: 24,
                )),
          ),
        )
            : Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Container(
            width: 22,
            height: 22,
            decoration: BoxDecoration(
                border: Border.all(
                    color: Color(0xffE5E5E5), // Set border color
                    width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(6))),
            child: Center(
                child: Icon(
                  Icons.notifications,
                  size: 14,
                )),
          ),
        ),
        !Responsive.isMobile(context)
            ? Padding(
          padding: const EdgeInsets.only(left: 22.0),
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(
                    color: Color(0xffE5E5E5), // Set border color
                    width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&usqp=CAU",
              fit: BoxFit.fill,
            ),
          ),
        )
            : Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Container(
            width: 22,
            height: 22,
            decoration: BoxDecoration(
                border: Border.all(
                    color: Color(0xffE5E5E5), // Set border color
                    width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&usqp=CAU",
              fit: BoxFit.fill,
            ),
          ),
        ),
        if (!Responsive.isMobile(context))
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Bryan P",style: TextStyles.desktopMediumTitleTextStyle(),),
                Text("Vessel User",style: TextStyles.desktopVerySmallTitleTexStyle(),),
              ],
            ),
          ),
        if (!Responsive.isMobile(context))
          Container(width: 27,
            height: 24,
            child:  Icon(Icons.arrow_drop_down),),
      ],
    );
  }
}