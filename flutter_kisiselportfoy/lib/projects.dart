import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projeler'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,  // Ekranda iki sütun gösterir
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          childAspectRatio: 0.75,  // Kutucukların en-boy oranını ayarlar
          children: <Widget>[
            _buildProjectCard('Todo', 'Kolay', ['Javascript', 'HTML', 'CSS']),
            _buildProjectCard('KDS-IK', 'Zor', ['JavaScript', 'NodeJS', 'MySQL']),
            _buildProjectCard('Reklam Web', 'Zor', ['JavaScript', 'NodeJS', 'MySQL']),
            _buildProjectCard('Crypto Price', 'Orta', ['Dart', 'Flutter']),
          ],
        ),
      ),
    );
  }

  // Proje kartını oluşturan yardımcı fonksiyon
  Widget _buildProjectCard(String title, String difficulty, List<String> technologies) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Zorluk: $difficulty',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            const SizedBox(height: 10),
            const Text(
              'Kullanılan Teknolojiler:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Expanded(
              child: ListView.builder(
                itemCount: technologies.length,
                itemBuilder: (context, index) {
                  return Text(
                    '- ${technologies[index]}',
                    style: const TextStyle(fontSize: 16),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}









