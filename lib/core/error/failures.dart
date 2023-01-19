import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [];
}

class ServerFailure extends Failure {}

class CacheFailure extends Failure {}

class NetworkFailure extends Failure {}

class AccountNotFoundFailure extends Failure {}

class AccountExistsFailure extends Failure {}

class NotAuthorizedFailure extends Failure {}

class UnKnownFailure extends Failure {}
