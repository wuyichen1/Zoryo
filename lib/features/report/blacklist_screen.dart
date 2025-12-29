import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/app_state.dart';
import '../../widgets/image_helper.dart';

class BlacklistScreen extends StatelessWidget {
  const BlacklistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final app = context.watch<AppState>();
    return Scaffold(
      appBar: AppBar(title: const Text('Blacklist')),
      body: app.blacklist.isEmpty
          ? const Center(child: Text('NO Data'))
          : ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: app.blacklist.length,
              itemBuilder: (context, index) {
                final item = app.blacklist[index];
                final user = app.userById(item.userId);
                return Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color(0xFF0D2349),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(backgroundImage: smartImageProvider(user.avator)),
                      const SizedBox(width: 12),
                      Expanded(child: Text(user.name)),
                      IconButton(
                        onPressed: () => app.removeFromBlacklist(item.userId),
                        icon: const Icon(Icons.close, color: Colors.white),
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}

