//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Muna Lugonvu on 28/01/2026.
//

import SwiftUI

struct FavoriteButton: View {
    //Because you use a binding, changes made inside this view propagate back to the data source.
    @Binding var isSet: Bool
    var body: some View {
        Button {
                  isSet.toggle()
              } label: {
                  Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                      .labelStyle(.iconOnly)
                      .foregroundStyle(isSet ? .yellow : .gray)
              }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
