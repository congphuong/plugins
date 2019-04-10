part of google_maps_flutter;

class Polyline {
  Polyline({@required this.tag, this.points = const <LatLng>[]});

  final String tag;
  final List<LatLng> points;

  dynamic _llToJson(LatLng latLng) {
    if (latLng == null) {
      return null;
    }
    return <dynamic>[latLng.latitude, latLng.longitude];
  }

  dynamic _toList(){
    List<dynamic> json = <dynamic>[];
    points.forEach((ll){
      json.add(_llToJson(ll));
    });
    return json;
  }
}