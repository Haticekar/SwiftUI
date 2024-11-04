//
//  MapView.swift
//  Landmarks
//
//  Created by Hatice Kar on 4.11.2024.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate : CLLocationCoordinate2D
    var body: some View {
        //Map(initialPosition: .region(region))
        Map(position: .constant(.region(region)))
    }
    private var region : MKCoordinateRegion{
        MKCoordinateRegion(
            center: //CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
            coordinate, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: 116.166_868))
}
