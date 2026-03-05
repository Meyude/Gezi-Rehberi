/// [Stop] sınıfı, 'Single Responsibility' (Tek Sorumluluk) prensibi gereği
/// sadece bir durağın atomik verilerini ve davranışlarını yönetir.
final class Stop {
  final String name;
  final double lat;
  final double lng;
  final String description;

  Stop({
    required this.name,
    required this.lat,
    required this.lng,
    required this.description,
  });
}

/// [TravelRoute] sınıfı, üst seviye rota mantığını ve durak koleksiyonunu yönetir.
final class TravelRoute {
  final String id;
  final String title;
  final String creatorName;
  final String imageUrl;
  final double rating;
  final List<Stop> stops;

  TravelRoute({
    required this.id,
    required this.title,
    required this.creatorName,
    required this.imageUrl,
    required this.stops,
    this.rating = 0.0,
  });

  // Business Logic: Rota toplam durak sayısını dönen bir getter.
  // UI tarafında '5 Duraklı Rota' gibi gösterimler için merkezi kontrol sağlar.
  int get stopCount => stops.length;
}
