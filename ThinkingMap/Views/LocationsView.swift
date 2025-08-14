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
            header
                .padding()
            
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationViewModel())
}

extension LocationsView {
    private var header: some View {
        VStack{
            VStack(spacing: 0) {
                Button {
                    vm.toggleLocationList()
                } label: {
                    Text(vm.mapLocation.name+", "+vm.mapLocation.cityName)
                        .font(.title2)
                        .fontWeight(.black)
                        .foregroundStyle(.primary)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        
                        .overlay(alignment: .leading) {
                            Image(systemName: "arrow.down")
                                .foregroundStyle(.primary)
                                .padding()
                                .rotationEffect(Angle(degrees: vm.showLocationList ? 180 : 0))
                            
                        }
                }

                if vm.showLocationList{
                    LocationsListView()
                }
                
                
                
            }
            .background(.thickMaterial)
            .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 15)
            
            
            
            Spacer()
        }
            
            
        
        
        
    }
}
