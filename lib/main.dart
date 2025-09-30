import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; // <--- PERUBAHAN 1: Ditambahkan
import 'basic_widget/image_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // <--- PERUBAHAN 2: Disesuaikan dengan instruksi
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      // <--- PERUBAHAN 3: Judul diubah sesuai instruksi
      home: const MyHomePage(title: 'My Increment App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Widget gambar dari struktur kode Anda tetap ada
            const MyImageWidget(),
            const SizedBox(height: 16),

            // Teks dari instruksi Langkah 3
            const Text(
              'You have pushed the button this many times:',
            ),
            // Counter dari struktur kode Anda tetap ada
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            const SizedBox(height: 24),

            // Widget dari Langkah 1 (Cupertino) ditambahkan di sini
            const Text('Contoh Widget Cupertino:'),
            const SizedBox(height: 8),
            CupertinoButton(
              color: Colors.blue,
              child: const Text("Contoh button"),
              onPressed: () {},
            ),
            const SizedBox(height: 8),
            const CupertinoActivityIndicator(),
          ],
        ),
      ),
      // <--- PERUBAHAN 5: Menambahkan BottomAppBar
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
      // <--- PERUBAHAN 6: Menambahkan lokasi FAB
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}