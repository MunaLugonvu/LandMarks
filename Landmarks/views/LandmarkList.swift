//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Muna Lugonvu on 13/01/2026.
//
import SwiftUI

struct LandmarkList: View {
    var body: some View {
        // NavigationSplitView creates a master–detail layout
        // Left side = list, Right side = detail view
        NavigationSplitView {

            // List takes a data source (landmarks)
            // SwiftUI automatically loops over each item
            List(landmarks) {

                // landmark in:
                // This is like Array.map(...)
                // For each landmark in the landmarks array,
                // build ONE row using the code below
                landmark in

                // NavigationLink defines navigation behavior
                // When the row is tapped, navigate to LandmarkDetail
                NavigationLink {

                    // Destination view (what opens when tapped)
                    LandmarkDetail(landmark: landmark)

                } label: {

                    // Label view (what the row looks like)
                    // Each row is a LandmarkRow built from the landmark data
                    LandmarkRow(Landmark: landmark)
                }
            }
            // Title shown at the top of the navigation list
            .navigationTitle("Landmarks")

        } detail: {

            // Placeholder detail view shown when nothing is selected
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
