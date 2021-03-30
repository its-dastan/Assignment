import 'widgets/incident_date_time.dart';

import '../bloc.navigation_bloc/navigation_bloc.dart';
import 'package:flutter/material.dart';

import 'widgets/incident_form_element.dart';

class IncidentReport extends StatefulWidget with NavigationStates {
  @override
  _IncidentReportState createState() => _IncidentReportState();
}

enum Sex { male, female }

class _IncidentReportState extends State<IncidentReport> {
  Sex sex = Sex.male;
  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverPadding(
            padding: EdgeInsets.fromLTRB(60, 35, 20, 20),
            sliver: SliverToBoxAdapter(
              child: Center(
                child: Text(
                  "Incident Form",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: "cambria",
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(15, 15, 10, 20),
            sliver: SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff504F4C).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(30)),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IncidentformElement(
                        title: "Name Of The Reporter:",
                        hintText: "Name Of The Reporter:",
                        icon: Icons.person_outline_outlined,
                      ),
                      IncidentformElement(
                        title: "Name Of The Victim:",
                        hintText: "Name Of The Victim:",
                        icon: Icons.person_outline_outlined,
                      ),
                      IncidentformElement(
                        title: "Address Of The Victim:",
                        hintText: "Address Of The Victim:",
                        icon: Icons.pin_drop_outlined,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IncidentformElementSmall(
                              width: width,
                              title: "Victim's Ph. No.: ",
                              hintText: 'Phone Number',
                              icon: Icons.contact_phone_outlined,
                            ),
                            IncidentformElementSmall(
                              width: width,
                              title: "Reporter's Ph. No.:",
                              hintText: 'Phone Number',
                              icon: Icons.contact_phone_outlined,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: width * 0.4,
                              child: Column(
                                children: [
                                  Text(
                                    "Sex of Victim:",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  RadioListTile<Sex>(
                                    activeColor: Colors.white,
                                    dense: true,
                                    title: const Text(
                                      'Male',
                                      style: TextStyle(
                                        color: Colors.white30,
                                      ),
                                    ),
                                    value: Sex.male,
                                    groupValue: sex,
                                    onChanged: (Sex value) {
                                      setState(() {
                                        sex = value;
                                      });
                                    },
                                  ),
                                  RadioListTile<Sex>(
                                    activeColor: Colors.white,
                                    dense: true,
                                    title: const Text(
                                      'Female',
                                      style: TextStyle(
                                        color: Colors.white30,
                                      ),
                                    ),
                                    value: Sex.female,
                                    groupValue: sex,
                                    onChanged: (Sex value) {
                                      setState(() {
                                        sex = value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: width * 0.4,
                              child: Column(
                                children: [
                                  Text(
                                    "Sex of Reporter:",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  RadioListTile<Sex>(
                                    activeColor: Colors.white,
                                    dense: true,
                                    title: const Text(
                                      'Male',
                                      style: TextStyle(
                                        color: Colors.white30,
                                      ),
                                    ),
                                    value: Sex.male,
                                    groupValue: sex,
                                    onChanged: (Sex value) {
                                      setState(() {
                                        sex = value;
                                      });
                                    },
                                  ),
                                  RadioListTile<Sex>(
                                    activeColor: Colors.white,
                                    dense: true,
                                    title: const Text(
                                      'Female',
                                      style: TextStyle(
                                        color: Colors.white30,
                                      ),
                                    ),
                                    value: Sex.female,
                                    groupValue: sex,
                                    onChanged: (Sex value) {
                                      setState(() {
                                        sex = value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: IncidentDateAndTime(
                          title: "Date And Time Of Incident:",
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: IncidentDateAndTime(
                          title: "Date Of Report:",
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 14.0),
                              child: Text(
                                "Description of Incident: ",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color(0xff47596E),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: TextField(
                                maxLines: 2,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(color: Colors.white30),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: GestureDetector(
                          onTap: () {
                            print("Submit is pressed");
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 35.0, vertical: 10),
                            child: Container(
                              alignment: Alignment.center,
                              height: 30,
                              width: 90,
                              decoration: BoxDecoration(
                                  color: Color(0Xff6730EC),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                "Submit",
                                style: TextStyle(
                                  fontFamily: "cambria",
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
