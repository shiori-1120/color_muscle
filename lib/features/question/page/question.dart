import 'package:color_muscle/components/top_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:color_muscle/features/top/view_model.dart';
import 'package:color_muscle/style/colors.dart';
import 'package:color_muscle/style/styles.dart';

class QuestionPage extends ConsumerWidget {
  const QuestionPage({ 
    super.key});

  get backgroundcolor => null;



  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return

        Scaffold(
      backgroundColor: Colors.white,
      appBar: const TopAppBar(),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 100, width: 100, color: Colors.amber),
            ],
          ),
          const SizedBox(height: 20),
          Container(),
          SizedBox(height: 20,),

        ],
      ),
    );
  }
}