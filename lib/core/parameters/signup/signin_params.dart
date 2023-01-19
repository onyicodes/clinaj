import 'package:equatable/equatable.dart';
  ///Used in passing in the login parameters
  ///
  ///The user property can be [email], [phone] (phone with the country code) or [username]
class SigninParams extends Equatable {

  final String user;
  final String password;

  const SigninParams({
    required this.user,
    required this.password,
  });

  @override
  List<Object?> get props => [];
}
