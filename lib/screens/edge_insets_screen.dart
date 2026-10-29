import 'package:flutter/material.dart';

import '../widgets/edge_insets_example.dart';

class EdgeInsetsScreen extends StatelessWidget {
  const EdgeInsetsScreen({super.key});

  static const _examples = <EdgeInsetsExample>[
    EdgeInsetsExample(
      label: 'EdgeInsets.all(30)',
      color: Color(0xFFF44336),
      padding: EdgeInsets.all(30),
    ),
    EdgeInsetsExample(
      label: 'EdgeInsets.symmetric(horizontal: 40, vertical: 10)',
      color: Color(0xFFFFEB3B),
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
    ),
    EdgeInsetsExample(
      label: 'EdgeInsets.only(left: 30, top: 10, right: 5, bottom: 20)',
      color: Color(0xFF2196F3),
      padding: EdgeInsets.only(left: 30, top: 10, right: 5, bottom: 20),
    ),
    EdgeInsetsExample(
      label: 'EdgeInsets.fromLTRB(10, 20, 30, 40)',
      color: Color(0xFF4CAF50),
      padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Merioles')),
      body: SafeArea(
        child: ListView.separated(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
          itemCount: _examples.length,
          separatorBuilder: (context, index) => const SizedBox(height: 12),
          itemBuilder: (context, index) => _examples[index],
        ),
      ),
    );
  }
}
