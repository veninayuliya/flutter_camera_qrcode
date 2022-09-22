import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_camera_qrcode/camera.dart';
import 'package:flutter_camera_qrcode/qrcode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});
  late final CameraDescription firstCamera;

  Future<void> camera() async {
    // Ensure that plugin services are initialized so that availableCameras()
    // can be called before 'runApp()'
    WidgetsFlutterBinding.ensureInitialized();

    // Obtain a list of the available cameras on the device.
    final cameras = await availableCameras();

    // get a specific camera from the list of available cameras.
    firstCamera = cameras.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Camera and QRCode')),
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              // Tampilan tombol untuk menu QR Code
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const QRCode(),
                  ));
                },
                child: const Text('QRCode'),
              ),
            ),
            Expanded(
                // Tampilan tombol untuk menu Camera
                child: ElevatedButton(
              onPressed: () {
                camera();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => TakePictureScreen(
                      camera: firstCamera,
                    ),
                  ),
                );
              },
              child: const Text('Camera'),
            ))
          ],
        ),
      ),
    );
  }
}
