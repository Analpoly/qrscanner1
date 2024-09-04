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
        body: Center(
          child: QrImageView(
            data: controller.text,
            size: 280,
            // You can include embeddedImageStyle Property if you 
            //wanna embed an image from your Asset folder
            embeddedImageStyle: QrEmbeddedImageStyle(
              size: const Size(
                100,
                100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
