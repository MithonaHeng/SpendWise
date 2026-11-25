import 'package:flutter/material.dart';

class AppTypography {
  static const String fontFamily = 'Inter';

  static const List<String> fontFallback = ['NotoSansKhmer'];

  static TextStyle get base => const TextStyle(
    fontFamily: fontFamily,
    fontFamilyFallback: fontFallback,
    color: Color(0xFF101C19),
  );

  static final heading = base.copyWith(
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );

  static final title = base.copyWith(fontSize: 18, fontWeight: FontWeight.w600);

  static final body = base.copyWith(fontSize: 14, fontWeight: FontWeight.w400);

  static final label = base.copyWith(fontSize: 12, fontWeight: FontWeight.w500);

  static final amount = base.copyWith(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    fontFeatures: const [],
  );
}
