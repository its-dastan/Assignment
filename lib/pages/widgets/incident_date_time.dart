import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

class IncidentDateAndTime extends StatelessWidget {
  final String title;

  final format = DateFormat("yyyy-MM-dd HH:mm");

  IncidentDateAndTime({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
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
        DateTimeField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xff47596E),
            hintText: "Date And Time",
            hintStyle: TextStyle(color: Colors.white30),
            suffixIcon: Icon(
              Icons.timer,
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
          format: format,
          onShowPicker: (context, currentValue) async {
            final date = await showDatePicker(
                context: context,
                firstDate: DateTime(1900),
                initialDate: currentValue ?? DateTime.now(),
                lastDate: DateTime(2100));
            if (date != null) {
              final time = await showTimePicker(
                context: context,
                initialTime:
                    TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
              );
              return DateTimeField.combine(date, time);
            } else {
              return currentValue;
            }
          },
        )
      ],
    );
  }
}
