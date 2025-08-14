//
//  LocationsListView.swift
//  ThinkingMap
//
//  Created by Armaan Khan  on 12/08/25.
//

import SwiftUI

struct LocationsListView: View {
    @EnvironmentObject private var vm: LocationViewModel
    var body: some View {
        List{
            ForEach(vm.locations){ location in 
                ListRowView(location: location)
                    .padding(.vertical, 4)
                    .listRowBackground(Color.clear)
                
                
            }
        }
        .listStyle(PlainListStyle())
    }
}

#Preview {
    LocationsListView()
        .environmentObject(LocationViewModel())
}


extension LocationsListView {
    private func ListRowView(location: Location) -> some View {
        HStack {
            if let imageName = location.imageName.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 45, height: 45)
            }
            
            VStack(alignment: .leading){
                Text(location.name)
                    .font(.headline)
                Text(location.cityName)
                    .font(.subheadline)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
