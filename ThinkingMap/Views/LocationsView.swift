//
//  LocationsView.swift
//  ThinkingMap
//
//  Created by Armaan Khan  on 07/08/25.
//

import SwiftUI
import MapKit


struct LocationsView: View {
    
    @EnvironmentObject private var vm: LocationViewModel
    
   
                                                              
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $vm.mapRegion )
                .ignoresSafeArea()
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationViewModel())
}
