import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('ទំព័រដើម'),
        actions: [
          IconButton(icon: const Icon(Icons.dark_mode), onPressed: () {}),
        ],
      ),
      drawer: const Drawer(child: Center(child: Text('ម៉ឺនុយចំហៀង'))),
      body: const Center(child: Text('ស្វាគមន៍មកកាន់ទំព័រដើម!')),

      bottomNavigationBar: NavigationBar(
        selectedIndex: 0,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined), label: 'ដើម'),
          NavigationDestination(
            icon: Icon(Icons.receipt_long),
            label: 'ប្រតិបត្តិការ',
          ),
          NavigationDestination(
            icon: Icon(Icons.document_scanner_outlined),
            label: 'ស្កេន',
          ),
          NavigationDestination(
            icon: Icon(Icons.pie_chart_outline),
            label: 'ថវិការ',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_circle_outlined),
            label: 'អ្នកប្រើ',
          ),
        ],
      ),
    );
  }
}
