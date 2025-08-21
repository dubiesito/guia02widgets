import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Gallery App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galería de Imágenes'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ColumnScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(200, 50),
                ),
                child: const Text('Ver Columna'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RowScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(200, 50),
                ),
                child: const Text('Ver Fila Simple'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ExpandedRowScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(200, 50),
                ),
                child: const Text('Ver Row Expanded'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const StarRatingScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(200, 50),
                ),
                child: const Text('Ver Rating Estrellas'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imágenes en Columna'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 250,
              height: 180,
              child: Image.asset(
                'images/psj1.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 250,
              height: 180,
              child: Image.asset(
                'images/psj2.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 250,
              height: 180,
              child: Image.asset(
                'images/psj3.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Colors.deepPurple,
        child: const Icon(Icons.arrow_back, color: Colors.white),
      ),
    );
  }
}

class RowScreen extends StatelessWidget {
  const RowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imágenes en Fila Simple'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 110,
              height: 180,
              child: Image.asset(
                'images/psj1.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 110,
              height: 180,
              child: Image.asset(
                'images/psj2.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 110,
              height: 180,
              child: Image.asset(
                'images/psj3.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Colors.deepPurple,
        child: const Icon(Icons.arrow_back, color: Colors.white),
      ),
    );
  }
}

class ExpandedRowScreen extends StatelessWidget {
  const ExpandedRowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row con Expanded y Flex'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Layout con diferentes valores flex:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Flex 1 : Flex 2 : Flex 1',
              style: TextStyle(fontSize: 14, color: Colors.purple),
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.deepPurple, width: 2),
                    ),
                    child: Image.asset(
                      'images/psj1.jpg',
                      fit: BoxFit.cover,
                      height: 200,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.purple, width: 3),
                    ),
                    child: Image.asset(
                      'images/psj2.jpg',
                      fit: BoxFit.cover,
                      height: 200,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.deepPurple, width: 2),
                    ),
                    child: Image.asset(
                      'images/psj3.jpg',
                      fit: BoxFit.cover,
                      height: 200,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'La imagen central tiene flex:2, por lo que ocupa el doble de espacio que las imágenes laterales que tienen flex:1',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Colors.purple,
        child: const Icon(Icons.arrow_back, color: Colors.white),
      ),
    );
  }
}

class StarRatingScreen extends StatelessWidget {
  const StarRatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rating de Estrellas'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Calificación: 3/5 estrellas',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.star, color: Colors.green[500]),
                Icon(Icons.star, color: Colors.green[500]),
                Icon(Icons.star, color: Colors.green[500]),
                const Icon(Icons.star, color: Colors.black),
                const Icon(Icons.star, color: Colors.black),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'Ejemplo de uso:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.green[50],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.green),
              ),
              child: const Column(
                children: [
                  Text(
                    'Pavlova',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text('Delicioso postre de merengue con frutas'),
                  SizedBox(height: 10),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star, color: Colors.green, size: 16),
                      Icon(Icons.star, color: Colors.green, size: 16),
                      Icon(Icons.star, color: Colors.green, size: 16),
                      Icon(Icons.star, color: Colors.black, size: 16),
                      Icon(Icons.star, color: Colors.black, size: 16),
                      SizedBox(width: 10),
                      Text('170 Reviews'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.arrow_back, color: Colors.white),
      ),
    );
  }
}