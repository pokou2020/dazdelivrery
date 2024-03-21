import '../data.dart';

class Delivery {
  String? creationDate;
  String? deliveryDate;
  String? packageType;
  String? reference;
  String? deliverName;
  DeliveryStatus? status;
  String? price;

  Delivery({
    this.creationDate,
    this.deliveryDate,
    this.packageType,
    this.reference,
    this.deliverName,
    this.status,
    this.price,
  });
}
