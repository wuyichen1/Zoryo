import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/style_narrative_codec.dart';

import '../../../ZORYOSA_neutralDressing_services/hoop_earring_state.dart';
import 'login_required_dialog.dart';

class ZoryosaCardmoreButton extends StatelessWidget {
  const ZoryosaCardmoreButton({
    super.key,
    required this.postYB8x0ydSRrjmId,
    required this.userYB8x0ydSRrjmId,
    this.dark = false,
  });

  final String postYB8x0ydSRrjmId;
  final String userYB8x0ydSRrjmId;
  final bool dark;

  @override
  Widget build(BuildContext context) {
    final currentUserId =
        context.watch<HoopEarring>().wardrobePairing.redCarpetLook;
    if (userYB8x0ydSRrjmId.trim() == currentUserId) {
      return const SizedBox.shrink();
    }

    final iconColor = dark ? Colors.black : Colors.white;
    final fillColor = dark
        ? Colors.white.withValues(alpha: 0.78)
        : Colors.black.withValues(alpha: 0.24);

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        final jewelryState = context.read<HoopEarring>();
        if (jewelryState.wardrobePairing.occasionAdornLogic == 1) {
          showLoginRequiredDialog(context);
          return;
        }
        showPostMoreActionSheet(
          context: context,
          postPosz1u5UanD7Id: postYB8x0ydSRrjmId,
          userBqDT9iVigwBxId: userYB8x0ydSRrjmId,
        );
      },
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: fillColor,
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white.withValues(alpha: dark ? 0.65 : 0.72),
            width: 1,
          ),
        ),
        child: Icon(
          Icons.more_horiz_rounded,
          color: iconColor,
          size: 24,
        ),
      ),
    );
  }
}

Future<void> showPostMoreActionSheet({
  required BuildContext context,
  required String postPosz1u5UanD7Id,
  required String userBqDT9iVigwBxId,
}) {
  return showModalBottomSheet<void>(
    context: context,
    useRootNavigator: true,
    backgroundColor: Colors.transparent,
    barrierColor: Colors.black.withValues(alpha: 0.58),
    builder: (sheetContext) {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(34, 44, 34, 28),
        decoration: const BoxDecoration(
          color: Color(0xFF101313),
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _Psha7uCB2rhcH7Xy(
              labelNV6zCJchP59e: 'Qh9fec7wr2i_8w'.styleNarrative(),
              onTap: () {
                Navigator.of(sheetContext).pop();
                context.push(
                    '/h5/report?id=${Uri.encodeComponent(postPosz1u5UanD7Id)}');
              },
            ),
            const SizedBox(height: 26),
            _Psha7uCB2rhcH7Xy(
              labelNV6zCJchP59e: 'IZhT0ihmugXAZA'.styleNarrative(),
              onTap: () async {
                Navigator.of(sheetContext).pop();
                await context
                    .read<HoopEarring>()
                    .shieldUser(userBqDT9iVigwBxId);
              },
            ),
            const SizedBox(height: 42),
            _Psha7uCB2rhcH7Xy(
              labelNV6zCJchP59e: 'uJQejlFr8H8mkA'.styleNarrative(),
              bordered: true,
              onTap: () => Navigator.of(sheetContext).pop(),
            ),
          ],
        ),
      );
    },
  );
}

class _Psha7uCB2rhcH7Xy extends StatelessWidget {
  const _Psha7uCB2rhcH7Xy({
    required this.labelNV6zCJchP59e,
    required this.onTap,
    this.bordered = false,
  });

  final String labelNV6zCJchP59e;
  final VoidCallback onTap;
  final bool bordered;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        height: 54,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: bordered
              ? const LinearGradient(
                  colors: [
                    Color(0xFFB85F20),
                    Color(0xFF060606),
                    Color(0xFF0D4D9C),
                  ],
                )
              : null,
          color: bordered ? null : const Color(0xFF001E3F),
          borderRadius: BorderRadius.circular(30),
          border: bordered ? Border.all(color: Colors.white, width: 1.6) : null,
        ),
        child: Text(
          labelNV6zCJchP59e,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
