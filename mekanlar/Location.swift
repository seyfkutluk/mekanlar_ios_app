//
//  location.swift
//  mekanlar
//
//  Created by Seyfülmülük Kutluk on 6.03.2022.
//
// To extract data from json files

import Foundation

struct Location : Decodable, Identifiable {   // Decodable shows that it is deodable to json 
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    let advisory: String
    
    static let example = Location(id: 1, name: "Istanbul", country: "Turkey", description: "Biggest city", more: "It's the only city that is in two continent(Europe, Asia)", latitude: 3223.32, longitude: 3.32322123142, heroPicture: "highlands", advisory: "Istanbul")    // By writing we made it be used once
}
