# master_plan

- Nama Septi Lutfiana
- NIM 2141720038
- KELAS 3H TI

# Praktikum 1: Dasar State dengan Model-View

### task.dart
```dart
class Task {
  final String description;
  final bool complete;
  
  const Task({
    this.complete = false,
    this.description = '',
  });
}
```

### data_layer.dart
```dart
export 'plan.dart';
export 'task.dart';
```

### plan.dart
```dart
import './task.dart';

class Plan {
  final String name;
  final List<Task> tasks;
  
  const Plan({this.name = '', this.tasks = const []});
}
```
### plan_screen.dart
```dart
import '../models/data_layer.dart';
import 'package:flutter/material.dart';

class PlanScreen extends StatefulWidget {
  const PlanScreen({super.key});

  @override
  State createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  late ScrollController scrollController;
  Plan plan = const Plan();

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {
        FocusScope.of(context).requestFocus(FocusNode());
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ganti ‘Namaku' dengan Nama panggilan Anda
      appBar: AppBar(title: const Text('Master Plan Septi')),
      body: _buildList(),
      floatingActionButton: _buildAddTaskButton(),
    );
  }

  Widget _buildAddTaskButton() {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        setState(() {
          plan = Plan(
            name: plan.name,
            tasks: List<Task>.from(plan.tasks)..add(const Task()),
          );
        });
      },
    );
  }

  Widget _buildList() {
    return ListView.builder(
      controller: scrollController,
      keyboardDismissBehavior: Theme.of(context).platform == TargetPlatform.iOS
          ? ScrollViewKeyboardDismissBehavior.onDrag
          : ScrollViewKeyboardDismissBehavior.manual,
      itemCount: plan.tasks.length,
      itemBuilder: (context, index) => _buildTaskTile(plan.tasks[index], index),
    );
  }

  Widget _buildTaskTile(Task task, int index) {
    return ListTile(
      leading: Checkbox(
          value: task.complete,
          onChanged: (selected) {
            setState(() {
              plan = Plan(
                name: plan.name,
                tasks: List<Task>.from(plan.tasks)
                  ..[index] = Task(
                    description: task.description,
                    complete: selected ?? false,
                  ),
              );
            });
          }),
      title: TextFormField(
        initialValue: task.description,
        onChanged: (text) {
          setState(() {
            plan = Plan(
              name: plan.name,
              tasks: List<Task>.from(plan.tasks)
                ..[index] = Task(
                  description: text,
                  complete: task.complete,
                ),
            );
          });
        },
      ),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}

```


### Soal Praktikum 1
2. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?

- export 'plan.dart';: Ini mengekspor semua definisi yang ada dalam file 'plan.dart'. Ketika menggunakan file ini di file Dart lainnya, dapat mengakses kelas, fungsi, atau variabel yang didefinisikan di 'plan.dart'.

- export 'task.dart';: Sama seperti sebelumnya, ini mengekspor semua definisi yang ada dalam file 'task.dart'. Dengan demikian, dapat menggunakan kelas, fungsi, atau variabel yang didefinisikan di 'task.dart' saat mengimpor file ini di tempat lain.

3. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?

- Menggunakan variabel dengan nama yang jelas (plan) dapat meningkatkan kejelasan kode. Jika variabel tersebut digunakan di beberapa bagian dalam program atau jika nilainya penting, memberinya nama yang bermakna bisa membantu pembaca kode untuk memahami tujuannya.
- Jika nilai variabel tidak boleh diubah selama eksekusi program dan dianggap sebagai nilai tetap yang seharusnya tidak berubah, menggunakan konstanta adalah pilihan yang baik. 

4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!

![](doc/Praktikum%201.gif)

Pada praktikum ini, saya mendapkan penjelasan bagaimana cara membua atau menambahkan wish list atau schadule, jika schadule tersebut sudah selesai dijalankan maka dapat dilakukan ceklis.

5. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?

- initState() adalah metode khusus dalam Flutter yang dipanggil ketika widget pertama kali dibuat. Pada contoh di atas, initState() digunakan untuk inisialisasi scrollController sebagai ScrollController baru.
Selanjutnya, diberikan listener pada controller menggunakan ..addListener(() {...}). Listener ini mengatur bahwa setiap kali terjadi perubahan pada controller (dalam hal ini, pergerakan scroll), FocusScope.of(context).requestFocus(FocusNode()) akan dipanggil. Ini bertujuan untuk menyembunyikan keyboard dengan meminta fokus pada FocusNode yang tidak memiliki fokus, efektif menclose keyboard.

- dispose() adalah metode yang dipanggil ketika widget dihapus dari pohon widget. Pada contoh ini, dispose() digunakan untuk melepaskan sumber daya yang digunakan oleh scrollController, menghindari kebocoran memori.

# Praktikum 2 Mengelola Data Layer dengan InheritedWidget dan InheritedNotifier
## Jawaban Soal Praktikum 2
2. Jelaskan mana yang dimaksud InheritedWidget pada langkah 1 tersebut! Mengapa yang digunakan InheritedNotifier? 
- InheritedWidget adalah salah satu konsep kunci dalam Flutter yang memungkinkan berbagi data atau informasi antar widget dalam widget tanpa perlu melewatkan properti secara eksplisit ke setiap widget. 
```dart
    dependOnInheritedWidgetOfExactType<PlanProvider>()!.notifier!;
 ```
 - Dengan menggunakan InheritedNotifier dan ValueNotifier, PlanProvider memungkinkan widget di bawahnya untuk mendengar dan merespons perubahan pada objek ValueNotifier<Plan>. Semua widget anak yang menggunakan PlanProvider.of(context) akan di-rebuild (dibangun kembali) saat ada perubahan pada nilai ValueNotifier

3. Jelaskan maksud dari method di langkah 3 pada praktikum tersebut! Mengapa dilakukan demikian?
- completedCount Method:
Metode ini mengembalikan jumlah tugas yang telah selesai, Itu menggunakan metode where untuk menyaring tugas-tugas yang memiliki properti complete bernilai true.Kemudian, dengan menggunakan length, kita mendapatkan jumlah total tugas yang telah selesai. Dengan cara ini, kita dapat dengan mudah mengetahui berapa banyak tugas yang telah diselesaikan dalam suatu koleksi tugas.

- completenessMessage Method:

Metode ini mengembalikan sebuah string yang memberikan pesan tentang sejauh mana tugas-tugas telah diselesaikan dalam konteks suatu koleksi tugas. String tersebut berisi dua informasi utama: Jumlah tugas yang telah diselesaikan (completedCount). Total jumlah tugas dalam koleksi (tasks.length). Dengan menggunakan informasi ini, pesan memberikan gambaran tentang kemajuan atau kelengkapan dari suatu daftar tugas.

4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!

![](doc/Praktikum%202.gif)

- pada praktikum ke 2 ini terdapat perbedaan dari praktikum 1 yaitu terdapat massage task list tersbeut sudah selesai (dilakukan ceklis) atau belu, jika sudah maka akan akan message keterangan bertambah 1 untuk yang selesai dari banyaknya list yang dibuat.
# Praktikum 3: Membuat State di Multiple Screens
## Jawaban Praktikum 3
2. Berdasarkan Praktikum 3 yang telah Anda lakukan, jelaskan maksud dari gambar diagram berikut ini!
![](doc/Soal2.png)

- Gambar diatas mengilustrasikan bagaimana komponen-komponen tersebut saling berhubungan dalam membentuk struktur tampilan dalam aplikasi

3. Lakukan capture hasil dari Langkah 14 berupa GIF, kemudian jelaskan apa yang telah Anda buat!

![](doc/Praktikum%203.gif)

- Menambahakan task baru, lalu melakukan penambahan list dan ceckbox di dalam 1 file list yang telah dibuat, praktikum ke 3 ini menerapkan hasil implementasi di praktikum 1 dan 2.