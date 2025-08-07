//
//  LocationsViewModels.swift
//  ThinkingMap
//
//  Created by Armaan Khan  on 07/08/25.
//

import Foundation

class LocationViewModel: ObservableObject {
    @Published var locations: [Location]
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
    }
}
