//
//  LocationsViewModels.swift
//  ThinkingMap
//
//  Created by Armaan Khan  on 07/08/25.
//

import Foundation
import MapKit
import SwiftUI

class LocationViewModel: ObservableObject {
    @Published var locations: [Location]
    
    @Published var mapLocation: Location
    
    //Current region on map
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    //show list on location
    @Published var showLocationList: Bool = false
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        self.updateMapRegion(location: locations.first!)
    }
    
    private func updateMapRegion(location: Location) {
        withAnimation(.easeInOut) {
            mapRegion = MKCoordinateRegion(
                center: location.coordinate, span: mapSpan
            )
        }
        
    }
    
    func toggleLocationList() {
        withAnimation(.easeInOut) {
            showLocationList = !showLocationList
        }
    }
}

