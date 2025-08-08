//
//  LocationsViewModels.swift
//  ThinkingMap
//
//  Created by Armaan Khan  on 07/08/25.
//

import Foundation
import MapKit

class LocationViewModel: ObservableObject {
    @Published var locations: [Location]
    
    @Published var mapLocation: Location
    
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        self.updateMapRegion(location: locations.first!)
    }
    
    private func updateMapRegion(location: Location) {
        
            mapRegion = MKCoordinateRegion(
                center: location.coordinate, span: mapSpan
            )
        
    }
}

