//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by student on 18/04/24.
//

import SwiftUI

@main
// @main untuk mengidentifikasikan sebagai poin awal dari aplikasi
struct LandmarksApp: App {
    
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
