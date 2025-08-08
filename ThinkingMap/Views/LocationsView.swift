//
//  LocationsView.swift
//  ThinkingMap
//
//  Created by Armaan Khan  on 07/08/25.
//

import SwiftUI
import MapKit


struct LocationsView: View {
    
    @EnvironmentObject var vm: LocationViewModel
    
    @State private var mapRegion: MapCameraPosition = .region(MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 41.8902,
            longitude: 12.4922
        ),
        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        
    )
                                                              )
    
    var body: some View {
        ZStack {
            Map(position: $mapRegion )
                .ignoresSafeArea()
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationViewModel())
}
