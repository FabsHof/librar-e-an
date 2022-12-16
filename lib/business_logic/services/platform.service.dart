import 'package:flutter/material.dart';

enum ScreenSize {
  COMPACT, MEDIUM, EXPANDED
}


class PlatformService {

  static final _breakpointCompact = 600;
  static final _breakpointMedium = 1024;

  static bool isCompactScreenSize(BuildContext context) => PlatformService.getScreenSize(context) == ScreenSize.COMPACT;
  static bool isMediumScreenSize(BuildContext context) => PlatformService.getScreenSize(context) == ScreenSize.MEDIUM;
  static bool isExpandedScreenSize(BuildContext context) => PlatformService.getScreenSize(context) == ScreenSize.EXPANDED;

  ///
  /// Returns the ScreenSize-enum for the current screen and orientation.
  ///
  /// @returns {ScreenSize}
  ///
  static ScreenSize getScreenSize(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    Size size = mediaQuery.size;
    Orientation orientation = mediaQuery.orientation;
    double xDimension = orientation == Orientation.landscape ? size.width : size.height;
    return xDimension < _breakpointCompact ?
      ScreenSize.COMPACT : (
        xDimension <= _breakpointMedium ?
          ScreenSize.MEDIUM : ScreenSize.EXPANDED
      );
  }
}