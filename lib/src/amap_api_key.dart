part of amap_flutter_base;

/// 高德开放平台api key配置
///
/// 申请key请到高德开放平台官网:https://lbs.amap.com/
/// Android平台的key的获取请参考：https://lbs.amap.com/api/poi-sdk-android/develop/create-project/get-key/?sug_index=2
/// iOS平台key的获取请参考：https://lbs.amap.com/api/poi-sdk-ios/develop/create-project/get-key/?sug_index=1
class AMapApiKey {
  const AMapApiKey({this.iosKey, this.androidKey});

  /// iOS 平台的 key
  final String? iosKey;

  /// Android 平台的 key
  final String? androidKey;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'androidKey': androidKey, 'iosKey': iosKey};
  }

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) return true;
    if (other is! AMapApiKey) return false;
    return androidKey == other.androidKey && iosKey == other.iosKey;
  }

  @override
  int get hashCode => hashValues(androidKey, iosKey);

  @override
  String toString() {
    return 'AMapApiKey(androidKey: $androidKey, iosKey: $iosKey)';
  }
}
