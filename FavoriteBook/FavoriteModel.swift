//
//  FavoriteModel.swift
//  FavoriteBook
//
//  Created by Marcus Vinicius Galdino Medeiros on 13/02/20.
//  Copyright © 2020 Marcus Vinicius Galdino Medeiros. All rights reserved.
//

import Foundation
import SwiftUI

struct FavoriteModel : Identifiable{
    var id = UUID()
    var title: String
    var elements: [FavoriteElements]
}

struct FavoriteElements: Identifiable {
    var id = UUID()
    var name: String
    var imageName: String
    var description: String
}

//Bands
let metallica = FavoriteElements(name: "Metallica", imageName: "metallica", description: "No 1 music band")
let megadeth = FavoriteElements(name: "Megadeth", imageName: "megadeth", description: "No 2 music band")
let ironmaider = FavoriteElements(name: "Iron Maiden", imageName: "ironmaiden", description: "No 3 music band")

let favoriteBands = FavoriteModel(title: "Favorite Bands", elements: [metallica, megadeth, ironmaider])

// Movies
let pulpfiction = FavoriteElements(name: "Pulp Fiction", imageName: "pulpfiction", description: "No 1 Movie")
let thedarkknight = FavoriteElements(name: "The Dark Knight", imageName: "thedarkknight", description: "No 2 Movie")
let killbill = FavoriteElements(name: "Kill Bill", imageName: "killbill", description: "No 3 Movie")

let favoriteMovies = FavoriteModel(title: "Favorite Movies", elements: [pulpfiction, thedarkknight, killbill])

let myFavorites = [favoriteBands, favoriteMovies]
