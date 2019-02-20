import 'package:flutter/material.dart';
import 'package:flutter_mvp/AppConfig.dart';
import 'package:flutter_mvp/data/Notes/Note.dart';
import 'package:flutter_mvp/screens/Presenter/IMyHomePage2.dart';
import 'package:flutter_mvp/screens/Presenter/MyHomePage2Presenter.dart';
import 'package:flutter_mvp/util/createId.dart';

class MyHomePage2 extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage2>
    implements IMyHomePage2Contract {
  MyHomePage2Presenter _presenter;

  _MyHomePageState() {
    _presenter = MyHomePage2Presenter(this);
  }

  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(config.appName),
      ),
      body: new Center(
        child: Column(children: <Widget>[
          Container(
            color: Colors.red,
            child: GestureDetector(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Every value is hardcoded in the app.
                  // No development or production variants exist yet.
                  new Text('This is the ${config.flavorName} app.'),
                  new Text('Backend API url is ${config.apiBaseUrl}'),
                ],
              ),
              onTap: () {
                Note note = new Note("7", "title222222222222222222",
                    "dat222222222222222222222222222a");
                _presenter.insert(note);
              },
            ),
          ),
          Container(
            color: Colors.yellow,
            child: GestureDetector(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Every value is hardcoded in the app.
                  // No development or production variants exist yet.
                  new Text('This is the ${config.flavorName} app.'),
                  new Text('Backend API url is ${config.apiBaseUrl}'),
                ],
              ),
              onTap: () {
               String a = IdU();
               print(a);
              },
            ),
          ),
        ]),
      ),
    );
  }

  @override
  void onLoadNotes(List<Note> notes) {
    setState(() {
      print('inserted row id: ${notes[0].getTitle()}');
    });
  }

  @override
  void onLoadNotesError() {
    // TODO: implement onLoadNotesError
  }
}
