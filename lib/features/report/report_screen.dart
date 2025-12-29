import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/app_state.dart';
import '../../widgets/gradient_button.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  final reasons = [
    'Harassment',
    'Malicious fraud',
    'Pornography',
    'Malicious insults',
    'False Information',
  ];
  String? selected;
  final descCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Report')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: reasons
                  .map(
                    (r) => GestureDetector(
                      onTap: () => setState(() => selected = r),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2 - 24,
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: const Color(0xFF0D2349),
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                            color: selected == r ? Colors.blueAccent : Colors.transparent,
                            width: 2,
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(child: Text(r)),
                            if (selected == r) const Icon(Icons.check_circle, color: Colors.blue),
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 20),
            const Text('Supplementary description'),
            const SizedBox(height: 8),
            TextField(
              controller: descCtrl,
              maxLines: 4,
              decoration: const InputDecoration(
                hintText: 'Supplementary description (optional)',
              ),
            ),
            const Spacer(),
            GradientButton(
              label: 'Submit',
              onPressed: () {
                if (selected != null) {
                  context.read<AppState>().addToBlacklist('u3');
                  Navigator.pop(context);
                }
              },
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}

