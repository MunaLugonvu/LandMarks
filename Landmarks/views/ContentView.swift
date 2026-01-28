//
//  ContentView.swift
//  Landmarks
//
//  Created by Muna Lugonvu on 09/01/2026.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
       LandmarkList()
        
        }
    }


#Preview {
    ContentView().environment(ModelData())
}
