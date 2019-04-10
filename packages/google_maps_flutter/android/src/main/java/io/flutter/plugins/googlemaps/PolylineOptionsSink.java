package io.flutter.plugins.googlemaps;

import com.google.android.gms.maps.model.LatLng;

import java.util.List;

public interface PolylineOptionsSink {
    void setPoints(List<LatLng> points);
}
