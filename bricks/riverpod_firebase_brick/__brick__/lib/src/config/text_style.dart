import 'package:flutter/material.dart';

/// Callers can lookup custom TextStyles with an instance of TextStyles returned
/// by `TextStyles.of(context)`.
class TextStyles {
  BuildContext context;
  //private constructor
  TextStyles._(this.context);

  //get an instance
  static TextStyles of(BuildContext context) {
    return TextStyles._(context);
  }

  //custom TextStyles here
  TextStyle get myTextStyle =>
      Theme.of(context).textTheme.headline1!.copyWith(fontSize: 26.0);
}
