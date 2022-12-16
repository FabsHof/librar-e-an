import 'package:flutter/material.dart';
import '../pages/details.page.dart';
import '../../util/constants.dart';
import '../../util/theme.dart';
import '../../business_logic/services/platform.service.dart';
import '../../presentation/components/_base-layout.component.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  String? _currentBookTitle;
  bool _isInitial = true;

  // TODO: Add parameter
  void _enableDetailsPage(String title) {
    setState(() {
      _currentBookTitle = title;
    });
  }

  // TODO: Add parameter
  void _navigateToDetailsPage(BuildContext context, String title) {
    Navigator.of(context).pushNamed(Routes.DETAILS.name, arguments: title);
  }

  @override
  Widget build(BuildContext context) {

    final ThemeData themeData = Theme.of(context);
    final TextStyle textStyle = themeData.textTheme.titleLarge!.copyWith(color: Colors.white);
    final bool isExpandedScreen = PlatformService.isExpandedScreenSize(context);



    // TODO: Replace with working generator
    final Widget listWidget = ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          final String bookTitle = '#${index} Book Title';
          return Card(
            child: ListTile(
              leading: FlutterLogo(),
              title: Text(bookTitle),
              onTap: isExpandedScreen ? () => _enableDetailsPage(bookTitle) : () => _navigateToDetailsPage(context, bookTitle),
            ),
          );
        }
    );

    // TODO: set first book active for large screens that show details
    if (_isInitial && isExpandedScreen) {
      _enableDetailsPage('#0 Book Title');
    }

    return BaseLayout(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.book_outlined),
          SizedBox(width: ThemeDimensions.M.dimension,),
          Text('Bibliothek', style: textStyle, )
        ],
      ),
      child: Center(
        child: Row(
          children: [
            Flexible(child: listWidget),
            isExpandedScreen ?
              Flexible(
                child: DetailsPage(showAppBar: false, title: _currentBookTitle,)
              ) :
              Container()
          ],
        ),
      )
    );
  }
}