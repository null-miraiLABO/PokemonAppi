//
//  RowView.swift
//  PokemonApp
//
//  Created by 岡瀬　瑞樹 on 2021/07/20.
//

import SwiftUI

struct RowView: View {
    var pokemon:PokemonData
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(pokemon.imgName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .shadow(radius: 10)
                .border(Color.white, width: 2)
            
            Text(pokemon.name).font(.headline)
            Spacer()
        }.padding()
    }
}

#if DEBUG
struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RowView(pokemon: PokemonData(name: "a", type: "b", imgName: "05", data: "aaa"))
        }.previewLayout(.fixed(width: 300, height: 400))
    }
}
#endif
