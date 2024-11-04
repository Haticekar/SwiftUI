//
//  Landmark.swift
//  Landmarks
//
//  Created by Hatice Kar on 4.11.2024.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark : Codable,Hashable,Identifiable{
    var id : Int
    var name : String
    var park : String
    var state : String
    var description : String
    
    private var imageName : String
    var image : Image {
        Image(imageName)
    }
    
    private var coordinates : Coordinates
    var locationCoordinate : CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    struct Coordinates : Hashable,Codable{
        var latitude : Double
        var longitude : Double
    }
    
}


// Codable = Decodable & Encodable  --- A type that can convert itself into and out of an external representation.

// Hashable = Hashable protokolü, Swift'te türlerin tamsayı değerlerine karma edilmesine izin veren ve bunların sözlükler ve kümeler gibi karma tabanlı koleksiyonlarda anahtar olarak kullanılmasını kolaylaştıran temel bir protokoldür.
