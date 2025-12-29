import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/app_state.dart';
import '../../widgets/gradient_button.dart';
import '../../widgets/image_helper.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  late TextEditingController nameCtrl;
  late TextEditingController bioCtrl;

  @override
  void initState() {
    super.initState();
    final user = context.read<AppState>().currentUser;
    nameCtrl = TextEditingController(text: user.name);
    bioCtrl = TextEditingController(text: user.about);
  }

  @override
  void dispose() {
    nameCtrl.dispose();
    bioCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: CircleAvatar(
                radius: 46,
                backgroundImage: smartImageProvider(context.read<AppState>().currentUser.avator),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: nameCtrl,
              decoration: const InputDecoration(labelText: 'Name', hintText: 'Please enter'),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: bioCtrl,
              decoration: const InputDecoration(labelText: 'About me', hintText: 'Please enter'),
            ),
            const Spacer(),
            GradientButton(
              label: 'Save',
              onPressed: () {
                context.read<AppState>().updateProfile(
                      name: nameCtrl.text,
                      about: bioCtrl.text,
                    );
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

