
# Native Flutter Admob

[![pub package](https://img.shields.io/pub/v/native_flutter_admob.svg)](https://pub.dartlang.org/packages/native_flutter_admob) [![GitHub stars](https://img.shields.io/github/stars/finotilucas/native_flutter_admob)](https://github.com/finotilucas/native_flutter_admob/stargazers) [![GitHub forks](https://img.shields.io/github/forks/finotilucas/native_flutter_admob)](https://github.com/finotilucas/native_flutter_admob/network) [![GitHub license](https://img.shields.io/github/license/finotilucas/native_flutter_admob)](https://github.com/finotilucas/native_flutter_admob/blob/master/LICENSE) [![GitHub issues](https://img.shields.io/github/issues/finotilucas/native_flutter_admob)](https://github.com/finotilucas/native_flutter_admob/issues)


Plugin to integrate Firebase Native Admob to Flutter application

***Warning:***
This is a forked and updated version of native_flutter_admob
The plugin is based on Flutter `PlatformView` (`AndroidView`) to create a custom widget from Native View. Therefore, only Android is supported at the moment.
For iOS, wait for Flutter team to implement `iOSView` equivalent.

## Getting Started

For help getting started with Flutter, view our online [documentation](http://flutter.io/).

<p>

<img  src="https://github.com/FinotiLucas/native_flutter_admob/blob/master/example/assets/screenshot/1.png?raw=true"  width=265/>

</p>


## How it works

The plugin provides:
- `NativeAdmob`: a singleton class that let you to initialize Admob app ID
- `NativeAdmobBannerView`: a Flutter widget

### Initialize Admob app ID

`NativeAdmob` allows you to initialize Admob ID. For example:

```dart
final _nativeAdmob = NativeAdmob();

@override
void initState() {
super.initState();

_nativeAdmob.initialize(appID: "<Your Admob app ID>");
}
````

### Integrate banner view widget

'NativeAdmobBannerView' is a Flutter widget, so you can add it anywhere in Flutter application. For example:

```dart
@override
Widget build(BuildContext context) {
return MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text('Plugin example app'),
    ),
    body: ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 20.0),
          height: 200.0,
          color: Colors.green,
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20.0),
          height: 200.0,
          color: Colors.green,
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20.0),
          height: 200.0,
          color: Colors.green,
        ),
        NativeAdmobBannerView(
          adUnitID: "<Your ad unit ID>",
          style: BannerStyle.dark, // enum dark or light
          showMedia: true, // whether to show media view or not
          contentPadding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0), // content padding
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20.0),
          height: 200.0,
          color: Colors.green,
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20.0),
          height: 200.0,
          color: Colors.green,
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20.0),
          height: 200.0,
          color: Colors.green,
        ),
      ],
    ),
  ),
);
}
````

***Warning:***
`NativeAdmobBannerView` has a fixed height. Its height is based on content height, content padding (`contentPadding` parameter) and media view (`showMedia` parameter). So you don't need to worry about the widget height.

## Example

To run example project, please follow this link: [Flutter Firebase](https://firebase.google.com/docs/flutter/setup) to integrate you google services
 

 
# 👍 Contribution

Want to contribute? Great!
Code Sharing makes the world a better place <3

1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -m 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request


### Support
----

Help us to continue developing solutions for the community 

<a href="https://www.buymeacoffee.com/6cdltqC" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-blue.png" alt="Buy Me A Coffee" style="height: 51px !important;width: 217px !important;" ></a>
