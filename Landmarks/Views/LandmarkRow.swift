//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Hatice Kar on 4.11.2024.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark : Landmark
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: UIScreen.main.bounds.width*0.12, height: UIScreen.main.bounds.height*0.06)
            Text(landmark.name)
            Spacer()
        }
    }
}

/*#Preview("Turtle Rock") {
    LandmarkRow(landmark: landmarks[0])
}

#Preview("Salmon") {
    LandmarkRow(landmark: landmarks[1])
}*/

#Preview{
    Group{
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}
