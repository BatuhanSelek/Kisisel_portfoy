import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('İletişim'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            _buildContactCard(
              icon: Icons.person,
              title: 'Ad Soyad',
              subtitle: '',
            ),
            _buildContactCard(
              icon: Icons.school,
              title: 'Okul ve Bölüm',
              subtitle: '',
            ),
            _buildContactCard(
              icon: Icons.phone,
              title: 'Telefon Numarası',
              subtitle: '',
            ),
            _buildContactCard(
              icon: Icons.location_on,
              title: 'Adres',
              subtitle: '',
            ),
            _buildContactCard(
              icon: Icons.email,
              title: 'E-posta',
              subtitle: '',
            ),
            const SizedBox(height: 20),
            const Text(
              'Sosyal Medya',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            _buildSocialMediaRow(
              icon: Icons.facebook,
              url: 'https://facebook.com',
              platformName: 'Facebook',
            ),
            _buildSocialMediaRow(
              icon: Icons.social_distance,
              url: 'https://twitter.com',
              platformName: 'Twitter',
            ),
            _buildSocialMediaRow(
              icon: Icons.social_distance_outlined,
              url: 'https://linkedin.com',
              platformName: 'LinkedIn',
            ),
            _buildSocialMediaRow(
              icon: Icons.gite_sharp,
              url: 'https://github.com',
              platformName: 'GitHub',
            ),
          ],
        ),
      ),
    );
  }

  // İletişim bilgilerini göstermek için yardımcı fonksiyon
  Widget _buildContactCard({required IconData icon, required String title, required String subtitle}) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: ListTile(
        leading: Icon(icon, size: 40),
        title: Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle, style: const TextStyle(fontSize: 16)),
      ),
    );
  }

  // Sosyal medya hesaplarını göstermek için yardımcı fonksiyon
  Widget _buildSocialMediaRow({required IconData icon, required String url, required String platformName}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: <Widget>[
          Icon(icon, size: 30),
          const SizedBox(width: 10),
          Text(
            platformName,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.open_in_new),
            onPressed: () {
            },
          ),
        ],
      ),
    );
  }
}
