import 'package:gen/src/model/dummy_model/dummy_model.dart';

final class DummyData {
  static List<TravelRoute> routes = [
    TravelRoute(
      id: 'route_001',
      title: 'Kadıköy Kahve ve Sanat Turu',
      creatorName: 'GezginDeniz',
      imageUrl: 'https://images.unsplash.com/photo-1599427303058-f06cbdf4bb91',
      rating: 4.9,
      stops: [
        Stop(
          name: 'Moda Sahili',
          lat: 40.9785,
          lng: 29.0234,
          description: 'Sabah yürüyüşü ve deniz havası için başlangıç noktası.',
        ),
        Stop(
          name: 'Akademi Kitabevi',
          lat: 40.9852,
          lng: 29.0285,
          description: 'Nostaljik bir kahve molası ve kitap inceleme durağı.',
        ),
      ],
    ),
    TravelRoute(
      id: 'route_002',
      title: 'Tarihi Yarımada Keşfi',
      creatorName: 'MertDev',
      imageUrl: 'https://images.unsplash.com/photo-1527838832702-588f2373a651',
      rating: 4.7,
      stops: [
        Stop(
          name: 'Sultanahmet Meydanı',
          lat: 41.0054,
          lng: 28.9768,
          description: 'Milyon Taşı\'ndan başlayan tarihi yolculuk.',
        ),
        Stop(
          name: 'Gülhane Parkı',
          lat: 41.0125,
          lng: 28.9810,
          description: 'Asırlık çınarların altında kısa bir mola.',
        ),
      ],
    ),
  ];
}
