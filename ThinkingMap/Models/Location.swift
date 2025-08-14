//
//  Location.swift
//  ThinkingMap
//
//  Created by Armaan Khan  on 07/08/25.
//

import Foundation
import MapKit

struct Location : Identifiable, Equatable {
    
    
    let name: String
    let cityName: String
    let coordinate: CLLocationCoordinate2D
    let description: String
    let imageName: [String]
    let link: String
    
    var id: String {
        name+cityName
    }
    
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
}
