import 'package:badlo/domain/entity/market_place.dart';

enum MarketType { swapping, auction, donation }

List<MarketPlace> marketPlaces = [
  MarketPlace(1, 'Swapping'),
  MarketPlace(2, 'Auction'),
  MarketPlace(3, 'Donation'),
];
