import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeProvider = StateProvider<ThemeMode>((ref) => ThemeMode.light);

void toggleTheme(WidgetRef ref) {
  ref.read(themeProvider.notifier).state =
      ref.read(themeProvider) == ThemeMode.light
          ? ThemeMode.dark
          : ThemeMode.light;
}
