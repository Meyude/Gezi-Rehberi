enum Flavor { dev, prod }

class Environment {
  Environment._();

  static Flavor _flavor = Flavor.dev;

  static Flavor get flavor => _flavor;

  static void setFlavor(Flavor flavor) {
    _flavor = flavor;
  }
  // TODO: Bu urller geçici şimdilik örnek ortam değerleri ile devam ediyorum sonra gerçek servis adresleri ile güncelleyeceğiz
  static String get baseUrl {
    switch (_flavor) {
      case Flavor.dev:
        return 'https://dev-api.gezirehberi.com';
      case Flavor.prod:
        return 'https://api.gezirehberi.com';
    }
  }

  static bool get isDev => _flavor == Flavor.dev;
  static bool get isProd => _flavor == Flavor.prod;
}