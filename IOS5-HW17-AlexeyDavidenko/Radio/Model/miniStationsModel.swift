//
//  File.swift
//  IOS5-HW17-AlexeyDavidenko
//
//  Created by Alexey Davidenko on 02.06.2022.
//

import Foundation

struct miniStationsModel: Identifiable {
    var id = UUID()
    let title: String
    let info: String
    let image: String
}

extension miniStationsModel {
    static var miniStations = [
        miniStationsModel(title: "Music for relax", info: "Electro meditation", image: "radioImage1"),
        miniStationsModel(title: "Popular", info: "What are listening to right now", image: "radioImage2"),
        miniStationsModel(title: "Electro music classic", info: "How the soundof the futur was born", image: "radioImage3"),
        miniStationsModel(title: "Rock classic", info: "Genius of guitar sound", image: "radioImage4"),
        miniStationsModel(title: "Classic", info: "Outstanding images of the genre", image: "radioImage5"),
        miniStationsModel(title: "Hip-Hop", info: "Ideal beats and rhymes", image: "radioImage6")
    ]
}
