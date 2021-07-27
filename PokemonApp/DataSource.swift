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
    
    /* test
    init() {
        pokemon = [
            PokemonData(name: "name1", type: "type1", imgName: "07", data: "data1"),
            PokemonData(name: "name2", type: "type2", imgName: "06", data: "data2"),
            PokemonData(name: "name3", type: "type3", imgName: "05", data: "data3"),
            PokemonData(name: "name4", type: "type4", imgName: "04", data: "data4")
        ]
    }
     */
    
    // csvで表示
    init() {
        guard let path = Bundle.main.path(forResource: "pokemon", ofType: "csv") else {
            print("Not Fond")
            return
        }
        
        do{
            let csvString = try String(contentsOfFile: path, encoding: String.Encoding.utf8)
            let csvLines = csvString.components(separatedBy: .newlines)
            for csvLine in csvLines {
                let csvData = csvLine.components(separatedBy: ",")
                pokemon.append(PokemonData(name: csvData[0], type: csvData[1], imgName: csvData[2], data: csvData[3]))
            }
        }
        catch{
            pokemon = [
                PokemonData(name: "name1", type: "type1", imgName: "07", data: "data1"),
                PokemonData(name: "name2", type: "type2", imgName: "06", data: "data2")
            ]
        }
    }
}
