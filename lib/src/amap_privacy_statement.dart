part of amap_flutter_base;

/// 高德开放平台用户隐私声明配置
///
/// 高德SDK合规使用方案请参考：https://lbs.amap.com/news/sdkhgsy
class AMapPrivacyStatement {
  /// 构造 [AMapPrivacyStatement]
  ///
  /// [hasContains] 隐私权政策是否包含高德开平隐私权政策
  /// [hasShow] 隐私权政策是否弹窗展示告知用户
  /// [hasAgree] 隐私权政策是否已经取得用户同意
  const AMapPrivacyStatement({
    this.hasContains = false,
    this.hasShow = false,
    this.hasAgree = false,
  });

  /// 隐私权政策是否包含高德开平隐私权政策
  final bool? hasContains;

  /// 隐私权政策是否弹窗展示告知用户
  final bool? hasShow;

  /// 隐私权政策是否已经取得用户同意
  final bool? hasAgree;

  Map<String, dynamic> toJson() => toMap();

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hasContains': hasContains,
      'hasShow': hasShow,
      'hasAgree': hasAgree,
    };
  }

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) return true;
    if (runtimeType != other.runtimeType) return false;
    final AMapPrivacyStatement typedOther = other;
    return hasContains == typedOther.hasContains &&
        hasShow == typedOther.hasShow &&
        hasAgree == typedOther.hasAgree;
  }

  @override
  int get hashCode => hashValues(hasContains, hasShow, hasAgree);

  @override
  String toString() {
    return 'AMapPrivacyStatement(hasContains: $hasContains, hasShow: $hasShow, hasAgree: $hasAgree)';
  }
}
