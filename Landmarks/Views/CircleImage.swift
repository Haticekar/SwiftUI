//
//  CircleImage.swift
//  Landmarks
//
//  Created by Hatice Kar on 4.11.2024.
//

import SwiftUI

struct CircleImage: View {
    var image : Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }.shadow(radius: 7)
        
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}


/*Image("turtlerock")
    .clipShape(Circle())
    .overlay {
        Circle().stroke(.white, lineWidth: 4)
    }
    .shadow(radius: 7)*/