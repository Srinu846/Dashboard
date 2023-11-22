import 'package:admin/models/barGraph.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:admin/responsive.dart';
//import 'package:admin/screens/dashboard/components/my_fields.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/header.dart';

import 'components/recent_files.dart';
//import 'components/list1.dart';
//import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({Key? key}) : super(key: key);
  final List<BarChartModel> data = [
    BarChartModel(year: "Aug 01", financial: 250, color: charts.ColorUtil.fromDartColor(Colors.lightBlue) ),
    BarChartModel(year: "Aug 02", financial: 750, color: charts.ColorUtil.fromDartColor(Colors.lightBlue) ),
    BarChartModel(year: "Aug 03", financial: 850, color: charts.ColorUtil.fromDartColor(Colors.lightBlue) ),
    BarChartModel(year: "Aug 04", financial: 450, color: charts.ColorUtil.fromDartColor(Colors.lightBlue) ),
    BarChartModel(year: "Aug 05", financial: 350, color: charts.ColorUtil.fromDartColor(Colors.lightBlue) ),
    BarChartModel(year: "Aug 06", financial: 300, color: charts.ColorUtil.fromDartColor(Colors.lightBlue) ),
    BarChartModel(year: "Aug 07", financial: 150, color: charts.ColorUtil.fromDartColor(Colors.lightBlue) ),
    BarChartModel(year: "Aug 08", financial: 800, color: charts.ColorUtil.fromDartColor(Colors.lightBlue) ),
    BarChartModel(year: "Aug 09", financial: 420, color: charts.ColorUtil.fromDartColor(Colors.lightBlue) ),
    BarChartModel(year: "Aug 10", financial: 640, color: charts.ColorUtil.fromDartColor(Colors.lightBlue) ),
    BarChartModel(year: "Aug 11", financial: 350, color: charts.ColorUtil.fromDartColor(Colors.lightBlue) ),
    BarChartModel(year: "Aug 12", financial: 750, color: charts.ColorUtil.fromDartColor(Colors.lightBlue) )

  ];
  @override
  Widget build(BuildContext context) {

    List<charts.Series<BarChartModel, String>> Series = [
      charts.Series(
          id: "financial",
          data: data,
          domainFn: (BarChartModel series, _)=> series.year,
          measureFn: (BarChartModel series, _)=> series.financial,
          colorFn: (BarChartModel series, _)=> series.color
      )

    ];



    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 400),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 125,
                          width: 270,
                          color: secondaryColor,
                          child: Row(

                            children: [

                              Padding(
                                padding: const EdgeInsets.all(21.0),
                                child: Column(
                                  //mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("TOTAL PATIENTS",style: TextStyle(fontSize: 20,color: Colors.white),),
                                    Row(
                                      children: [
                                        Text("3,251  ",style: TextStyle(fontSize: 22,color: Colors.white),),
                                        Text("13%",style: TextStyle(fontSize: 14,color: Colors.white54),),
                                      ],
                                    ),
                                    Text("Analytics for last week",style: TextStyle(fontSize: 12,color: Colors.white54),)

                                  ],),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 30),
                                child:  Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white54,
                                  ),
                                  child: Icon(Icons.person, color: Colors.white,),
                                  alignment: Alignment.center,
                                ),
                              )
                            ],
                          )
                      ),
                      SizedBox(height: defaultPadding),
                      Container(
                          height: 125,
                          width: 270,
                          color: secondaryColor,
                          child: Row(

                            children: [

                              Padding(
                                padding: const EdgeInsets.all(21.0),
                                child: Column(
                                  //mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("SURGERY",style: TextStyle(fontSize: 20,color: Colors.white),),
                                    Row(
                                      children: [
                                        Text("24  ",style: TextStyle(fontSize: 22,color: Colors.white),),
                                        Text("8.2%",style: TextStyle(fontSize: 14,color: Colors.white54),),
                                      ],
                                    ),
                                    Text("Analytics for last week",style: TextStyle(fontSize: 12,color: Colors.white54),)

                                  ],),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 30,left: 14),
                                child:  Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white54,
                                  ),
                                  child: Icon(Icons.medication, color: Colors.white,),
                                  alignment: Alignment.center,
                                ),
                              )
                            ],
                          )
                      ),
                      SizedBox(height: defaultPadding),
                      Container(
                          height: 125,
                          width: 270,
                          color: secondaryColor,
                          child: Row(

                            children: [

                              Padding(
                                padding: const EdgeInsets.all(21.0),
                                child: Column(
                                  //mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("TOTAL VISITORS",style: TextStyle(fontSize: 20,color: Colors.white),),
                                    Row(
                                      children: [
                                        Text("351  ",style: TextStyle(fontSize: 22,color: Colors.white),),
                                        Text("8.2%",style: TextStyle(fontSize: 14,color: Colors.white54),),
                                      ],
                                    ),
                                    Text("Analytics for last week",style: TextStyle(fontSize: 12,color: Colors.white54),)

                                  ],),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 30),
                                child:  Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white54,
                                  ),
                                  child: Icon(Icons.visibility, color: Colors.white,),
                                  alignment: Alignment.center,
                                ),
                              )
                            ],
                          )
                      ),
                      SizedBox(height: defaultPadding),
                      Container(
                          height: 125,
                          width: 270,
                          color: secondaryColor,
                          child: Row(

                            children: [

                              Padding(
                                padding: const EdgeInsets.all(21.0),
                                child: Column(
                                  //mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("HAPPY CLIENTS",style: TextStyle(fontSize: 20,color: Colors.white),),
                                    Row(
                                      children: [
                                        Text("780  ",style: TextStyle(fontSize: 22,color: Colors.white),),
                                        Text("",style: TextStyle(fontSize: 14,color: Colors.white54),),
                                      ],
                                    ),
                                    Text("Analytics for last week",style: TextStyle(fontSize: 12,color: Colors.white54),)

                                  ],),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 30,left: 5),
                                child:  Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white54,
                                  ),
                                  child: Icon(Icons.thumb_up, color: Colors.white,),
                                  alignment: Alignment.center,
                                ),
                              )
                            ],
                          )
                      ),

                    ],
                  ),
                ),
                SizedBox(width: defaultPadding),
                Padding(
                  padding: const EdgeInsets.only(bottom: 370),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total Revenue",style: TextStyle(color: Colors.white,fontSize: 19),),
                      SizedBox(height: defaultPadding),
                      // SizedBox(height: defaultPadding),
                      Row(
                        children: [
                          Container(
                              height: 130,
                              width: 260,
                              color: Colors.lightGreen,

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Row(
                                      children: [
                                        Icon(Icons.wallet,size: 34,),
                                        SizedBox(width: defaultPadding),
                                        Text("7,12,326\$",style: TextStyle(fontSize: 24),)

                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 18),
                                    child: Text("Operation Income",style: TextStyle(fontSize: 16),),
                                  )
                                ],
                              )
                          ),

                          SizedBox(width: defaultPadding),


                          Container(
                              height: 130,
                              width: 260,
                              color: Colors.lightBlue,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Row(
                                      children: [
                                        Icon(Icons.wallet,size: 34,),
                                        SizedBox(width: defaultPadding),
                                        Text("25,965\$",style: TextStyle(fontSize: 24),)

                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 18),
                                    child: Text("Pharmacy Income",style: TextStyle(fontSize: 16),),
                                  )
                                ],
                              )
                          ),

                          SizedBox(width: defaultPadding),


                          Container(
                              height: 130,
                              width: 260,
                              color: Colors.redAccent,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Row(
                                      children: [
                                        Icon(Icons.wallet,size: 34,),
                                        SizedBox(width: defaultPadding),
                                        Text("14965\$",style: TextStyle(fontSize: 24),)

                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 18),
                                    child: Text("Hospital Expenses",style: TextStyle(fontSize: 16),),
                                  )
                                ],
                              )
                          ),
                        ],
                      ),

                      SizedBox(height: defaultPadding),

                      Container(
                        padding: EdgeInsets.all(10),
                        height: 340,
                        width: 807,
                        color: Color(0xffF8F0E5),
                        child:

                        charts.BarChart(
                          Series,
                          behaviors: [

                            // charts.ChartTitle("Operation"),
                            charts.ChartTitle("Pharmacy    Operation")
                          ],
                          animate: true,
                        ),


                      )

                    ],
                  ),
                ),



              ],
            )


            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Expanded(
            //       flex: 5,
            //       child: Column(
            //         children: [
            //           MyFiles(),
            //           SizedBox(height: defaultPadding),
            //           RecentFiles(),
            //           if (Responsive.isMobile(context))
            //             SizedBox(height: defaultPadding),
            //           //if (Responsive.isMobile(context)) StorageDetails(),
            //         ],
            //       ),
            //     ),
            //     if (!Responsive.isMobile(context))
            //       SizedBox(width: defaultPadding),
            //     // On Mobile means if the screen is less than 850 we don't want to show it
            //     // if (!Responsive.isMobile(context))
            //     //   Expanded(
            //     //     flex: 2,
            //     //     child: StorageDetails(),
            //     //   ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}