//
//  DataSource.swift
//  PokemonApp
//
//  Created by 岡瀬　瑞樹 on 2021/07/20.
//

import Combine
import SwiftUI

class DataSource: ObservableObject {
    var pokemon = [PokemonData]()
    
    init() {
        pokemon = [
            PokemonData(name: "name1", type: "type1", imgName: "07", data: "data1"),
            PokemonData(name: "name2", type: "type2", imgName: "06", data: "data2"),
            PokemonData(name: "name3", type: "type3", imgName: "05", data: "data3"),
            PokemonData(name: "name4", type: "type4", imgName: "04", data: "data4")
        ]
    }
}
