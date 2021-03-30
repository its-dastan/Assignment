import 'package:flutter/material.dart';

class IncidentformElement extends StatelessWidget {
  final String title;
  final String hintText;
  final IconData icon;

  const IncidentformElement({
    Key key,
    this.title,
    this.hintText,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xff47596E),
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.white30),
              suffixIcon: Icon(
                icon,
                color: Colors.black,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(25.7),
              ),
              enabledBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(25.7),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IncidentformElementSmall extends StatelessWidget {
  final double width;
  final String title;
  final String hintText;
  final IconData icon;

  const IncidentformElementSmall(
      {Key key, this.width, this.title, this.hintText, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        Container(
          width: width * 0.4,
          child: TextField(
            style: TextStyle(color: Colors.white),
            decoration: new InputDecoration(
              filled: true,
              fillColor: Color(0xff47596E),
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.white30),
              // labelText: 'Life story',
              suffixIcon: Icon(
                icon,
                color: Colors.black,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: new BorderRadius.circular(25.7),
              ),
              enabledBorder: UnderlineInputBorder(
                borderRadius: new BorderRadius.circular(25.7),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
