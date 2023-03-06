class Teste {
  static Teste? _instance;
  // Avoid self isntance
  Teste._();
  static Teste get instance {
    _instance ??= Teste._();
    return _instance!;
  }
}
