//
//  ModelData.swift
//  Landmarks
//
//  Created by Hatice Kar on 4.11.2024.
//

import Foundation

var landmarks : [Landmark]=load("landmarkData.json")


func load<T: Decodable>(_ filename: String)-> T{
    let data : Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do{
        data = try Data(contentsOf: file)
    }catch{
        fatalError("Couldn't load\(filename) from main bundle:\n\(error)")
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("Couldn't parse\(filename) as \(T.self):\n\(error)")
    }
}


/*
 load(_:)Uygulamanın ana paketinden belirli bir adla JSON verilerini getiren bir yöntem oluşturun .
 DecodableYükleme yöntemi , protokolün bir bileşeni olan protokole uygun geri dönüş türüne dayanır Codable.
 
 
 
 
 func load<T: Decodable>(_ filename: String)-> T{ = (generic) fonksiyondur ve Decodable protokolünü uygulayan herhangi bir türü (T) dönebilir.
 Bundle.main.url(forResource:withExtension:), filename adı verilen dosyayı ana projedeki bundle'da arar ve onun URL’sini döndürmeye çalışır.
 
 */

