//
//  ContentView.swift
//  Landmarks
//
//  Created by Muna Lugonvu on 09/01/2026.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack{
            Mapview().frame(height:300)
            CircleImage().offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock").font(.title).foregroundStyle(.black)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Description")
            }
            .padding()
            Spacer()
            
        }
        }
    }


#Preview {
    ContentView()
}
