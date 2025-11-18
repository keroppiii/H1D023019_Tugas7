import 'package:flutter/material.dart';
import 'package:h1d023019_tugas7/widgets/side_menu.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  String _version = '';

  @override
  void initState() {
    super.initState();
    _loadPackageInfo();
  }

  Future<void> _loadPackageInfo() async {
    final packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      _version = '${packageInfo.version} (${packageInfo.buildNumber})';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      drawer: const SideMenu(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.flutter_dash,
                size: 100,
                color: Colors.deepPurple,
              ),
              
              const SizedBox(height: 24),
              
              const Text(
                'Flutter Demo App',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              
              const SizedBox(height: 16),
              
              Text(
                'Version $_version',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              
              const SizedBox(height: 32),
              
              const Text(
                'This is a demo Flutter application showcasing login functionality, local storage, navigation drawer, and multiple routes.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
              
              const SizedBox(height: 40),
              
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.code, size: 40, color: Colors.deepPurple),
                      SizedBox(height: 8),
                      Text('Flutter'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.storage, size: 40, color: Colors.green),
                      SizedBox(height: 8),
                      Text('Shared\nPreferences'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.navigation, size: 40, color: Colors.orange),
                      SizedBox(height: 8),
                      Text('Navigation'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}