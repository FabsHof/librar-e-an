enum ThemeDimensions {
  S, M, L, XL
}
extension ThemeDimensionsExtension on ThemeDimensions {
  double get dimension {
    switch(this) {
      case ThemeDimensions.S:
        return 2;
      case ThemeDimensions.M:
        return 8;
      case ThemeDimensions.L:
        return 16;
      case ThemeDimensions.XL:
        return 24;
      default:
        return -1;
    }
  }
}