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
        title: const Text('Flutter + QR code'),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Flexible(
              flex: 2,
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'COMPLAINT',
                          style: TextStyle(color: primary, fontSize: 40),
                        ),
                        Text(
                          'BOX',
                          style: TextStyle(color: second, fontSize: 40),
                        ),
                      ],
                    ),
                    Text(
                        'We value your feedback! if you have any concerns,suggestionsor issues,please let us know.'),
                    Text(
                        'Your input help us improve our service and address any problem you may be experiencing')
                  ],
                ),
              )),
          Flexible(
            flex: 2,
            child: Container(
              width: MediaQuery.of(context).size.width / 2,
              color: primary,
              child: Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // QR Code generation
                    QrImageView(
                      backgroundColor: second,
                      // data: controller.text,
                      data: controller.text,
                      size: 280.0,
                      version: QrVersions.auto,
                      gapless: false,
                      errorCorrectionLevel:
                          QrErrorCorrectLevel.H, // High error correction level
                    ),
                    // Circular Avatar at the center of the QR Code
                    Positioned(
                      child: CircleAvatar(
                        backgroundColor:
                            const Color.fromARGB(255, 223, 200, 200),
                        backgroundImage:
                            AssetImage('image/docmeds.png'), // Your image here
                        radius:
                            50.0, // Smaller radius to not cover much of the QR code
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
