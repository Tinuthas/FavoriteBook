//
//  DetailsView.swift
//  FavoriteBook
//
//  Created by Marcus Vinicius Galdino Medeiros on 14/02/20.
//  Copyright © 2020 Marcus Vinicius Galdino Medeiros. All rights reserved.
//

import SwiftUI

struct DetailsView: View {
    
    var chosenFavoriteElement: FavoriteElements
    var body: some View {
        VStack{
            Image(chosenFavoriteElement.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(chosenFavoriteElement.name)
                .font(.largeTitle)
                .padding()
            
            Text(chosenFavoriteElement.description)

        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(chosenFavoriteElement: thedarkknight)
    }
}
