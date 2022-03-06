//
//  tip.swift
//  mekanlar
//
//  Created by Seyfülmülük Kutluk on 7.03.2022.
//

import Foundation

struct Tip : Decodable {
    let text: String
    let children: [Tip]
}
