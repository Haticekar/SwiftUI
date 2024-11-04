//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Hatice Kar on 4.11.2024.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks, id:\.id){
                landmark in
                NavigationLink{
                    LandmarkDetail(landmark:landmark)
                } label: {  LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}


/*List{
    LandmarkRow(landmark: landmarks[0])
    LandmarkRow(landmark: landmarks[1])
}
 NavigationSplitView= A view that presents views in two or three columns, where selections in leading columns control presentations in subsequent columns.
 
 
 NavigationLink
 A view that controls a navigation presentation.
 struct NavigationLink<Label, Destination> where Label : View, Destination : View
 
 */

