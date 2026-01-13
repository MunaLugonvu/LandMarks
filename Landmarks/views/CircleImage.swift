//
//  cicleimage.swift
//  Landmarks
//
//  Created by Muna Lugonvu on 09/01/2026.
//

import SwiftUI


struct CircleImage: View {
    var body: some View {
        Image("turtlerock").clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay{Circle().stroke(.black,lineWidth: 4)
            }
            .shadow(radius:7)
    }
}


#Preview {
    CircleImage()
}
