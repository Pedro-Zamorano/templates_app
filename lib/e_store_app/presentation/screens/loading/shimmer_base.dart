import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerBase extends StatelessWidget {
  final Widget child;

  const ShimmerBase({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.black12,
      highlightColor: Colors.white,
      direction: ShimmerDirection.ltr,
      child: child,
    );
  }
}
