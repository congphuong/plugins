part of google_maps_flutter;

class _PolylineUpdate {
  _PolylineUpdate.from(Polyline previous, Polyline current){
    if (previous != null && current != null){
      if(previous.tag != current.tag){
        polyline = current;
      } else {
        polyline = previous;
      }
    } else if (previous == null && current != null){
      polyline = current;
    } else if (previous != null && current == null){
      polyline = Polyline(tag: null);
    }
  }

  Polyline polyline;

  Map<String, dynamic> _toMap(){
    final Map<String, dynamic> args =  <String, dynamic>{};

    void addIfNonNull(String fieldName, dynamic value) {
      if (value != null) {
        args[fieldName] = value;
      }
    }

    addIfNonNull('polylineToUpdate', polyline._toList());
    return args;
  }
}