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

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bg-screen-1.png
  AssetGenImage get bgScreen1 =>
      const AssetGenImage('assets/images/bg-screen-1.png');

  /// File path: assets/images/bg-screen-2.png
  AssetGenImage get bgScreen2 =>
      const AssetGenImage('assets/images/bg-screen-2.png');

  /// File path: assets/images/dashboard_header.png
  AssetGenImage get dashboardHeader =>
      const AssetGenImage('assets/images/dashboard_header.png');

  /// Directory path: assets/images/icons
  $AssetsImagesIconsGen get icons => const $AssetsImagesIconsGen();

  /// File path: assets/images/success.svg
  SvgGenImage get success => const SvgGenImage('assets/images/success.svg');

  /// List of all assets
  List<dynamic> get values => [bgScreen1, bgScreen2, dashboardHeader, success];
}

class $AssetsImagesIconsGen {
  const $AssetsImagesIconsGen();

  /// File path: assets/images/icons/apple.svg
  SvgGenImage get apple => const SvgGenImage('assets/images/icons/apple.svg');

  /// File path: assets/images/icons/burger.svg
  SvgGenImage get burger => const SvgGenImage('assets/images/icons/burger.svg');

  /// File path: assets/images/icons/facebook.svg
  SvgGenImage get facebook =>
      const SvgGenImage('assets/images/icons/facebook.svg');

  /// File path: assets/images/icons/google.svg
  SvgGenImage get google => const SvgGenImage('assets/images/icons/google.svg');

  /// File path: assets/images/icons/location.svg
  SvgGenImage get location =>
      const SvgGenImage('assets/images/icons/location.svg');

  /// File path: assets/images/icons/notifications.svg
  SvgGenImage get notifications =>
      const SvgGenImage('assets/images/icons/notifications.svg');

  /// File path: assets/images/icons/pizza.svg
  SvgGenImage get pizza => const SvgGenImage('assets/images/icons/pizza.svg');

  /// File path: assets/images/icons/search.svg
  SvgGenImage get search => const SvgGenImage('assets/images/icons/search.svg');

  /// File path: assets/images/icons/soda.svg
  SvgGenImage get soda => const SvgGenImage('assets/images/icons/soda.svg');

  /// File path: assets/images/icons/tacos.svg
  SvgGenImage get tacos => const SvgGenImage('assets/images/icons/tacos.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        apple,
        burger,
        facebook,
        google,
        location,
        notifications,
        pizza,
        search,
        soda,
        tacos
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
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
    final BytesLoader loader;
    if (_isVecFormat) {
      loader = AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return SvgPicture(
      loader,
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
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
