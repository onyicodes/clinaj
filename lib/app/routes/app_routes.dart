part of './app_pages.dart';

abstract class Routes {
  static const initial = '/';
  static const home = '/home';
   static const explore = '/explore';
  static const details = '/details';
  static const roles = '/roles';
  static const deals = '/deals';
  static const favouritedeals = '/deals/favourites';
  static const notification = '/notification';
  static const account = '/account';
  static const businessInfo = '/business-info';
  static const notificationSettings = '/settings/notification';
  static const preferences = '/settings/preferences';
  static const accountSettings = '/settings/account';
  static const help = '/help';
  static const payments = '/payments';
  static const paymentPlans = '/payments/plans';
  static const shareApp = '/share-app';
  static const changePassword = '/password/change';
  static const dealDetails = '/deals/:id';
  static const onboarding = '/onboarding';
  static const notificationSetup = '/notification-setup';
  static const signup = '/signup';
  static const verifycode = '/verification';
  static const signin = '/signin';
  static const map = '/deals/:id/directions';
}
