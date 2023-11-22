import 'package:admin/main/components/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';
import '../../../models/doctorData.dart';
import 'addDoctor.dart';

class DoctorScreen extends StatelessWidget {
  const DoctorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        //backgroundColor: Colors.black,
        body: Row(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

           SideMenu(),
            SingleChildScrollView(
              child: Expanded(
                child: Container(
                  padding: EdgeInsets.all(defaultPadding),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width * 83/100,
                  decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //SizedBox(height: defaultPadding,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Doctor List",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          RawMaterialButton(
                              fillColor: Colors.lightBlue,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              child: Text("Add Doctor",style: TextStyle(color: Colors.white,fontSize: 12),),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddDoctor()));
                              }
                          ),
                        ],
                      ),

                      SizedBox(height: defaultPadding,),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          fillColor: secondaryColor,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                          ),
                          suffixIcon: InkWell(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(defaultPadding * 0.75),
                              margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                              ),
                              child: SvgPicture.asset("assets/icons/Search.svg"),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: DataTable(
                          columnSpacing: defaultPadding,
                          // minWidth: 600,
                          columns: [
                            DataColumn(
                              label: Text("Media"),
                            ),
                            DataColumn(
                              label: Text("ID"),
                            ),
                            DataColumn(
                              label: Text("Name"),
                            ),
                            DataColumn(
                              label: Text("Age"),
                            ),
                            DataColumn(
                              label: Text("Address"),
                            ),
                            DataColumn(
                              label: Text("Number"),
                            ),
                            DataColumn(
                              label: Text("Last Visit"),
                            ),
                            DataColumn(
                              label: Text("Status"),
                            ),
                          ],
                          rows: List.generate(
                            demoRecentFiles.length,
                                (index) => recentFileDataRow(demoRecentFiles[index]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}

DataRow recentFileDataRow(RecentFile fileInfo) {
  return DataRow(
    cells: [
      // DataCell(
      //   Row(
      //     children: [
      //       SvgPicture.asset(
      //         fileInfo.icon!,
      //         height: 30,
      //         width: 30,
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      //         child: Text(fileInfo.title!),
      //       ),
      //     ],
      //   ),
      // ),
      //DataCell(Text(fileInfo.icon!)),
      DataCell(SvgPicture.asset(fileInfo.icon!,height: 30,width: 30,)),
      DataCell(Text(fileInfo.id!)),
      DataCell(Text(fileInfo.name!)),
      DataCell(Text(fileInfo.age!)),
      DataCell(Text(fileInfo.address!)),
      DataCell(Text(fileInfo.number!)),
      DataCell(Text(fileInfo.lastVisit!)),
      DataCell(Text(fileInfo.status!)),
    ],
  );
}