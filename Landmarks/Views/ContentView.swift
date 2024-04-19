//
//  ContentView.swift
//  Landmarks
//
//  Created by student on 18/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // secara default VStack akan meletakkan isi di dalamnya secara center pada x-axis dan y-axis, tapi bisa diatur alignment nya
        VStack {
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                
                HStack {
                    Text("Joshua Tree International Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                
                Text("Descriptive text goes here.")
            }
            .padding()
            
            Spacer()
        }
    }
}

// Preview untuk menampilkan preview dari isi dari ContentView
#Preview {
    ContentView()
}
