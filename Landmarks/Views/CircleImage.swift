//
//  CircleImage.swift
//  Landmarks
//
//  Created by 감자의 맥북 on 7/18/24.
//

import SwiftUI

struct CircleImage: View {
    var image : Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay{
                Circle()
                    .stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 5)
    }
}

#Preview {
    CircleImage(image:Image("turtlerock"))
}
