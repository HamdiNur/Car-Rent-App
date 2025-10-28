import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rentapp/data/models/car.dart';

class FirebaseCarDataSource {
  final FirebaseFirestore firestore;

  FirebaseCarDataSource({required this.firestore});

  // Fetch all cars
  Future<List<Car>> getCars() async {
    var snapshot = await firestore.collection('cars').get();
    return snapshot.docs.map((doc) => Car.fromMap(doc.data())).toList();
  }

  // Add a car
  Future<void> addCar(Car car) async {
    await firestore.collection('cars').add({
      'model': car.model,
      'distance': car.distance,
      'fuelCapacity': car.fuelCapacity,
      'pricePerHour': car.pricePerHour,
    });
  }

  // Optional: seed multiple cars
  Future<void> seedCars(List<Car> cars) async {
    for (var car in cars) {
      await addCar(car);
    }
  }
}
