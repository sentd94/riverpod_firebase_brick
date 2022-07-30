import 'package:flutter/material.dart';

class Spacing extends StatelessWidget {
  final double? width;
  final double? height;
  const Spacing._({Key? key, this.width, this.height}) : super(key: key);

  factory Spacing.h4() => const Spacing._(height: 4);
  factory Spacing.h8() => const Spacing._(height: 8);
  factory Spacing.h16() => const Spacing._(height: 16);
  factory Spacing.h24() => const Spacing._(height: 24);
  factory Spacing.h32() => const Spacing._(height: 32);
  factory Spacing.w4() => const Spacing._(width: 4);
  factory Spacing.w8() => const Spacing._(width: 8);
  factory Spacing.w16() => const Spacing._(width: 16);
  factory Spacing.w24() => const Spacing._(width: 24);
  factory Spacing.w32() => const Spacing._(width: 32);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
