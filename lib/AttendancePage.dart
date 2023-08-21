import 'package:flutter/material.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({super.key});

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {

  String _subject1Value = 'Present';
  String _subject2Value = 'Present';
  String _subject3Value = 'Present';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            Container(
              color: Colors.lightBlue[200],
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage('https://w7.pngwing.com/pngs/81/570/png-transparent-profile-logo-computer-icons-user-user-blue-heroes-logo-thumbnail.png'),
                          radius: 25,
                        ),

                        SizedBox(width: 10,),

                        Text(
                            "Nouman Ahmed", style: TextStyle(
                          color: Colors.white
                        ),
                        ),

                        SizedBox(width: 170,),

                        Icon(
                            Icons.notifications,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 30,),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text("THE  ", style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                        ),),
                        Text("TUITIONIST", style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),)
                      ],
                    ),
                  ),


                  SizedBox(height: 60,),

                ],

              ),
            ),

            SizedBox(height: 60,),

            Text("Attendance", style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500
            ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Islamic Study:',
                    style: TextStyle(fontSize: 18),
                  ),
                  DropdownButton<String>(
                    value: _subject1Value,
                    onChanged: (newValue) {
                      setState(() {
                        _subject1Value = newValue!;
                      });
                    },
                    items: <String>['Present', 'Absent', 'Leave']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Pysics:',
                    style: TextStyle(fontSize: 18),
                  ),
                  DropdownButton<String>(
                    value: _subject2Value,
                    onChanged: (newValue) {
                      setState(() {
                        _subject2Value = newValue!;
                      });
                    },
                    items: <String>['Present', 'Absent', 'Leave']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'English I:',
                    style: TextStyle(fontSize: 18),
                  ),
                  DropdownButton<String>(
                    value: _subject3Value,
                    onChanged: (newValue) {
                      setState(() {
                        _subject3Value = newValue!;
                      });
                    },
                    items: <String>['Present', 'Absent', 'Leave']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),



          ],
        ),
      ),
    );

  }
}
