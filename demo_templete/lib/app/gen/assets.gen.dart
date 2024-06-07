/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';
import 'package:lottie/lottie.dart';

class $AssetsAnimationGen {
  const $AssetsAnimationGen();

  /// File path: assets/animation/loading.json
  LottieGenImage get loading =>
      const LottieGenImage('assets/animation/loading.json');

  /// List of all assets
  List<LottieGenImage> get values => [loading];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/coming_soon.png
  AssetGenImage get comingSoon =>
      const AssetGenImage('assets/images/coming_soon.png');

  /// File path: assets/images/coming_soon_icon.png
  AssetGenImage get comingSoonIcon =>
      const AssetGenImage('assets/images/coming_soon_icon.png');

  /// File path: assets/images/delete_icon.png
  AssetGenImage get deleteIcon =>
      const AssetGenImage('assets/images/delete_icon.png');

  /// File path: assets/images/email_send.png
  AssetGenImage get emailSend =>
      const AssetGenImage('assets/images/email_send.png');

  /// File path: assets/images/ethnic_logo.png
  AssetGenImage get ethnicLogo =>
      const AssetGenImage('assets/images/ethnic_logo.png');

  /// File path: assets/images/forgot_password_icon.png
  AssetGenImage get forgotPasswordIcon =>
      const AssetGenImage('assets/images/forgot_password_icon.png');

  /// File path: assets/images/get_start.png
  AssetGenImage get getStart =>
      const AssetGenImage('assets/images/get_start.png');

  /// File path: assets/images/hand.png
  AssetGenImage get hand => const AssetGenImage('assets/images/hand.png');

  /// File path: assets/images/launcher_icon.jpg
  AssetGenImage get launcherIcon =>
      const AssetGenImage('assets/images/launcher_icon.jpg');

  /// File path: assets/images/logo_app.png
  AssetGenImage get logoApp =>
      const AssetGenImage('assets/images/logo_app.png');

  /// File path: assets/images/logo_launcher.png
  AssetGenImage get logoLauncher =>
      const AssetGenImage('assets/images/logo_launcher.png');

  /// File path: assets/images/map.png
  AssetGenImage get map => const AssetGenImage('assets/images/map.png');

  /// File path: assets/images/new_logo.png
  AssetGenImage get newLogo =>
      const AssetGenImage('assets/images/new_logo.png');

  /// File path: assets/images/resent_code.png
  AssetGenImage get resentCode =>
      const AssetGenImage('assets/images/resent_code.png');

  /// File path: assets/images/result_not_found.png
  AssetGenImage get resultNotFound =>
      const AssetGenImage('assets/images/result_not_found.png');

  /// File path: assets/images/small_logo.png
  AssetGenImage get smallLogo =>
      const AssetGenImage('assets/images/small_logo.png');

  /// File path: assets/images/welcome_screen1.png
  AssetGenImage get welcomeScreen1 =>
      const AssetGenImage('assets/images/welcome_screen1.png');

  /// File path: assets/images/welcome_screen2.png
  AssetGenImage get welcomeScreen2 =>
      const AssetGenImage('assets/images/welcome_screen2.png');

  /// File path: assets/images/welcome_screen3.png
  AssetGenImage get welcomeScreen3 =>
      const AssetGenImage('assets/images/welcome_screen3.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        comingSoon,
        comingSoonIcon,
        deleteIcon,
        emailSend,
        ethnicLogo,
        forgotPasswordIcon,
        getStart,
        hand,
        launcherIcon,
        logoApp,
        logoLauncher,
        map,
        newLogo,
        resentCode,
        resultNotFound,
        smallLogo,
        welcomeScreen1,
        welcomeScreen2,
        welcomeScreen3
      ];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/Right-Arrow.svg
  SvgGenImage get rightArrow => const SvgGenImage('assets/svg/Right-Arrow.svg');

  /// File path: assets/svg/ellipse_welcome_screen.svg
  SvgGenImage get ellipseWelcomeScreen =>
      const SvgGenImage('assets/svg/ellipse_welcome_screen.svg');

  /// File path: assets/svg/ellipse_welcome_screen1.svg
  SvgGenImage get ellipseWelcomeScreen1 =>
      const SvgGenImage('assets/svg/ellipse_welcome_screen1.svg');

  /// File path: assets/svg/forgot_password_icon.svg
  SvgGenImage get forgotPasswordIcon =>
      const SvgGenImage('assets/svg/forgot_password_icon.svg');

  /// File path: assets/svg/get_start.svg
  SvgGenImage get getStart => const SvgGenImage('assets/svg/get_start.svg');

  /// File path: assets/svg/hand.svg
  SvgGenImage get hand => const SvgGenImage('assets/svg/hand.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        rightArrow,
        ellipseWelcomeScreen,
        ellipseWelcomeScreen1,
        forgotPasswordIcon,
        getStart,
        hand
      ];
}

class Assets {
  Assets._();

  static const $AssetsAnimationGen animation = $AssetsAnimationGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size = null});

  final String _assetName;

  final Size? size;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size = null,
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size = null,
  }) : _isVecFormat = true;

  final String _assetName;

  final Size? size;
  final bool _isVecFormat;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture(
      _isVecFormat
          ? AssetBytesLoader(_assetName,
              assetBundle: bundle, packageName: package)
          : SvgAssetLoader(_assetName,
              assetBundle: bundle, packageName: package),
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class LottieGenImage {
  const LottieGenImage(this._assetName);

  final String _assetName;

  LottieBuilder lottie({
    Animation<double>? controller,
    bool? animate,
    FrameRate? frameRate,
    bool? repeat,
    bool? reverse,
    LottieDelegates? delegates,
    LottieOptions? options,
    void Function(LottieComposition)? onLoaded,
    LottieImageProviderFactory? imageProviderFactory,
    Key? key,
    AssetBundle? bundle,
    Widget Function(BuildContext, Widget, LottieComposition?)? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    double? width,
    double? height,
    BoxFit? fit,
    AlignmentGeometry? alignment,
    String? package,
    bool? addRepaintBoundary,
    FilterQuality? filterQuality,
    void Function(String)? onWarning,
  }) {
    return Lottie.asset(
      _assetName,
      controller: controller,
      animate: animate,
      frameRate: frameRate,
      repeat: repeat,
      reverse: reverse,
      delegates: delegates,
      options: options,
      onLoaded: onLoaded,
      imageProviderFactory: imageProviderFactory,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      package: package,
      addRepaintBoundary: addRepaintBoundary,
      filterQuality: filterQuality,
      onWarning: onWarning,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
