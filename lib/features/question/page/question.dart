import 'package:color_muscle/components/secondary_app_bar.dart';
import 'package:color_muscle/features/question/components/select_button.dart';
import 'package:color_muscle/features/top/grade_type.dart';
import 'package:color_muscle/features/top/question_type.dart';
import 'package:color_muscle/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:color_muscle/features/question/view_model.dart';

class QuestionPage extends ConsumerWidget {
  final int questionNumber;
  final QuestionType questionType;
  final GradeType gradeType;

  const QuestionPage(
      {required this.questionNumber,
      required this.questionType,
      required this.gradeType,
      super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(questionViewModelProvider(context,questionNumber,questionType,gradeType));
    return state.when(
        data: (data) => PopScope(
              canPop: false,
              child: Scaffold(
                backgroundColor: Colors.white,
                appBar: const SecondaryAppBar(),
                body: Stack(children: [
                  Column(
                    children: [
                      const SizedBox(height: 20),
                      const SizedBox(
                        height: 20,
                        child: Text(
                          '1問/5問',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: MediaQuery.of(context).size.height * 0.3,
                              width: MediaQuery.of(context).size.width * 0.9,
                              color: Colors.amber),
                        ],
                      ),
                      const SizedBox(height: 50),
                      SelectButton(
                        data.screenEnabled
                            ? () async {
                                await ref
                                    .read(questionViewModelProvider(context,questionNumber,questionType,gradeType).notifier)
                                    .showIconAndPopup(context);
                              }
                            : null,
                        '選択肢１',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SelectButton(
                        data.screenEnabled
                            ? () async {
                                await ref
                                    .read(questionViewModelProvider(context,questionNumber,questionType,gradeType).notifier)
                                    .showIconAndPopup(context);
                              }
                            : null,
                        '選択肢２',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SelectButton(
                        data.screenEnabled
                            ? () async {
                                await ref
                                    .read(questionViewModelProvider(context,questionNumber,questionType,gradeType).notifier)
                                    .showIconAndPopup(context);
                              }
                            : null,
                        '選択肢３',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SelectButton(
                        data.screenEnabled
                            ? () async {
                                await ref
                                    .read(questionViewModelProvider(context,questionNumber,questionType,gradeType).notifier)
                                    .showIconAndPopup(context);
                              }
                            : null,
                        '選択肢４',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  if (data.isTrue) // 画面が無効の場合にのみアイコンを表示
                    const Center(
                      child: Icon(
                        Icons.circle_outlined,
                        size: 230,
                        color: ColorName.trueRed,
                      ),
                    ),
                  if (data.isFalse)
                    const Center(
                      child: Icon(
                        Icons.cancel_outlined,
                        size: 100,
                        color: ColorName.falseBlue,
                      ),
                    ),
                ]),
              ),
            ),
        error: (error, StackTrace) => const SizedBox(),
        loading: () => const Center(
              child: CircularProgressIndicator(),
            ));
  }
}
