//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Muna Lugonvu on 13/01/2026.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List {
       LandmarkRow(Landmark: landmarks[0])
       LandmarkRow(Landmark: landmarks[1])
               }
    }
}

#Preview {
    LandmarkList()
}
