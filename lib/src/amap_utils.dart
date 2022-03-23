part of amap_flutter_base;

class AMapUtil {
  factory AMapUtil() => _instance;

  AMapUtil._();

  static AMapUtil _instance = AMapUtil._();
  static double _devicePixelRatio = 0;

  static void init(BuildContext context) {
    _devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
  }

  /// 获取当前设备的屏幕像素比
  static double get devicePixelRatio => _devicePixelRatio;
}
