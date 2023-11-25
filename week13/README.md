- Nama Septi Lutfiana
- NIM 2141720038
- Kelas 3H TI

## Praktikum 1: Dart Streams
### Soal 1
- Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.
```dart
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Septi',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const StreamHomePage(),
    );
  }
```
- Gantilah warna tema aplikasi sesuai kesukaan Anda.
```dart
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Septi',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const StreamHomePage(),
    );
  }
```
- Lakukan commit hasil jawaban Soal 1 dengan pesan "W13: Jawaban Soal 1"

### Soal 2
- Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel colors tersebut.

```dart
import 'package:flutter/material.dart';

class ColorStream {
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    Colors.pink,
    Colors.pinkAccent,
    Colors.orangeAccent,
    Colors.greenAccent,
    Colors.lightBlueAccent
  ];
}

```
- Lakukan commit hasil jawaban Soal 2 dengan pesan "W13: Jawaban Soal 2"

### Soal 3
- Jelaskan fungsi keyword yield* pada kode tersebut!

Keyword yield* digunakan untuk menggabungkan atau "melempar" elemen dari satu stream ke dalam stream lain.

- Apa maksud isi perintah kode tersebut?

sebuah stream yang mengeluarkan elemen-elemen warna secara periodik setiap detik, dengan urutan yang diulang dari colors.

- Lakukan commit hasil jawaban Soal 3 dengan pesan "W13: Jawaban Soal 3"