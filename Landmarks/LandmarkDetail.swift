//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Hatice Kar on 4.11.2024.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark : Landmark
    var body: some View {
        VStack{
            ScrollView{
                MapView(coordinate: landmark.locationCoordinate).frame(height:400)
                CircleImage(image: landmark.image)
                    .offset(y: -150)
                    .padding(.bottom, -140)
                VStack(alignment: .leading) {
                    Text(landmark.name)
                        .font(.title)
                    
                    HStack{
                        Text(landmark.park)
                            .font(.subheadline)
                        Spacer()
                        Text(landmark.state)
                            .font(.subheadline)
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    
                    Divider()
                    Text("About\(landmark.name)")
                        .font(.title2)
                    Text(landmark.description)
                }
                .padding()
                Spacer()
            }
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
