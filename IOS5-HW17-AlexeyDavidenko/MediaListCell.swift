//
//  MediaListCell.swift
//  IOS5-HW17-AlexeyDavidenko
//
//  Created by Alexey Davidenko on 27.03.2022.
//

import SwiftUI

struct Media: Identifiable {
    var id = UUID()
    let title: String
    let image: String
}

class MediaListModel: ObservableObject {
    @Published var medias: [Media] = [
        Media(title: "Playlists", image: "music.mic"),
        Media(title: "Artists", image: "music.note"),
        Media(title: "Albums", image: "rectangle.stack.fill"),
        Media(title: "Songs", image: "music.note"),
        Media(title: "TV & Movies", image: "tv"),
        Media(title: "Music Videos", image: "music.note.tv"),
        Media(title: "Genres", image: "guitars"),
        Media(title: "Compilations", image: "person.2.crop.square.stack"),
        Media(title: "Composers", image: "music.quarternote.3"),
        Media(title: "Downloaded", image: "arrow.down.circle"),
        Media(title: "Home Sharing", image: "music.note.house"),
    ]
}

struct MediaListCell: View {
    
    @StateObject var viewModel = MediaListModel()
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(viewModel.medias) { media in
                        MediaRow(title: media.title, image: media.image)
                    }
                }
            }
            .navigationTitle("Media list")
        }
    }
    
    struct MediaRow: View {
        let title: String
        let image: String
        
        var body: some View {
            Label(
                title: { Text(title) },
                icon: { Image(systemName: image) }
            )
        }
    }
}


struct MediaListCell_Previews: PreviewProvider {
    static var previews: some View {
        MediaListCell()
    }
}
