import 'package:admin/constants.dart';
import 'package:admin/main/components/side_menu.dart';
import 'package:flutter/material.dart';

class AddDoctor extends StatelessWidget {
  const AddDoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Row(
      children: [
        SideMenu(),
        Card(
          color: secondaryColor,
          //elevation: 0,
          //borderOnForeground: false,

          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 83/100,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Add Doctor",style: TextStyle(color: Colors.lightBlue,fontSize: 20),),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: RawMaterialButton(
                        onPressed: (){},
                        fillColor: Colors.lightBlue,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Icon(Icons.download),
                            Text("Download",style: TextStyle(fontSize: 12),)
                          ],
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: RawMaterialButton(
                        onPressed: (){},
                        fillColor: Colors.lightBlue,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        child: Text("Add new Event",style: TextStyle(fontSize: 12),),

                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width ,
                    color: bgColor,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Basic Information",style: TextStyle(fontSize: 18),),
                            Text("Description text here",style: TextStyle(fontSize: 12),),
                            Padding(
                              padding: const EdgeInsets.all(30),
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'First Name',
                                        hintText: 'Enter First Name',
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 30,),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Last Name',
                                        hintText: 'Enter Last Name',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30,right: 30),
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Date of Birth',
                                        hintText: 'Enter Date of Birth',
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Gender',
                                        hintText: 'Enter Gender',
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 30,),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Speciality',
                                        hintText: 'Enter Speciality',
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Phone',
                                        hintText: 'Enter Phone',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(30),
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Email',
                                        hintText: 'Enter Email',
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 30,),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Website',
                                        hintText: 'Enter Website',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),


                          ]),
                    ),

                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}