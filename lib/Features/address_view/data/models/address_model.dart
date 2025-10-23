// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AddressModel {
   String firstName;
   String lastName;
   String address;
   String city;
   String state;
   String zipCode;
   String phone;

  AddressModel({
    required this.firstName,
    required this.lastName,
    required this.address,
    required this.city,
    required this.state,
    required this.zipCode,
    required this.phone,
  });

  AddressModel copyWith({
    String? firstName,
    String? lastName,
    String? address,
    String? city,
    String? state,
    String? zipCode,
    String? phone,
  }) {
    return AddressModel(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      address: address ?? this.address,
      city: city ?? this.city,
      state: state ?? this.state,
      zipCode: zipCode ?? this.zipCode,
      phone: phone ?? this.phone,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firstName': firstName,
      'lastName': lastName,
      'address': address,
      'city': city,
      'state': state,
      'zipCode': zipCode,
      'phone': phone,
    };
  }

  factory AddressModel.fromMap(Map<String, dynamic> map) {
    return AddressModel(
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      address: map['address'] as String,
      city: map['city'] as String,
      state: map['state'] as String,
      zipCode: map['zipCode'] as String,
      phone: map['phone'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AddressModel.fromJson(String source) => AddressModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AddressModel(firstName: $firstName, lastName: $lastName, address: $address, city: $city, state: $state, zipCode: $zipCode, phone: $phone)';
  }

  @override
  bool operator ==(covariant AddressModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.firstName == firstName &&
      other.lastName == lastName &&
      other.address == address &&
      other.city == city &&
      other.state == state &&
      other.zipCode == zipCode &&
      other.phone == phone;
  }

  @override
  int get hashCode {
    return firstName.hashCode ^
      lastName.hashCode ^
      address.hashCode ^
      city.hashCode ^
      state.hashCode ^
      zipCode.hashCode ^
      phone.hashCode;
  }
}
