import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  TextEditingController textFieldController1 = TextEditingController();
  TextEditingController textFieldController2 = TextEditingController();

  int hasil =0;
  int angka1 = 0;
  int angka2 = 0;

  tambah(){
    setState(() {
      angka1 = int.parse(textFieldController1.text);
      angka2 = int.parse(textFieldController2.text);
      
      hasil = angka1 + angka2;

    });
  }

  kali(){
    setState(() {
      angka1 = int.parse(textFieldController1.text);
      angka2 = int.parse(textFieldController2.text);
      
      hasil = angka1 * angka2;

    });
  }

  kurang(){
    setState(() {
      angka1 = int.parse(textFieldController1.text);
      angka2 = int.parse(textFieldController2.text);
      
      hasil = angka1 - angka2;

    });
  }

  bagi(){
    setState(() {
      angka1 = int.parse(textFieldController1.text);
      angka2 = int.parse(textFieldController2.text);
      
      hasil = angka1 ~/ angka2;

    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100,left: 20, right: 20),
        child: Column(
          children: [
            Text('Hasil : $hasil', style: TextStyle(fontSize: 20),),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: TextField(
                controller: textFieldController1,
                decoration: InputDecoration(
                  labelText: "Inputkan Angka 1",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: TextField(
                controller: textFieldController2,
                decoration: InputDecoration(
                  labelText: "Inputkan Angka 2",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top :20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 100,
                    height: 35,
                    child: ElevatedButton(onPressed: (){
                      tambah();
                      textFieldController1.clear();
                      textFieldController2.clear();
                    }, child: Text("+")),
                  ),
                  SizedBox(
                    width: 100,
                    height: 35,
                    child: ElevatedButton(onPressed: (){
                      kali();
                      textFieldController1.clear();
                      textFieldController2.clear();
                    }, child: Text("X"),),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top :10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 100,
                    height: 35,
                    child: ElevatedButton(onPressed: (){
                      kurang();
                      textFieldController1.clear();
                      textFieldController2.clear();
                    }, child: Text("-")),
                  ),
                  SizedBox(
                    width: 100,
                    height: 35,
                    child: ElevatedButton(onPressed: (){
                      bagi();
                      textFieldController1.clear();
                      textFieldController2.clear();
                    }, child: Text("/")),
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
