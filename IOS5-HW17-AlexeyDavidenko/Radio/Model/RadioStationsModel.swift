//
//  RadioStationsModels.swift
//  IOS5-HW17-AlexeyDavidenko
//
//  Created by Alexey Davidenko on 02.06.2022.
//

import Foundation

struct RadioStationstModel: Identifiable {
    var id = UUID()
    let group: String
    let title: String
    let info: String
    let image: String
}

extension RadioStationstModel {
    static var stations = [
        RadioStationstModel(group: "New issue", title: "Music market with Basta", info: "New show", image: "bigRadioImage1"),
        RadioStationstModel(group: "Favorite radiostation", title: "Popular", info: "What are listening to right now", image: "bigRadioImage2"),
        RadioStationstModel(group: "Favorite radiostation", title: "HIP-HOP", info: "Ideal beats and rhymes", image: "bigRadioImage3"),
        RadioStationstModel(group: "Favorite radiostation", title: "Only pop-music", info: "All top hits", image: "bigRadioImage4"),
        RadioStationstModel(group: "Favorite radiostation", title: "Pop-music for workout", info: "Forward with music!", image: "bigRadioImage5"),
        RadioStationstModel(group: "Favorite radiostation", title: "Electro music", info: "Mixer with the best beats", image: "bigRadioImage6"),
        RadioStationstModel(group: "Favorite radiostation", title: "Rock classic", info: "Genius of guitar sound", image: "bigRadioImage7"),
        RadioStationstModel(group: "Favorite radiostation", title: "Dance music", info: "Modern and future hits", image: "bigRadioImage8")
    ]
}
