import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qr_scanner/views/generate_qr_code.dart';
import 'package:qr_scanner/views/scan_qr_code.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Code Scanner"),
        backgroundColor: Colors.blue,
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Scan_QR_Code()));
              });
            }, child: Text("Scan QR Code")),
            SizedBox(height: 40,),
            ElevatedButton(onPressed: (){
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Generate_QR_Code()));
              });
            }, child: Text("Generate QR Code"))
          ],
        ),
      )
    );
  }
}
