import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/style_narrative_codec.dart';

import '../ZORYOSA_lookFinalizer_utils/encrypted_media_vault.dart';

Future<void> showLoginRequiredDialog(BuildContext context) {
  return showDialog<void>(
    context: context,
    useRootNavigator: true,
    barrierColor: Colors.black.withValues(alpha: 0.58),
    builder: (dialogContext) {
      return _LoginRequiredDialog(originContext: context);
    },
  );
}

class _LoginRequiredDialog extends StatelessWidget {
  const _LoginRequiredDialog({required this.originContext});

  final BuildContext originContext;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      insetPadding: const EdgeInsets.symmetric(horizontal: 34),
      backgroundColor: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(26, 46, 26, 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(26),
              image: DecorationImage(
                image: zoryoResolvedImageProvider(
                  '1RV6okorEXl3_dialog.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                ZoryoResolvedImage(
                  imghihbqrdijzName: 'ZY5L4f9hFK98_warn.png',
                  width: 90,
                  height: 90,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 20),
                Text(
                  'jRWEWLPkJIN2DmmeUu1OcS__OmMQaFVhQbMIDdVc3TPQLejFgatwjn1deplZrk5wJbF4BhJpUWw4uVgEyFqJM9FjvMXH8muTand9j1SiT3c-_zJlEHZAIw'
                      .styleNarrative(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF30333A),
                    fontSize: 18,
                    height: 1.14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 44),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              Navigator.of(context, rootNavigator: true).pop();
              originContext.push('/auth/form?VintageCharm=login');
            },
            child: Container(
              height: 56,
              width: 240,
              margin: const EdgeInsets.symmetric(horizontal: 28),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFFB85F20),
                    Color(0xFF060606),
                    Color(0xFF0D4D9C),
                  ],
                ),
                borderRadius: BorderRadius.circular(34),
                border: Border.all(color: Colors.white, width: 1.6),
              ),
              child: const Text(
                'Log in',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const SizedBox(height: 34),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => Navigator.of(context, rootNavigator: true).pop(),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 3),
              ),
              child: const Icon(
                Icons.close_rounded,
                color: Colors.white,
                size: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
