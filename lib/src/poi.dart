part of amap_flutter_base;

/// POI
class AMapPoi {
  AMapPoi({this.id, this.name, this.latLng});

  /// 唯一标识符
  final String? id;

  /// POI的名称
  final String? name;

  /// 经纬度
  final LatLng? latLng;

  static AMapPoi? fromJson(dynamic json) {
    if (null == json) {
      return null;
    }
    return AMapPoi(
      id: json['id'],
      name: json['name'],
      latLng: LatLng.fromJson(json['latLng'])!,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'id': id, 'name': name, 'latLng': latLng};
  }

  @override
  String toString() {
    return 'TouchPOI(id: $id, name: $name, latlng: $latLng)';
  }
}
