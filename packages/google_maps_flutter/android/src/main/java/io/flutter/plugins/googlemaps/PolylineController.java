package io.flutter.plugins.googlemaps;

import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Polyline;
import com.google.android.gms.maps.model.PolylineOptions;

import java.util.List;

public class PolylineController implements PolylineOptionsSink {
    private GoogleMap googleMap;
    private Polyline polyline;

    PolylineController(){
//        this.googleMap = googleMap;
//        polyline = googleMap.addPolyline(new PolylineOptions());
    }

    void setGoogleMap(GoogleMap googleMap) {
        this.googleMap = googleMap;
        if(polyline != null){
            polyline = null;
        }
    }

    @Override
    public void setPoints(List<LatLng> points) {
        if(polyline == null){
            initPolyline(points);
        } else {
            polyline.setPoints(points);
        }
    }

    private void initPolyline(List<LatLng> points){
        polyline = googleMap.addPolyline(new PolylineOptions().addAll(points));
    }

    void remove(){
        polyline.remove();
        polyline = null;
    }
}
