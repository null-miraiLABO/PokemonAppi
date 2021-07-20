//
//  DataSource.swift
//  PokemonApp
//
//  Created by 岡瀬　瑞樹 on 2021/07/20.
//

import Combine
import SwiftUI

class dataSource: ObservableObject {
    var pokemon = [PokemonData]()
    
    init() {
        pokemon = [
            PokemonData(name: "name1", type: "type1", imgName: "07", data: "data1"),
            PokemonData(name: "name2", type: "type2", imgName: "06", data: "data2")
        ]
    }
    
}
