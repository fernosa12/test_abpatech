import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_clean_architecture/presentations/home/home.dart';

import 'package:test_clean_architecture/router/router.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
  // Widget wrappedRoute(BuildContext context) {
  //   return BlocProvider<HomeCubit>(
  //     create: (context) => di(),
  //     child: this,
  //   );
  // }
}

class _HomeViewState extends State<HomeView> {
  List<DataItem> items = [
    DataItem(
        title: 'Active Assesment',
        description: 'Last entry: 10 april 2025',
        id: '1'),
    DataItem(
        title: 'Accept Assesment',
        description: 'Last entry: 10 april 2025',
        id: '2'),
    DataItem(
        title: 'Reject Assesment',
        description: 'Last entry: 10 april 2025',
        id: '3'),
    DataItem(
        title: 'Expired Assesment',
        description: 'Last entry: 10 april 2025',
        id: '4'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Assessment List",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          Color containerColor;
          switch (items[index].id) {
            case '1':
              containerColor = Colors.amber.withAlpha(55);
              break;
            case '2':
              containerColor = Colors.blue.withAlpha(95);
              break;
            case '3':
              containerColor = Colors.red.withAlpha(85);
              break;
            case '4':
              containerColor = Colors.grey.withAlpha(85);
              break;
            default:
              containerColor = Colors.green;
          }

          return Card(
            margin: EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                color: containerColor,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(15),
              child: ExpansionTile(
                title: Text(items[index].title),
                subtitle: Text(items[index].description),
                trailing: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.chevron_right_rounded,
                        color: Colors.black,
                      )),
                ),
                children: students.map((student) {
                  return ExpansionTile(
                    title: Text(
                      student.name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 32,
                      child: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                    ),
                    trailing: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.notifications)),
                    ),
                    subtitle: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: student.semester,
                              style: TextStyle(color: Colors.black)),
                          TextSpan(
                              text: '\n${student.program}',
                              style: TextStyle(color: Colors.black)),
                          TextSpan(
                              text: '\n${student.university}',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: 'Date: 20-05-2025',
                                      style: TextStyle(color: Colors.black)),
                                  TextSpan(
                                      text: '\nTime: 12:00 ',
                                      style: TextStyle(color: Colors.black)),
                                  TextSpan(
                                      text: '\nProcedure: TUP',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                            Spacer(),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.cancel,
                                    color: Colors.red,
                                  )),
                            ),
                            SizedBox(width: 10),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: IconButton(
                                  onPressed: () {
                                    String id = students[index].id;
                                    String name = students[index].name;
                                    String semester = students[index].semester;
                                    String program = students[index].program;
                                    String university =
                                        students[index].university;

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DetailApproveView(
                                          id: id,
                                          name: name,
                                          semester: semester,
                                          pogram: program,
                                          university: university,
                                        ),
                                      ),
                                    );
                                  },
                                  icon: Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),
          );
        },
      ),
    );
  }
}

class DataItem {
  final String title;
  final String description;
  final String id;

  DataItem({required this.title, required this.description, required this.id});
}

class Student {
  final String name;
  final String semester;
  final String program;
  final String university;
  final String id;

  Student({
    required this.name,
    required this.semester,
    required this.program,
    required this.university,
    required this.id,
  });
}

List<Student> students = [
  Student(
      name: 'Sidick Mochtar',
      semester: 'Semester 4',
      program: 'PPDS urologi',
      university: 'Universitas Indonesia',
      id: "1"),
  Student(
    name: 'Naomi Marbun',
    semester: 'Semester 4',
    program: 'PPDS urologi',
    university: 'Universitas Indonesia',
    id: "2",
  ),
  Student(
      name: 'Reno Pino Putra',
      semester: 'Semester 4',
      program: 'PPDS urologi',
      university: 'Universitas Indonesia',
      id: "3"),
];
