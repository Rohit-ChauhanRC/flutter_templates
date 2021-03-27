import 'dart:io';

class BuildConfig {
  BuildConfig._();

  static final String kGoogleApiKey = Platform.isAndroid
      ? 'AIzaSyBF2vGFwGrTW2CuL-FyExO6s4oL6NahLI8'
      : 'AIzaSyALYfpwsPzCOO0MtzP8T7tgOXjYXSkN7N0';
  //TODO: change key on release
}
