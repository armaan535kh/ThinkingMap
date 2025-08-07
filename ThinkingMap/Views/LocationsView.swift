//
//  LocationsView.swift
//  ThinkingMap
//
//  Created by Armaan Khan  on 07/08/25.
//

import SwiftUI



struct LocationsView: View {
    
    @EnvironmentObject var vm: LocationViewModel
    
    var body: some View {
        List {
            ForEach(vm.locations) {
                Text($0.name)
                //THis is the data
            }
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationViewModel())
}
