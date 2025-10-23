// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PaymentModel {
  final String cardNumber;
  final String expiryDate;
  final String cvv;
  final String cardHolder;

  PaymentModel({
    required this.cardNumber,
    required this.expiryDate,
    required this.cvv,
    required this.cardHolder,
  });

  PaymentModel copyWith({
    String? cardNumber,
    String? expiryDate,
    String? cvv,
    String? cardHolder,
  }) {
    return PaymentModel(
      cardNumber: cardNumber ?? this.cardNumber,
      expiryDate: expiryDate ?? this.expiryDate,
      cvv: cvv ?? this.cvv,
      cardHolder: cardHolder ?? this.cardHolder,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cardNumber': cardNumber,
      'expiryDate': expiryDate,
      'cvv': cvv,
      'cardHolder': cardHolder,
    };
  }

  factory PaymentModel.fromMap(Map<String, dynamic> map) {
    return PaymentModel(
      cardNumber: map['cardNumber'] as String,
      expiryDate: map['expiryDate'] as String,
      cvv: map['cvv'] as String,
      cardHolder: map['cardHolder'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PaymentModel.fromJson(String source) => PaymentModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PaymentModel(cardNumber: $cardNumber, expiryDate: $expiryDate, cvv: $cvv, cardHolder: $cardHolder)';
  }

  @override
  bool operator ==(covariant PaymentModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.cardNumber == cardNumber &&
      other.expiryDate == expiryDate &&
      other.cvv == cvv &&
      other.cardHolder == cardHolder;
  }

  @override
  int get hashCode {
    return cardNumber.hashCode ^
      expiryDate.hashCode ^
      cvv.hashCode ^
      cardHolder.hashCode;
  }
}
