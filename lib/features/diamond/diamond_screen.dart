import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/app_state.dart';

class DiamondScreen extends StatelessWidget {
  const DiamondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final app = context.watch<AppState>();
    return Scaffold(
      appBar: AppBar(title: const Text('My diamonds')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFFD47A2F), Color(0xFF0E4FA4)],
                ),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                children: [
                  const Icon(Icons.diamond, size: 48, color: Colors.white),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('My diamonds', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                      Text('${app.currentUser.coins}', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 1,
                ),
                itemCount: app.diamondPacks.length,
                itemBuilder: (context, index) {
                  final pack = app.diamondPacks[index];
                  return Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF0D2349),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white24),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.diamond_outlined, color: Colors.white, size: 26),
                        const SizedBox(height: 6),
                        Text('${pack.cions}', style: const TextStyle(fontWeight: FontWeight.w700)),
                        const SizedBox(height: 4),
                        Text('\$${pack.meney.toStringAsFixed(2)}'),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (app.diamondPacks.isNotEmpty) {
                    app.purchasePack(app.diamondPacks.first);
                  }
                },
                child: const Text('Recharge'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

