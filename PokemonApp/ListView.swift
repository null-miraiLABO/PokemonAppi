//
//  ListView.swift
//  PokemonApp
//
//  Created by 岡瀬　瑞樹 on 2021/07/20.
//

import SwiftUI

struct ListView: View {
    @ObservedObject var dataSource = DataSource()
    
    var body: some View {
        NavigationView{
            //listを順に表示
            List(0 ..< dataSource.pokemon.count){
                item in RowView(pokemon: dataSource.pokemon[item])
            }
            .navigationBarTitle("ポケモン図鑑")
        }
    }
}

#if DEBUG
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
#endif
