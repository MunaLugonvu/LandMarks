//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Muna Lugonvu on 13/01/2026.
//

import SwiftUI


struct LandmarkList: View {
    var body: some View {
        //\.id means “use the id property of each landmark”.
        //List Takes a data source (landmarks) and a row builder closure.
        List(landmarks) {
            // landmark in: A closure (like a map function) that builds a row for each landmark. TAKE IT LIKE A MAP FUNCTION , SO for each element in the landmarks array add to landmark row something like that
            landmark in
            LandmarkRow(Landmark: landmark)
        }
    }
}


#Preview {
    LandmarkList()
}

