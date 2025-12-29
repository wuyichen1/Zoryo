import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../providers/app_state.dart';
import '../../widgets/gradient_button.dart';

class AiScreen extends StatelessWidget {
  const AiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final app = context.watch<AppState>();
    return Scaffold(
      appBar: AppBar(title: const Text('Zoryo AI')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 44,
              backgroundImage: AssetImage('assets/images/zoryo_inip.png'),
            ),
            const SizedBox(height: 12),
            const Text(
              'Hi! I am Zoryo AI, your exclusive accessory matching assistant.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            _questionButton('What style do you recommend?'),
            const SizedBox(height: 10),
            _questionButton('Pearl jewelry matching tips'),
            const SizedBox(height: 10),
            _questionButton('Dinner party accessories matching'),
            const Spacer(),
            GradientButton(
              label: 'Chat (200 Diamonds)',
              onPressed: () {
                if (app.currentUser.coins < 200) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Balance insufficient, go recharge')),
                  );
                  context.push('/h5/gold-coin');
                  return;
                }
                app.spendDiamond(200);
                context.push('/h5/chat-view');
              },
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _questionButton(String title) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(child: Text(title)),
          const Icon(Icons.chat_bubble_outline),
        ],
      ),
    );
  }
}

