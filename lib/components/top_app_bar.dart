import 'package:color_muscle/features/top/page/top.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:color_muscle/style/colors.dart';

class TopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TopAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) => AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: ColorName.greyBase,
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TopPage(
                    questionNumberState: 5,
                    questionFormatState: 1,
                    questionGradeState: 1,
                  ),
                ),
              );
            },
            icon: const FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              color: ColorName.greyBase,
              size: 30,
            ),
          )
        ],
      );

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
