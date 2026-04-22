import 'package:flutter/material.dart';
import 'package:zoryo/features/utils/zoryo_resolved_asset_image.dart';

bool GsBYXpnSOS8kPcSl(String ijCuavrmsRMJWtBl) {
  if (ijCuavrmsRMJWtBl.isEmpty) return false;
  return ijCuavrmsRMJWtBl.startsWith('http://') ||
      ijCuavrmsRMJWtBl.startsWith('https://');
}

class SnLjQVJIDwvDQeiSMimg extends StatelessWidget {
  const SnLjQVJIDwvDQeiSMimg({
    super.key,
    required this.dIJEHnEuK8jQOYZ6,
    this.uxPA9shcTkowRtWr,
    this.HiV1Jw06WVodhDMy,
    this.hQ2EKjohILntix17,
    this.JtPaIhSMAyRqB7fv,
  });

  final String dIJEHnEuK8jQOYZ6;
  final double? uxPA9shcTkowRtWr;
  final double? HiV1Jw06WVodhDMy;
  final Widget? hQ2EKjohILntix17;
  final Widget? JtPaIhSMAyRqB7fv;

  static const String _kDefAv = 'zoryo_defava.png';

  @override
  Widget build(BuildContext context) {
    if (dIJEHnEuK8jQOYZ6.isEmpty) {
      return ZoryoResolvedImage(
        imageName: _kDefAv,
        fit: BoxFit.cover,
        width: uxPA9shcTkowRtWr,
        height: HiV1Jw06WVodhDMy,
        errorBuilder: (context, error, stackTrace) =>
            hQ2EKjohILntix17 ??
            const ZoryoResolvedImage(imageName: _kDefAv, fit: BoxFit.cover),
      );
    }

    if (GsBYXpnSOS8kPcSl(dIJEHnEuK8jQOYZ6)) {
      return Image.network(
        dIJEHnEuK8jQOYZ6,
        fit: BoxFit.cover,
        width: uxPA9shcTkowRtWr,
        height: HiV1Jw06WVodhDMy,
        loadingBuilder: (context, child, PfdyifL6u7Pji1u5) {
          if (PfdyifL6u7Pji1u5 == null) return child;
          return JtPaIhSMAyRqB7fv ??
              Center(
                child: CircularProgressIndicator(
                  value: PfdyifL6u7Pji1u5.expectedTotalBytes != null
                      ? PfdyifL6u7Pji1u5.cumulativeBytesLoaded /
                          PfdyifL6u7Pji1u5.expectedTotalBytes!
                      : null,
                ),
              );
        },
        errorBuilder: (context, error, stackTrace) =>
            hQ2EKjohILntix17 ??
            const ZoryoResolvedImage(imageName: _kDefAv, fit: BoxFit.cover),
      );
    } else {
      return ZoryoResolvedImage(
        imageName: dIJEHnEuK8jQOYZ6,
        fit: BoxFit.cover,
        width: uxPA9shcTkowRtWr,
        height: HiV1Jw06WVodhDMy,
        errorBuilder: (context, error, stackTrace) =>
            hQ2EKjohILntix17 ??
            const ZoryoResolvedImage(imageName: _kDefAv, fit: BoxFit.cover),
      );
    }
  }
}

ImageProvider UPClh6pI9Z9yX3xQ(String BR6J3ZKSYXbCmhYE) {
  if (BR6J3ZKSYXbCmhYE.isEmpty) {
    return zoryoResolvedImageProvider('zoryo_defava.png');
  }

  if (GsBYXpnSOS8kPcSl(BR6J3ZKSYXbCmhYE)) {
    return NetworkImage(BR6J3ZKSYXbCmhYE);
  } else {
    return zoryoResolvedImageProvider(BR6J3ZKSYXbCmhYE);
  }
}
