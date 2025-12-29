// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:provider/provider.dart';

// import '../../providers/app_state.dart';
// import '../../widgets/gradient_button.dart';

// class SettingsScreen extends StatelessWidget {
//   const SettingsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Setting')),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             _tile(
//               context,
//               'Privacy Policy',
//               onTap: () => context.push('/h5/privacy-agreement'),
//             ),
//             const SizedBox(height: 10),
//             _tile(
//               context,
//               'User Agreement',
//               onTap: () => context.push('/h5/user-agreement'),
//             ),
//             const SizedBox(height: 10),
//             _tile(
//               context,
//               'Blacklist',
//               onTap: () {
//                 final app = context.read<AppState>();
//                 context.push('/h5/black-list?id=${app.currentUser.userId}');
//               },
//             ),
//             const Spacer(),
//             _actionButton('Delete account'),
//             const SizedBox(height: 12),
//             GradientButton(
//               label: 'Log out',
//               onPressed: () async {
//                 final app = context.read<AppState>();
//                 await app.logout();
//                 if (context.mounted) {
//                   context.go('/auth/select');
//                 }
//               },
//             ),
//             const SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _tile(BuildContext context, String label, {VoidCallback? onTap}) {
//     return InkWell(
//       onTap: onTap,
//       child: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
//         decoration: BoxDecoration(
//           color: const Color(0xFF0D2349),
//           borderRadius: BorderRadius.circular(18),
//         ),
//         child: Row(
//           children: [
//             Text(label, style: const TextStyle(fontSize: 16)),
//             const Spacer(),
//             const Icon(Icons.chevron_right),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _actionButton(String label) {
//     return SizedBox(
//       width: double.infinity,
//       child: ElevatedButton(
//         onPressed: () {},
//         child: Text(label),
//       ),
//     );
//   }
// }

