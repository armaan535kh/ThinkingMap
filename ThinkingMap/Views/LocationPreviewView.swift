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
            ZStack {
                if let imageName = location.imageName.first {
                    Image(imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .cornerRadius(10)
                }
            }
        }
        .padding(6)
        .background(Color.white)
        .cornerRadius(10)
        
        
    }
    
}

#Preview {
    
    ZStack {
        
        Color.blue.ignoresSafeArea()
        
        LocationPreviewView(location: LocationsDataService.locations.first!)
    }
}
