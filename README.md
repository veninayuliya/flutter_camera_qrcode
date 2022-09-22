# flutter_camera_qrcode

### Menambahkan plugin pada `pubspec.yaml`

<img src="images/plugin.jpg" width="500">

`camera`: digunakan membantu izin akses menuju hardware kamera pada device<br>
`path_provider`: membantu aplikasi Flutter untuk akses ke system file agar dapat menemukan lokasi file yang dimaksud seperti pada temporary file atau
direktori.<br>
`path`: digunakan untuk memanipulasi path sehingga string path bisa digabungkan, dipecah,dinormalisasi, dsb.<br>
`qr_code_scanner` membantu menyisipkan tampilan scanner pada aplikasi Flutter<br>

### Buka `android/app/buid.gradle` pastikan:

compileSdkVersion 32 dan minSdkVersion 21

### Membuat file `camera.dart`, `qrcode.dart` dan mengubah `main.dart`

### Hasil QRCode

<img src="images/1.jpeg" width="200"> <img src="images/2.jpeg" width="200"> <img src="images/3.jpeg" width="200">
<img src="images/4.jpeg" width="200"> <img src="images/5.jpeg" width="200">

### Hasil Camera

<img src="images/6.jpeg" width="200"> <img src="images/7.jpeg" width="200">
<img src="images/8.jpeg" width="200"> <img src="images/9.jpeg" width="200">
