//
//  LocationPreviewView.swift
//  ThinkingMap
//
//  Created by Armaan Khan  on 15/08/25.
//

import SwiftUI

struct LocationPreviewView: View {
    
    let location: Location
    
    var body: some View {
        
        VStack(spacing: 16) {
            imageSection
            titleSection
        }
        
        
        
    }
    
}

#Preview {
    
    ZStack {
        
        Color.blue.ignoresSafeArea()
        
        LocationPreviewView(location: LocationsDataService.locations.first!)
    }
}

extension LocationPreviewView {
    
    //for image Section
    private var imageSection: some View {
        
        ZStack {
            if let imageName = location.imageName.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
            }
        }
        .padding(6)
        .background(Color.white)
        .cornerRadius(10)
    }
    
    //for title section
    private var titleSection: some View {
        
        VStack(alignment: .leading, spacing: 4) {
            Text(location.name)
                .font(.title2)
                .fontWeight(.bold)
            
            Text(location.cityName)
                .font(.subheadline)
        }
        
    }
}
