import 'package:flutter/material.dart';

class DetailApproveView extends StatefulWidget {
  final String id;
  final String name;
  final String semester;
  final String pogram;
  final String university;

  const DetailApproveView({
    super.key,
    required this.id,
    required this.name,
    required this.semester,
    required this.pogram,
    required this.university,
  });

  @override
  State<DetailApproveView> createState() => _DetailApproveViewState();
}

class _DetailApproveViewState extends State<DetailApproveView> {
  String? _complexityLevel = 'Simple';
  String? _entrustmentLevel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'New Prosedur Log',
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  color: Colors.amber.withAlpha(86),
                  child: ListTile(
                    title: Text(
                      widget.name,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    leading: const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 32,
                      child: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: widget.semester,
                              style: const TextStyle(color: Colors.black)),
                          TextSpan(
                              text: '\n${widget.pogram}',
                              style: const TextStyle(color: Colors.black)),
                          TextSpan(
                              text: '\n${widget.university}',
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.amber.withAlpha(55),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Prosedure Log',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey, width: 1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                children: [
                                  Text('Detail'),
                                  Icon(Icons.arrow_forward_ios,
                                      size: 16, color: Colors.black),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          children: [
                            TextSpan(
                              text: 'Date: ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            WidgetSpan(
                              child: SizedBox(width: 120),
                            ),
                            TextSpan(
                              text: '2023-10-01',
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          children: [
                            TextSpan(
                              text: 'Time: ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            WidgetSpan(
                              child: SizedBox(
                                  width:
                                      119), // Ganti angka sesuai kebutuhan jaraknya
                            ),
                            TextSpan(
                              text: '12:02',
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          children: [
                            TextSpan(
                              text: 'Procedure: ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            WidgetSpan(
                              child: SizedBox(
                                  width:
                                      80), // Ganti angka sesuai kebutuhan jaraknya
                            ),
                            TextSpan(
                              text: 'TURP',
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          children: [
                            TextSpan(
                              text: 'Entrusment Level: ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            WidgetSpan(
                              child: SizedBox(
                                  width:
                                      32), // Ganti angka sesuai kebutuhan jaraknya
                            ),
                            TextSpan(
                              text: 'Inderect Supervision',
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Notes',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey, width: 1),
                        ),
                        child: Text(
                          'This is a sample note for the procedure log. It can contain any relevant information about the procedure.',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.amber.withAlpha(55),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Radio<String>(
                              value: 'Simple',
                              groupValue: _complexityLevel,
                              onChanged: (String? value) {
                                setState(() {
                                  _complexityLevel = value;
                                });
                              },
                            ),
                            Text('Simple'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.amber.withAlpha(55),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Radio<String>(
                              value: 'Moderate',
                              groupValue: _complexityLevel,
                              onChanged: (String? value) {
                                setState(() {
                                  _complexityLevel = value;
                                });
                              },
                            ),
                            Text('Moderate'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10), // Add space between buttons
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.amber.withAlpha(55),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Radio<String>(
                              value: 'Complex',
                              groupValue: _complexityLevel,
                              onChanged: (String? value) {
                                setState(() {
                                  _complexityLevel = value;
                                });
                              },
                            ),
                            Text('Complex'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Entrustment Level',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 16),
                      _buildRadioButton(
                          'Limited Participation',
                          'Limited Participation',
                          'Resident has basic knowledge of the clinical knowledge and the procedure, but need full supervision or only allowed to observe.'),
                      _buildRadioButton(
                          'Direct Supervision',
                          'Direct Supervision',
                          'Resident requires full supervision and guidance from the instructor to perform the procedure.'),
                      _buildRadioButton(
                          'Indirect Supervision',
                          'Indirect Supervision',
                          'Resident has gained proficiency but still requires supervision and guidance when needed from the instructor to perform the procedure.'),
                      _buildRadioButton('Practice Ready', 'Practice Ready',
                          'Resident can confidently perform the procedure and has gained proficiency, without needing additional supervision or guidance.'),
                      _buildRadioButton('Can Teach', 'Can Teach',
                          'Resident can teach and guide their peers on how to perform the procedure.'),
                      SizedBox(height: 20),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              'Lorem Ipsum Dolor Sit Amet',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),
                          Spacer(),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              icon: Icon(Icons.mic, color: Colors.blue),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Approve',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRadioButton(String title, String value, String subtitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Radio<String>(
              value: value,
              groupValue: _entrustmentLevel,
              onChanged: (String? newValue) {
                setState(() {
                  _entrustmentLevel = newValue;
                });
              },
            ),
            Text(title),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: Text(
            subtitle,
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
