import 'dart:math';

import 'package:color_muscle/components/top_app_bar.dart';
import 'package:color_muscle/features/question/components/select_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:color_muscle/features/top/view_model.dart';
import 'package:color_muscle/style/colors.dart';
import 'package:color_muscle/style/styles.dart';

class ResultPage extends ConsumerWidget {
  const ResultPage({super.key});

  get backgroundcolor => null;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const TopAppBar(),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            '1問/5問',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 100, width: 100, color: Colors.amber),
            ],
          ),
          const SizedBox(height: 20),
          const SizedBox(
            height: 100,
            width: 800,
          ),
        
        ],
      ),
    );
  }
}
