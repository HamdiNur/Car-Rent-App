class Car {
  final String model;
  final double distance;
  final double fuelCapacity;
  final double pricePerHour;

  Car({
    required this.model,
    required this.distance,
    required this.fuelCapacity,
    required this.pricePerHour,
  });

  factory Car.fromMap(Map<String, dynamic> map) {
    return Car(
      model: map['model'],
      distance: map['distance'],
      fuelCapacity: map['fuelCapacity'],
      pricePerHour: map['pricePerHour'],
    );
  }
}

///1.domain/entties
///2.domain/repository(interface/contract)
///3.domain/usecase /getCardById getCardByName



///1.data/models
///2.domain/datasource(fetch api/firebase)
///3.domain/repositry