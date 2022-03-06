//
//  locations.swift
//  mekanlar
//
//  Created by Seyfülmülük Kutluk on 7.03.2022.
//

import Foundation

class Locations : ObservableObject {    // class are built to be shared,    swiftui looks at this class for changes
    
    let places : [Location]
    
    var primary : Location {    // var value can change in contrast to let it will not change in our case var will not change but its changeable
        places[1]   // read the 0th item from our places. The first item
    }
    
    init() {    // ! is crush operator
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!  // ! means ı know this will work if doesn't work crush the entire application// create constant value calles url it will find locations.json
        let data = try! Data(contentsOf: url)  // again ! it means load data that has been stored in url to data
        places = try! JSONDecoder().decode([Location].self, from: data) //JSONDecoder is spesifically designed to convert json to swift types its like Int, String etc.
                                                                        //create json decoder and decode it in Location. .self means that it is generally selected,
                                                                        // and read it from data
    }
    
}
