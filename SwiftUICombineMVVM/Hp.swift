//
//  Brewery.swift
//  SwiftUICombineMVVM
//
//  Created by Xiao Yuan on 11/8/21.
//

import Foundation
import SwiftUI

struct Hp: Decodable, Hashable {
    let name: String
//    let alternate_names: [String]
//    let species: String
//    let gender: String
//    let house: String
//    let dateOfBirth: String
//    let yearOfBirth: Int
//    let wizard: Bool
//    let ancestry: String
//    let eyeColour: String
//    let hairColour: String
//    let wand: Wand
//    let patronus: String
//    let hogwartsStudent: Bool
//    let hogwartsStaff: Bool
//    let actor: String
//    let alternate_actors: [String]
//    let alive: Bool
    let image: String
}


struct Wand: Decodable, Hashable {
    let wood: String
    let core: String
    let length: Int
}
