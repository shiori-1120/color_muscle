import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:color_muscle/components/top_app_bar.dart';
import 'package:color_muscle/features/top/components/top_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TopPage extends StatefulWidget {
  TopPage(
      {required this.questionNumberState,
      required this.questionFormatState,
      required this.questionGradeState,
      super.key});

int questionNumberState;
  int questionFormatState;
  int questionGradeState;

  @override
  _TopPageState createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {

  
  List<String> formats = ['色→色の名前', '色の名前→色', '色の由来→色の名前'];
  List<String> grades = ['3級までの問題', '2級までの問題', '1級までの問題'];


  void numberIncrementCounter() {
    setState(() {
      if (widget.questionNumberState < 30) {
        widget.questionNumberState += 5;
      }
    });
  }

  void numberDecrementCounter() {
    setState(() {
      if (widget.questionNumberState > 5) {
        widget.questionNumberState -= 5;
      }
    });
  }

  void formatIncrementCounter() {
    setState(() {
      if (widget.questionFormatState < 3) {
        widget.questionFormatState += 1;
      }
    });
  }

  void formatDecrementCounter() {
    setState(() {
      if (widget.questionFormatState > 1) {
        widget.questionFormatState -= 1;
      }
    });
  }

  void gradeIncrementCounter() {
    setState(() {
      if (widget.questionGradeState < 3) {
        widget.questionGradeState += 1;
      }
    });
  }

  void gradeDecrementCounter() {
    setState(() {
      if (widget.questionGradeState > 1) {
        widget.questionGradeState -= 1;
      }
    });
  }

   String getFormat() {
    return formats[widget.questionFormatState - 1];
  }

  String getGrade() {
    return grades[widget.questionGradeState - 1];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: numberDecrementCounter,
                    icon: const FaIcon(FontAwesomeIcons.minus),
                  ),
                  Text('${widget.questionNumberState}'),
                  IconButton(
                    onPressed: numberIncrementCounter,
                    icon: const FaIcon(FontAwesomeIcons.plus),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: formatDecrementCounter,
                    icon: const FaIcon(FontAwesomeIcons.minus),
                  ),
                  Text(getFormat()),
                  IconButton(
                    onPressed: formatIncrementCounter,
                    icon: const FaIcon(FontAwesomeIcons.minus),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: gradeDecrementCounter,
                    icon: const FaIcon(FontAwesomeIcons.minus),
                  ),
                  Text(getGrade()),
                  IconButton(
                    onPressed: gradeIncrementCounter,
                    icon: const FaIcon(FontAwesomeIcons.minus),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          const TopButton('questionNumber', 'questionFormat', 'questionGrade'),
        ],
      ),
    );
  }
}
