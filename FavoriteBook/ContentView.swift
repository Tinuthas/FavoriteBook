//
//  ContentView.swift
//  FavoriteBook
//
//  Created by Marcus Vinicius Galdino Medeiros on 13/02/20.
//  Copyright © 2020 Marcus Vinicius Galdino Medeiros. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
        List{
            ForEach(myFavorites) { favorite in
                Section(header: Text(favorite.title)) {
                    ForEach(favorite.elements){ element in
                        NavigationLink(destination: DetailsView(chosenFavoriteElement: element)){
                            Text(element.name)
                        }

                    }
                }
            }
            }.navigationBarTitle(Text("Favorite Book"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
