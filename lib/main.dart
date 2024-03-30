import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/dracula.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coding Test App',
      theme: ThemeData(
        primaryColor: const Color(0xFF1E1E1E),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: CodingTestApp(),
    );
  }
}

class CodingTestApp extends StatefulWidget {
  @override
  _CodingTestAppState createState() => _CodingTestAppState();
}

class _CodingTestAppState extends State<CodingTestApp> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController _controller = TextEditingController();
  String _code = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Coding Test App'),
        backgroundColor: const Color(0xFF1E1E1E),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                _scaffoldKey.currentState?.openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF1E1E1E),
              ),
      padding: EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP.Q_vZZcSYOaPMcxnXMQQ99QAAAA?rs=1&pid=ImgDetMain"), // Add your custom image
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Harshita Sharma',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.account_circle, color: Color(0xFF1E1E1E)),
              title: const Text('My Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.assignment, color: Color(0xFF1E1E1E)),
              title: const Text('Contests'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.check_circle, color: Color(0xFF1E1E1E)),
              title: const Text('Plagiarism Check'),
              onTap: () {

              },
            ),
            ListTile(
              leading: const Icon(Icons.assignment, color: Color(0xFF1E1E1E)),
              title: const Text('Practice Problems'),
              onTap: () {

              },
            ),
            ListTile(
              leading: const Icon(Icons.timeline, color: Color(0xFF1E1E1E)),
              title: const Text('My Progress'),
              onTap: () {

              },
            ),
            ListTile(
              leading: const Icon(Icons.help, color: Color(0xFF1E1E1E)),
              title: const Text('Help'),
              onTap: () {

              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16.0),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'Reverse a String',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Problem Statement:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'Write a function that takes a string as input and returns the reverse of the string.',
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16.0),
                          topLeft: Radius.circular(16.0),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Example',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 1.0),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  color: Colors.white,
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Input:   ',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8.0),
                                Expanded(
                                  child: Container(
                                    color: const Color(0xFF57E94A).withOpacity(0.6),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'Hello',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 1.0),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  color: Colors.white,
                                  child: const Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Text(
                                      'Output:  ',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8.0),
                                Expanded(
                                  child: Container(
                                    color: const Color(0xFF57E94A).withOpacity(0.6),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'olleh',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFD9D9D9),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Constraints',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'The input string will consist of lowercase alphabets only',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      children: [
                        Flexible(
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFF161D25),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(16.0),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'reverse_string.cpp',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      color: const Color(0xFF161D25),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 10.0,
                          left: 20.0,
                          right: 20.0,
                          bottom: 240.0,
                        ),
                        child: Container(
                          color: const Color(0xFF161D25),
                          child: HighlightView(
                            _code,
                            language: 'cpp',
                            theme: draculaTheme,
                          ),
                        ),
                      ),
                    ),
                    TextField(
                      controller: _controller,
                      decoration: const InputDecoration(

                        hintText: 'Enter your code here...',
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Color(0xFF161D25),
                      ),
                      maxLines: null,
                      onChanged: (value) {
                        setState(() {
                          _code = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF57E94A),
                ),
                child: const Text('Submit'),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF17A2B8),
                ),
                icon: const Icon(Icons.play_arrow),
                label: const Text('Run'),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFDC3545),
                ),
                child: const Text('Plagiarism Check'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
