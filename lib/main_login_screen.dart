import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk_common/kakao_flutter_sdk_common.dart';

import 'main.dart';

void main() {

  // 웹 환경에서 카카오 로그인을 정상적으로 완료하려면 runApp() 호출 전 아래 메서드 호출 필요
  WidgetsFlutterBinding.ensureInitialized();

  // runApp() 호출 전 Flutter SDK 초기화
  KakaoSdk.init(
  nativeAppKey: '${'4b51ea72d6e6ce93818f2044cf91ff4f'}',
  javaScriptAppKey: '${'5c5c1a02d1ce7890a86c758504c08ee7'}',
  );
  runApp(MyApp());

}