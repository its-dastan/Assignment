import 'widgets/incident_date_time.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'widgets/incident_form_element.dart';
import 'pages.dart';

class DailyLogs extends StatefulWidget with NavigationStates {
  @override
  _DailyLogsState createState() => _DailyLogsState();
}

class _DailyLogsState extends State<DailyLogs> {
  Sex sex = Sex.male;

  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();

  Widget botttomSheetImage() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 2,
              width: 100,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Choose your photo",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlatButton.icon(
                onPressed: () {
                  takePhoto(ImageSource.camera);
                },
                icon: Icon(Icons.camera),
                label: Text("Camera"),
              ),
              FlatButton.icon(
                onPressed: () {
                  takePhoto(ImageSource.gallery);
                },
                icon: Icon(Icons.camera),
                label: Text("Gallery"),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget botttomSheetVideo() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 2,
              width: 100,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Choose your Video",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: FlatButton.icon(
              onPressed: () {
                takePhoto(ImageSource.camera);
              },
              icon: Icon(Icons.camera),
              label: Text("Gallery"),
            ),
          ),
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverPadding(
            padding: EdgeInsets.fromLTRB(35, 35, 20, 20),
            sliver: SliverToBoxAdapter(
              child: Center(
                child: Text(
                  "Daily Logs",
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
                        title: "Your Name:",
                        hintText: "Name",
                        icon: Icons.person_outline_outlined,
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
                                "Upload Your Recent Image:",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              height: 40,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xff47596E),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      _imageFile == null
                                          ? "upload image."
                                          : _imageFile.path.split('/').last,
                                      softWrap: true,
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      showModalBottomSheet(
                                        context: context,
                                        builder: ((builder) =>
                                            botttomSheetImage()),
                                      );
                                      print("Upload Image Is Clicked");
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.black,
                                      foregroundColor: Colors.blue,
                                      radius: 15,
                                      child: Icon(Icons.add),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      IncidentformElement(
                        title: "Your ID:",
                        hintText: "Id. No.:",
                        icon: Icons.pin_drop_outlined,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 28.0),
                                    child: Text(
                                      "Gender:",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
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
                          title: "Date and Time Of Entry:",
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: IncidentDateAndTime(
                          title: "Date and Time of Exit:",
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
                                "Upload Incident Video:",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              height: 40,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xff47596E),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      _imageFile == null
                                          ? "upload Video."
                                          : _imageFile.path.split('/').last,
                                      softWrap: true,
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      showModalBottomSheet(
                                        context: context,
                                        builder: ((builder) =>
                                            botttomSheetVideo()),
                                      );
                                      print("Upload Video Is Clicked");
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.black,
                                      foregroundColor: Colors.blue,
                                      radius: 15,
                                      child: Icon(Icons.add),
                                    ),
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
