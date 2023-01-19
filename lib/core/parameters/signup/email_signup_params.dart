import 'package:equatable/equatable.dart';

class SignupParams extends Equatable {
  final String email;
  final String userName;
  final String phone;
  final String password;
  final String countryDialCode;
  final String role;

  const SignupParams(
      {required this.email,
      required this.userName,
      required this.phone,
      required this.password,
      required this.countryDialCode,
      required this.role});

  @override
  List<Object?> get props => [];
}
