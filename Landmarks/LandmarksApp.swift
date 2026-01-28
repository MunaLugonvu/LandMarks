//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Muna Lugonvu on 09/01/2026.
//

import SwiftUI


@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()


    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
