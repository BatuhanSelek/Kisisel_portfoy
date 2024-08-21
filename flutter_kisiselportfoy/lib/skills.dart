import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beceriler'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Becerilerim',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: <Widget>[
                  _buildSkillItem('Python', 0.9),  
                  _buildSkillItem('JavaScript', 0.8),  
                  _buildSkillItem('MySQL', 0.7),  
                  _buildSkillItem('MSSQL', 0.6),  
                  _buildSkillItem('Dart', 0.5),  
                  _buildSkillItem('Flutter', 0.4),
                  _buildSkillItem('Html', 0.8),
                  _buildSkillItem('CSS', 0.7),
                  _buildSkillItem('ArcGIS', 0.4),
                  _buildSkillItem('QGIS', 0.5), 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Beceri öğesini oluşturan yardımcı fonksiyon
  Widget _buildSkillItem(String skill, double level) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                skill,
                style: const TextStyle(fontSize: 18),
              ),
              Text('${(level * 100).toInt()}%'),  // Seviye yüzdesi
            ],
          ),
          const SizedBox(height: 5),
          LinearProgressIndicator(
            value: level,  // 0.0 ile 1.0 arasında değer alır
            minHeight: 8,
            backgroundColor: Colors.grey[300],
            valueColor: const AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 243, 152, 33)),
          ),
        ],
      ),
    );
  }
}
