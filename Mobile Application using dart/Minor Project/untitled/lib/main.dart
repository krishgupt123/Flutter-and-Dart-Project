import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter elevated with text change',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
       home:MyButtonText(),
       home:Scaffold(
       appBar: AppBar(
            title: Text("Minor Project"),
          ),
          body: Container(
            color: Colors.amber,
            height: double.infinity,
            width: double.infinity,
            child: Text("KRISH KUMAR GUPTA" ,textAlign: TextAlign.center,style: TextStyle(fontSize:45,fontWeight: FontWeight.bold,color: Colors.deepOrange),),
          ),
       ),
        );
  }
}
class MyButtonText extends StatefulWidget {
  const MyButtonText({Key? key}) : super(key: key);

  @override
  _MyButtonTextState createState() => _MyButtonTextState();
}

class _MyButtonTextState extends State<MyButtonText> {
  var buttonText = "A";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minor Project'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              buttonText = 'Welcome Krish Kumar Gupta';
            });
          }, child: Text(buttonText),
        ),
      ),
    );
  }
}
