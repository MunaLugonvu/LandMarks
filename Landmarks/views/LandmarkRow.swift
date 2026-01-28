//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Muna Lugonvu on 13/01/2026.
//

import SwiftUI

struct LandmarkRow: View {
    var Landmark : Landmark
    var body: some View {
        HStack {
        Landmark.image
            .resizable()
            .frame(width: 50, height: 50)
        Text(Landmark.name)

                    Spacer()
            if Landmark.isFavorite {
                           Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                       }
                }
    }
}

#Preview {
    VStack {
        LandmarkRow(Landmark: landmarks[0])
        LandmarkRow(Landmark: landmarks[1])
        LandmarkRow(Landmark: landmarks[2])
    }
}
