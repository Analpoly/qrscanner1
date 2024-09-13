// import 'package:flutter/material.dart';
// import 'package:qr_flutter/qr_flutter.dart';

// class QRImage extends StatelessWidget {
//   const QRImage(this.controller, {super.key});

//   final TextEditingController controller;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter + QR code'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: QrImageView(
//           // embeddedImage: AssetImage('image/docmeds.png'),
//           data: controller.text,
//           size: 280,
//           // You can include embeddedImageStyle Property if you
//           //wanna embed an image from your Asset folder
//           embeddedImageStyle: QrEmbeddedImageStyle(size: Size.fromRadius(50)),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrscanner/components/const.dart';

class QRImage extends StatelessWidget {
  final TextEditingController controller;

  const QRImage(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'SERVICE',
              style: TextStyle(
                  color: primary, fontWeight: FontWeight.bold, fontSize: 25),
            ),
            // SizedBox(
            //   width: 10,
            // ),
            Text(
              'DESK',
              style: TextStyle(
                  color: second, fontWeight: FontWeight.bold, fontSize: 25),
            )
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            // color: primary,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // QR Code generation
                QrImageView(
                  // backgroundColor: second,
                  // data: controller.text,
                  data: controller.text,
                  size: 280.0,
                  version: QrVersions.auto,
                  gapless: false,
                  errorCorrectionLevel:
                      QrErrorCorrectLevel.H, // High error correction level
                ),
                Positioned(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage:
                        AssetImage('image/midas_logo.png'), // Your image here
                    radius:
                        40.0, // Smaller radius to not cover much of the QR code
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text(
              //   'Employee no:',
              //   style: TextStyle(
              //     color: second,
              //     fontSize: 20,
              //   ),
              // ),
              Text(
                controller.text,
                style: TextStyle(
                    color: primary, fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.only(left: 50),
            // color: Colors.amber,
            width: 600,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('STEPS',
                    style: TextStyle(
                        color: primary,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: primary,
                      child: Text(
                        '1',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '>>',
                      style: TextStyle(color: second, fontSize: 20),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Scan the QR code',
                        style: TextStyle(
                            color: primary,
                            fontSize: 20,
                            fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: primary,
                      child: Text(
                        '2',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '>>',
                      style: TextStyle(color: second, fontSize: 20),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Select department',
                        style: TextStyle(
                            color: primary,
                            fontSize: 20,
                            fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: primary,
                      child: Text(
                        '3',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '>>',
                      style: TextStyle(color: second, fontSize: 20),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Fill the form and Submit',
                        style: TextStyle(
                            color: primary,
                            fontSize: 20,
                            fontWeight: FontWeight.bold))
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 145,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'POWERD BY',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'DOC',
                style: TextStyle(
                    color: primary, fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                'MEDS',
                style: TextStyle(
                    color: second, fontWeight: FontWeight.bold, fontSize: 20),
              )
            ],
          ),
        ],
      ),
    );
  }
}
