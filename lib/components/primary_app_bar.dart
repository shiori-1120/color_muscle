import 'package:mottaina_eat/features/top/page/top.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mottaina_eat/style/colors.dart';

class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PrimaryAppBar({
    super.key,
    this.title,
  });

  final String? title;

  @override
  Widget build(BuildContext context) => AppBar(
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: ColorName.greyBase,
        centerTitle: true,
        title: Text(
          title ?? '',
          style: const TextStyle(color: ColorName.black2),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TopPage(),
                ),
              );
            },
            icon: const FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              color: ColorName.black2,
              size: 30,
            ),
          )
        ],
      );

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
