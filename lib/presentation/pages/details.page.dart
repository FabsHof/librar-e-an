import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import '../components/_base-layout.component.dart';
import '../../business_logic/services/platform.service.dart';
import '../../util/theme.dart';

class DetailsPage extends StatelessWidget {

  final bool showAppBar;
  final String? title;

  const DetailsPage({super.key, this.showAppBar = true, this.title});

  @override
  Widget build(BuildContext context) {

    final ThemeData themeData = Theme.of(context);
    final TextStyle textStyleDark = themeData.textTheme.titleLarge!;
    final TextStyle textStyleLight = textStyleDark.copyWith(color: Colors.white);
    final bool isExpandedScreen = PlatformService.isExpandedScreenSize(context);
    final titleString = title ?? ModalRoute.of(context)!.settings.arguments as String? ?? '-';

    final Widget titleWidget = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.book_outlined),
        SizedBox(width: ThemeDimensions.M.dimension,),
        Text(titleString, style: !showAppBar ? textStyleDark : textStyleLight, )
      ]
    );

    return BaseLayout(
        title: showAppBar ? titleWidget : null,
      showAppBar: showAppBar,
      child: Center(
        child: Column(
          children: [
            !showAppBar ? titleWidget : Container(),
            const Placeholder()
          ],
        ),
      )
    );
  }

}