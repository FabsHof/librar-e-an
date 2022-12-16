import 'package:flutter/material.dart';
import '../../business_logic/services/platform.service.dart';
import '../../util/theme.dart';
import '../components/_base-layout.component.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {

    final ThemeData themeData = Theme.of(context);
    final TextStyle textStyle = themeData.textTheme.titleLarge!.copyWith(color: Colors.white);
    final bool isExpandedScreen = PlatformService.isExpandedScreenSize(context);

    return BaseLayout(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.settings),
            SizedBox(width: ThemeDimensions.M.dimension,),
            Text('Einstellungen', style: textStyle, )
          ],
        ),
        child: Center(
          child: Row(
            children: [
              const Flexible(child: Placeholder()),
              isExpandedScreen ?
              const Flexible(child: Placeholder()) :
              Container()
            ],
          ),
        )
    );
  }
}