import 'package:flutter/material.dart';

class ProjectsWindow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Projects",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProjectsPage(),
    );
  }
}

class ProjectsPage extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<ProjectsPage> {
  List projectList = List.generate(100, (i) => '$i');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      appBar: AppBar(
        title: Text("Projects"),
      ),
       */
      body: ListView.builder(
        itemCount: projectList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 100.0,
            // ignore: deprecated_member_use
            child: FlatButton(
                child: Text('listItem' + projectList[index]), onPressed: () {}),
          );
        },
      ),
    );
  }
}
