class PaymentModel {
  final String cardNumber;
  final String expiryDate;
  final String cvv;
  final String cardHolder;

  PaymentModel({required this.cardNumber, required this.expiryDate, required this.cvv, required this.cardHolder});
}
