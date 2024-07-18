//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by 감자의 맥북 on 7/18/24.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool //버튼 현재상태
    var body: some View {
        Button{
            isSet.toggle()
        } label:{
            Label("Toggle Favorite", systemImage: isSet ? "star.fill":"star")
                    .labelStyle(.iconOnly)
                    .foregroundStyle(isSet ? .yellow : .gray )
            //title문자열 표시x
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
