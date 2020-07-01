//
//  MapView.swift
//  Weather
//
//  Created by Ahmet Kilinc on 01/07/2020.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView()
    }

    func updateUIView(_ view: MKMapView, context: Context){
//            let coordinate = CLLocationCoordinate2D(
//                latitude: 12.9716, longitude: 77.5946)
//            let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
//            let region = MKCoordinateRegion(center: coordinate, span: span)
//            view.setRegion(region, animated: true)
    }
}


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
