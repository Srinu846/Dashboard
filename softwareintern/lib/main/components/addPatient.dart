import 'package:admin/constants.dart';
import 'package:admin/main/components/side_menu.dart';
import 'package:flutter/material.dart';

class AddPatient extends StatefulWidget {

  const AddPatient({Key? key}) : super(key: key);

  @override
  State<AddPatient> createState() => _AddPatientState();
}

class _AddPatientState extends State<AddPatient> {
  List<String> genders = ['Male','Female','Other'];
   String selectedGender = 'Male';
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            SideMenu(),
            SingleChildScrollView(
              child: Expanded(
                child: Card(
                  color: secondaryColor,
                  //elevation: 0,
                  //borderOnForeground: false,

                  child: SizedBox(
                    height: MediaQuery.of(context).size.width * 70/100,
                    width: MediaQuery.of(context).size.width * 83/100,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Add Patient",style: TextStyle(color: Colors.lightBlue,fontSize: 20),),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: RawMaterialButton(
                                onPressed: (){},
                                fillColor: Colors.lightBlue,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  children: [
                                    Icon(Icons.download),
                                    Text("Download report",style: TextStyle(fontSize: 12),)
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
                                child: Row(
                                  children: [
                                    Icon(Icons.telegram),
                                    Text("Send report",style: TextStyle(fontSize: 12),),
                                  ],
                                ),

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
                                    Text("Description text here...",style: TextStyle(fontSize: 12),),
                                    Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Row(
                                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Patient ID',
                                                hintText: 'Enter First Name',
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 20,),
                                          Expanded(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'First Name',
                                                hintText: 'Enter First Name',
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 20,),
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
                                      padding: const EdgeInsets.all(20),
                                      child: Row(
                                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        //crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 300.0,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Mobile',
                                                hintText: 'Enter Mobile No.',
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 15,),
                                          Expanded(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Address',
                                                hintText: 'Enter your Address',
                                              ),
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Row(
                                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 400.0,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Doctor Name',
                                                hintText: 'Enter the Doctor Name',
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 15,),
                                          Expanded(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Hospital Name',
                                                hintText: 'Enter the Hospital Name',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Text("Personal Information:",style: TextStyle(fontSize: 20.0),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Row(
                                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        //crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 300.0,
                                            child: DropdownButtonFormField<String>(
                                              decoration: const InputDecoration(border: OutlineInputBorder()),
                                              hint: Text("Please choose your Gender"),
                                              value: selectedGender,
                                              onChanged: (newValue){
                                                setState(() {
                                                  selectedGender = newValue!;
                                                });
                                              },
                                              items: genders.map((location) {
                                                return DropdownMenuItem(
                                                  child: new Text(location),
                                                  value: location,);
                                              }).toList(),
                                            ),
                                          ),
                                          SizedBox(width: 15,),
                                          Expanded(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Date Of Birth',
                                                hintText: 'Enter your DOB',
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 15,),
                                          Expanded(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'AADHAR',
                                                hintText: 'Enter your Aadhar',
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 15,),
                                          Expanded(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'PAN',
                                                hintText: 'Enter your PAN',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Row(
                                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Blood Group',
                                                hintText: 'Enter your Blood Group',
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 15,),
                                          Expanded(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Medical Conditions',
                                                hintText: 'Enter your Medical Conditions',
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 15,),
                                          Expanded(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Reports',
                                                hintText: 'Enter your Reports',
                                              ),
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Text("Social Media Information:",style: TextStyle(fontSize: 20.0),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Row(
                                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Facebook Id',
                                                hintText: 'Enter your Facebook Id',
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 15,),
                                          Expanded(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Twitter Id',
                                                hintText: 'Enter your Twitter Id',
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 15,),
                                          Expanded(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Linked Id',
                                                hintText: 'Enter your Linked Id',
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 15,),
                                          Expanded(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Instagram Id',
                                                hintText: 'Enter your Instagram Id',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Text("Billing Information:",style: TextStyle(fontSize: 20.0),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Row(
                                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Invoice No.',
                                                hintText: 'Enter your Invoice No.',
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 15,),
                                          Expanded(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Invoice Amount',
                                                hintText: 'Enter your Invoice Amount',
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 15,),
                                          Expanded(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Invoice Date',
                                                hintText: 'Enter your Invoice Date',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),


                                  ]),
                            ),

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}