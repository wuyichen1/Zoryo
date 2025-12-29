import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/app_state.dart';
import '../../widgets/gradient_button.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({super.key});

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  final descCtrl = TextEditingController();
  final tabs = const ['Daily Glow', 'Office Polished', 'Travel Vibe', 'Party Shine'];
  String selected = 'Daily Glow';
  bool isVideo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Release')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: descCtrl,
              maxLines: 4,
              decoration: const InputDecoration(hintText: 'Please enter'),
            ),
            const SizedBox(height: 16),
            const Text('Classification', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              children: tabs
                  .map(
                    (t) => ChoiceChip(
                      label: Text(t),
                      selected: selected == t,
                      onSelected: (_) => setState(() => selected = t),
                      selectedColor: Colors.white24,
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                const Text('Upload'),
                const SizedBox(width: 10),
                Switch(
                  value: isVideo,
                  onChanged: (v) => setState(() => isVideo = v),
                ),
                Text(isVideo ? '(video)' : '(pic)'),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: const Color(0xFF0D2349),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Icon(Icons.add, size: 32),
            ),
            const Spacer(),
            GradientButton(
              label: 'Release',
              onPressed: () {
                final titleType = tabs.indexOf(selected);
                context.read<AppState>().addPost(
                      description: descCtrl.text.isEmpty ? 'New post' : descCtrl.text,
                      titleType: titleType >= 0 ? titleType : 0,
                      isVideo: isVideo,
                      pics: isVideo ? [] : ['assets/images/zoryo_logo.png'],
                      video: isVideo ? 'assets/videos/sample.mp4' : '',
                    );
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}

