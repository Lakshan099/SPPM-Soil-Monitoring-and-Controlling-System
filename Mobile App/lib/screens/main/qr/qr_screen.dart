// import 'dart:io' as IO;

// import 'package:flutter/material.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';
// import 'package:soil_app/screens/main/main_screen.dart';
// import 'package:soil_app/utils/util_functions.dart';

// class ScanQrPage extends StatefulWidget {
//   static String? deviceId;

//   const ScanQrPage({super.key});
//   @override
//   State<StatefulWidget> createState() => _ScanQrPageState();
// }

// class _ScanQrPageState extends State<ScanQrPage> {
//   Barcode? result;
//   QRViewController? controller;

//   final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

//   void _onQRViewCreated(QRViewController controller) {
//     setState(() => this.controller = controller);
//     controller.scannedDataStream.listen((scanData) {
//       ScanQrPage.deviceId != scanData;
//       setState(() => result = scanData);
//     });
//   }

//   // In order to get hot reload to work we need to pause the camera if the platform
//   // is android, or resume the camera if the platform is iOS.
//   @override
//   void reassemble() {
//     super.reassemble();
//     if (IO.Platform.isAndroid) {
//       controller!.pauseCamera();
//     } else if (IO.Platform.isIOS) {
//       controller!.resumeCamera();
//     }
//   }

//   void readQr() async {
//     if (result != null) {
//       controller!.pauseCamera();

//       ScanQrPage.deviceId = result!.code;
//       print(result!.code);
//       controller!.dispose();
//       Future.delayed(Duration.zero, () {
//         print("QR Screen");
//         // MainScreen.activeIndex = 0;
//         UtilFunctions.navigateTo(context, const MainScreen());
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     readQr();
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back,
//               color: Color.fromARGB(255, 255, 255, 255)),
//           onPressed: () {
//             UtilFunctions.goBAck(context);
//           },
//         ),
//         title: const Text("QR Code Scan"),
//         elevation: 0,
//         centerTitle: true,
//         backgroundColor: const Color.fromARGB(255, 12, 12, 12),
//       ),
//       body: QRView(
//         key: qrKey,
//         onQRViewCreated: _onQRViewCreated,
//         overlay: QrScannerOverlayShape(
//           borderColor: Colors.orange,
//           borderRadius: 10,
//           borderLength: 30,
//           borderWidth: 10,
//           cutOutSize: 250,
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     controller?.dispose();
//     super.dispose();
//   }
// }
