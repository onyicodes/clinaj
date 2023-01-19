import 'package:clinaj/core/constants/error_texts.dart';
import 'package:clinaj/core/error/failures.dart';

String mapFailureToErrorMessage(Failure failure) {
  switch (failure.runtimeType) {
    case NetworkFailure:
      const response = GeneralErrorMessage.networkError;
      return response;
    case ServerFailure:
      const response = GeneralErrorMessage.serverError;
      return response;
    case CacheFailure:
      const response = GeneralErrorMessage.cachingFailed;
      return response;
     case UnKnownFailure:
      const response = GeneralErrorMessage.unknownError;
      return response;
    case NotAuthorizedFailure:
      const response = GeneralErrorMessage.notAuthorized;
      return response;
    default:
      const response = GeneralErrorMessage.unknownError;
      return response;
  }
}
