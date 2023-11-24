import 'package:flutter/material.dart';
import 'package:smart_ship/app/data/utils/colors.dart';
import 'package:smart_ship/app/responsive.dart';
import 'package:smart_ship/app/ui/widgets/text_styles.dart';

class MainDataView extends StatefulWidget {
  const MainDataView({super.key});

  @override
  State<MainDataView> createState() => _MainDataViewState();
}

class _MainDataViewState extends State<MainDataView> {

  bool checkbox1Value = true;
  bool checkbox2Value = false;
  bool checkbox3Value = false;
  bool checkbox4Value = false;
  bool checkbox5Value = false;
  bool checkbox6Value = false;
  bool checkbox7Value = false;
  bool checkbox8Value = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1143,
      height: 872,
      color: AppColors.kffffff,
      child: Padding(
        padding: const EdgeInsets.only(left: 28.0,right: 28,top: 28,bottom: 28),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                !Responsive.isMobile(context)?
                Text("Welcome Vessel Master,",style: TextStyles.desktopLargeTitleTexStyle(),):
                Text("Welcome Vessel Master,",style:TextStyles.mobileMediumTitleTextStyle(),),
              ],
            ),
            SizedBox(height: 20,),
            !Responsive.isMobile(context) ?
            Container(
              width: 1057,
              height: 73,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color(0xffE5E5E5), // Set border color
                      width: 1.0),
                  ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(

                        children: [
                          Checkbox(
                            value: checkbox1Value,
                            activeColor: AppColors.kDrawerBackground,
                            onChanged: (value) {
                              setState(() {
                                checkbox1Value = value!;
                              });
                            },
                          ),
                          Text('Inspection'),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: checkbox2Value,
                            onChanged: (value) {
                              setState(() {
                                checkbox2Value = value!;
                              });
                            },
                          ),
                          Text('Weekly'),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: checkbox3Value,
                            onChanged: (value) {
                              setState(() {
                                checkbox3Value = value!;
                              });
                            },
                          ),
                          Text('Monthly'),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: checkbox4Value,
                            onChanged: (value) {
                              setState(() {
                                checkbox4Value = value!;
                              });
                            },
                          ),
                          Text('Quarterly'),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: checkbox5Value,
                            onChanged: (value) {
                              setState(() {
                                checkbox5Value = value!;
                              });
                            },
                          ),
                          Text('Audits'),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: checkbox6Value,
                            onChanged: (value) {
                              setState(() {
                                checkbox6Value = value!;
                              });
                            },
                          ),
                          Text('Training'),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: checkbox7Value,
                            onChanged: (value) {
                              setState(() {
                                checkbox7Value = value!;
                              });
                            },
                          ),
                          Text('Risks'),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: checkbox8Value,
                            onChanged: (value) {
                              setState(() {
                                checkbox8Value = value!;
                              });
                            },
                          ),
                          Text('Incidents'),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(left: 202),
                        child:Container(
                          width: 64,
                          height: 26,
                          decoration: BoxDecoration(
                            color: AppColors.DC7826,
                              borderRadius: BorderRadius.all(Radius.circular(5))),
                          child: Center(
                            child:Text("Add Tag",style: TextStyles.desktopVerySmallTitleTexStyle().copyWith(fontSize: 10,fontWeight: FontWeight.w600,color: AppColors.kffffff),),
                          ),
                        ),),
                    ],
                  ),
                ),
              ),
            ) :
            Container(
              width: 388,
              height: 109,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color(0xffE5E5E5), // Set border color
                    width: 1.0),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(

                                children: [
                                  Checkbox(
                                    value: checkbox1Value,
                                    activeColor: AppColors.kDrawerBackground,
                                    onChanged: (value) {
                                      setState(() {
                                        checkbox1Value = value!;
                                      });
                                    },
                                  ),
                                  Text('Inspection'),
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    value: checkbox2Value,
                                    onChanged: (value) {
                                      setState(() {
                                        checkbox2Value = value!;
                                      });
                                    },
                                  ),
                                  Text('Weekly'),
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    value: checkbox3Value,
                                    onChanged: (value) {
                                      setState(() {
                                        checkbox3Value = value!;
                                      });
                                    },
                                  ),
                                  Text('Monthly'),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(left: 16,top:10),
                                child:Container(
                                  width: 64,
                                  height: 26,
                                  decoration: BoxDecoration(
                                      color: AppColors.DC7826,
                                      borderRadius: BorderRadius.all(Radius.circular(5))),
                                  child: Center(
                                    child:Text("Add Tag",style: TextStyles.desktopVerySmallTitleTexStyle().copyWith(fontSize: 10,fontWeight: FontWeight.w600,color: AppColors.kffffff),),
                                  ),
                                ),),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                    value: checkbox4Value,
                                    onChanged: (value) {
                                      setState(() {
                                        checkbox4Value = value!;
                                      });
                                    },
                                  ),
                                  Text('Quarterly'),
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    value: checkbox5Value,
                                    onChanged: (value) {
                                      setState(() {
                                        checkbox5Value = value!;
                                      });
                                    },
                                  ),
                                  Text('Audits'),
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    value: checkbox6Value,
                                    onChanged: (value) {
                                      setState(() {
                                        checkbox6Value = value!;
                                      });
                                    },
                                  ),
                                  Text('Training'),
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    value: checkbox7Value,
                                    onChanged: (value) {
                                      setState(() {
                                        checkbox7Value = value!;
                                      });
                                    },
                                  ),
                                  Text('Risks'),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Row(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Checkbox(
                                    value: checkbox8Value,
                                    onChanged: (value) {
                                      setState(() {
                                        checkbox8Value = value!;
                                      });
                                    },
                                  ),
                                  Text('Incidents'),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 25,),
            !Responsive.isMobile(context) ?
            Row(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Upcoming Action Items",style:TextStyles.desktopLargeTitleTexStyle().copyWith(fontWeight: FontWeight.w500,fontSize: 20,color: Colors.black),),
                    SizedBox(width: 10,),
                    Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Color(0xff243573),
                            borderRadius: BorderRadius.all(Radius.circular(4))
                        ),
                        child: Icon(Icons.file_upload_outlined,color: Colors.white,size: 15,))
                  ],
                ),
                SizedBox(width: 611,),
                Container(
                  width: 100,
                  height: 32,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffC7C7C7), // Set border color
                          width: 1.0),
                      color: Color(0xffE9E9E9),
                      borderRadius: BorderRadius.all(Radius.circular(6))
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Filter",style: TextStyles.mobileMediumTitleTextStyle(),),
                      Icon(Icons.filter_alt_outlined,color: Colors.black,size: 14,)
                    ],
                  ),
                ),
              ],
            ):
            Row(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Upcoming Action Items",style:TextStyles.mobileMediumTitleTextStyle().copyWith(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.black),),
                    SizedBox(width: 9,),
                    Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Color(0xff243573),
                            borderRadius: BorderRadius.all(Radius.circular(4))
                        ),
                        child: Icon(Icons.file_upload_outlined,color: Colors.white,size: 14,))
                  ],
                ),
                SizedBox(width: 69,),
                Container(
                  width: 74,
                  height: 29,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffC7C7C7), // Set border color
                          width: 1.0),
                      color: Color(0xffE9E9E9),
                      borderRadius: BorderRadius.all(Radius.circular(6))
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Filter",style:  TextStyles.mobileMediumTitleTextStyle().copyWith(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.black),),
                      Icon(Icons.filter_alt_outlined,color: Colors.black,size: 14,)
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 21,),
            !Responsive.isMobile(context) ?
            Container(
              width: 1057,
              height: 268,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color(0xffE5E5E5), // Set border color
                    width: 1.0),
              ),
              child:SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    DataTable(
                      columnSpacing: 34,
                      columns: const <DataColumn>[
                        DataColumn(
                          label: Text(
                            'S.No.',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Report Name',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Report ID',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Category',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Submit by Week',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Submit By Date',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Assigned by',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Take Actions',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),
                          ),
                        ),
                      ],
                      rows: const <DataRow>[
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('1.',
                              style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('Fire Fighting Equipment',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('39842-231',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('Inspection',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('Week 43',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('03 Nov 2023',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: AppColors.FF0000),
                            )),
                            DataCell(Text('Superintendent 1',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Icon(Icons.edit,size: 20,)),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('2.',
                              style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('Weekly Condition Maint..',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('39842-231',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('Incident',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('Week 44',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('09 Nov 2023',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: AppColors.FF0000),
                            )),
                            DataCell(Text('Fleet Manager',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Icon(Icons.edit,size: 20,)),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('3.',
                              style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('SMS Report',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('39842-231',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('Report',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('Week 43',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('01 Nov 2023',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: AppColors.k32A329),
                            )),
                            DataCell(Text('Master',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Icon(Icons.edit,size: 20,)),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('4.',
                              style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('LSA Weekly',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('39842-231',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('Inspection',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('Week 43',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('02 Nov 2023',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: AppColors.FF0000),
                            )),
                            DataCell(Text('Chief Engineer',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Icon(Icons.edit,size: 20,)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ):
            Container(
              width: 388,
              height: 260,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color(0xffE5E5E5), // Set border color
                    width: 1.0),
              ),
              child:SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    DataTable(
                      columnSpacing: 34,
                      columns: const <DataColumn>[
                        DataColumn(
                          label: Text(
                            'S.No.',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Report Name',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.black),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Report ID',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.black),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Category',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Submit by Week',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.black),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Submit By Date',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.black),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Assigned by',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.black),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Take Actions',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.black),
                          ),
                        ),
                      ],
                      rows: const <DataRow>[
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('1.',
                              style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('Fire Fighting Equipment',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('39842-231',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('Inspection',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('Week 43',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('03 Nov 2023',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize:11,color: AppColors.FF0000),
                            )),
                            DataCell(Text('Superintendent 1',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Icon(Icons.edit,size: 20,)),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('2.',
                              style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('Weekly Condition Maint..',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('39842-231',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('Incident',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('Week 44',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('09 Nov 2023',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: AppColors.FF0000),
                            )),
                            DataCell(Text('Fleet Manager',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Icon(Icons.edit,size: 20,)),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('3.',
                              style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('SMS Report',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('39842-231',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('Report',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('Week 43',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('01 Nov 2023',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: AppColors.k32A329),
                            )),
                            DataCell(Text('Master',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Icon(Icons.edit,size: 20,)),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('4.',
                              style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('LSA Weekly',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('39842-231',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('Inspection',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('Week 43',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('02 Nov 2023',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: AppColors.FF0000),
                            )),
                            DataCell(Text('Chief Engineer',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Icon(Icons.edit,size: 20,)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25,),
            !Responsive.isMobile(context) ?
            Row(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Recently Uploaded Documents",style:TextStyles.desktopLargeTitleTexStyle().copyWith(fontWeight: FontWeight.w500,fontSize: 20,color: Colors.black),),
                    SizedBox(width: 10,),
                    Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Color(0xff243573),
                            borderRadius: BorderRadius.all(Radius.circular(4))
                        ),
                        child: Icon(Icons.file_upload_outlined,color: Colors.white,size: 15,))
                  ],
                ),
                SizedBox(width: 543,),
                Container(
                  width: 100,
                  height: 32,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffC7C7C7), // Set border color
                          width: 1.0),
                      color: Color(0xffE9E9E9),
                      borderRadius: BorderRadius.all(Radius.circular(6))
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Filter",style: TextStyles.mobileMediumTitleTextStyle(),),
                      Icon(Icons.filter_alt_outlined,color: Colors.black,size: 14,)
                    ],
                  ),
                ),
              ],
            ):
            Row(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Recently Uploaded Documents",style:TextStyles.mobileMediumTitleTextStyle().copyWith(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.black),),
                    SizedBox(width: 9,),
                    Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Color(0xff243573),
                            borderRadius: BorderRadius.all(Radius.circular(4))
                        ),
                        child: Icon(Icons.file_upload_outlined,color: Colors.white,size: 14,))
                  ],
                ),
                SizedBox(width: 69,),
                Container(
                  width: 74,
                  height: 29,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffC7C7C7), // Set border color
                          width: 1.0),
                      color: Color(0xffE9E9E9),
                      borderRadius: BorderRadius.all(Radius.circular(6))
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Filter",style:  TextStyles.mobileMediumTitleTextStyle().copyWith(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.black),),
                      Icon(Icons.filter_alt_outlined,color: Colors.black,size: 14,)
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 21,),
            !Responsive.isMobile(context) ?
            Container(
              width: 1057,
              height: 268,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color(0xffE5E5E5), // Set border color
                    width: 1.0),
              ),
              child:SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    DataTable(
                      columnSpacing: 34,
                      columns: const <DataColumn>[
                        DataColumn(
                          label: Text(
                            'S.No.',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Document Name',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Due Date',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Document ID',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Category',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Upload Date',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Status',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Uploaded by',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Actions',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),
                          ),
                        ),
                      ],
                      rows: const <DataRow>[
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('2.',
                              style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('China Incident',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('09 Oct 2023',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('39842-231',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('Incident',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('09 Nov 2023',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('Submitted',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: AppColors.k32A329),
                            )),
                            DataCell(Text('USER 2',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Icon(Icons.edit,size: 20,)),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('3.',
                              style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('SMS Report',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('02 Oct 2023',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('39842-231',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('Report',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('02 Nov 2023',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('Approved',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: AppColors.k0091E2),
                            )),
                            DataCell(Text('USER 3',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Icon(Icons.edit,size: 20,)),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('1.',
                              style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('HSSE Checklist',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('20 Oct 2023',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('39842-231',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('Inspection',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('03 Nov 2023',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('Submitted',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: AppColors.k32A329),
                            )),
                            DataCell(Text('USER 1',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Icon(Icons.edit,size: 20,)),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('1.',
                              style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('HSSE Checklist',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('20 Oct 2023',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('39842-231',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('Inspection',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('03 Nov 2023',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Text('Submitted',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: AppColors.k32A329),
                            )),
                            DataCell(Text('USER 1',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black),
                            )),
                            DataCell(Icon(Icons.edit,size: 20,)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ):
            Container(
              width: 388,
              height: 260,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color(0xffE5E5E5), // Set border color
                    width: 1.0),
              ),
              child:SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    DataTable(
                      columnSpacing: 34,
                      columns: const <DataColumn>[
                        DataColumn(
                          label: Text(
                            'S.No.',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Report Name',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.black),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Report ID',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.black),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Category',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Submit by Week',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.black),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Submit By Date',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.black),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Assigned by',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.black),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Take Actions',
                            style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.black),
                          ),
                        ),
                      ],
                      rows: const <DataRow>[
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('1.',
                              style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('Fire Fighting Equipment',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('39842-231',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('Inspection',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('Week 43',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('03 Nov 2023',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize:11,color: AppColors.FF0000),
                            )),
                            DataCell(Text('Superintendent 1',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Icon(Icons.edit,size: 20,)),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('2.',
                              style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('Weekly Condition Maint..',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('39842-231',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('Incident',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('Week 44',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('09 Nov 2023',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: AppColors.FF0000),
                            )),
                            DataCell(Text('Fleet Manager',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Icon(Icons.edit,size: 20,)),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('3.',
                              style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('SMS Report',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('39842-231',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('Report',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('Week 43',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('01 Nov 2023',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: AppColors.k32A329),
                            )),
                            DataCell(Text('Master',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Icon(Icons.edit,size: 20,)),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('4.',
                              style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('LSA Weekly',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('39842-231',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('Inspection',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('Week 43',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Text('02 Nov 2023',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: AppColors.FF0000),
                            )),
                            DataCell(Text('Chief Engineer',    style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black),
                            )),
                            DataCell(Icon(Icons.edit,size: 20,)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
