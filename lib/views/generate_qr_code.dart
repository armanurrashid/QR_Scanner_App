import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter/material.dart';

class Generate_QR_Code extends StatefulWidget {
  const Generate_QR_Code({super.key});

  @override
  State<Generate_QR_Code> createState() => _Generate_QR_CodeState();
}

class _Generate_QR_CodeState extends State<Generate_QR_Code> {
  TextEditingController urlController = TextEditingController();
  String qrData = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Generate QR Code",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (qrData.isNotEmpty)
                QrImageView(
                  data: qrData,
                  size: 200,
                ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: TextField(
                  controller: urlController,
                  decoration: InputDecoration(
                    hintText: 'Enter your data',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'Enter your data',
                  ),
                ),
              ),
              SizedBox(height: 20),
              MouseRegion(
                cursor: SystemMouseCursors.cell,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      qrData = urlController.text.trim();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    minimumSize: Size(200, 50)
                  ),
                  child: Text('Generate QR Code',style: TextStyle(fontSize: 18),),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
