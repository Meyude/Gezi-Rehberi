// ignore_for_file: unused_field

class Assets {
  Assets._();

  static const images = _AssetsImages();
  static const icons = _AssetsIcons();
  static const animations = _AssetsAnimations();
}

class _AssetsImages {
  const _AssetsImages();

  static const String splash = 'assets/images/splash.png';
  static const String logo = 'assets/images/logo.png';
}

class _AssetsIcons {
  const _AssetsIcons();

  static const String appIcon = 'assets/icons/app_icon.svg';
}

class _AssetsAnimations {
  const _AssetsAnimations();

  static const String travel = 'assets/animations/travel.json';
}