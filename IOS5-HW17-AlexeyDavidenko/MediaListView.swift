//
//  MediaListView.swift
//  IOS5-HW17-AlexeyDavidenko
//
//  Created by Alexey Davidenko on 27.03.2022.
//

import SwiftUI


struct MediaListView: View {
    
    struct MediaRow: Identifiable, Hashable {
        let editButton: UIButton
        let image: UIImage
        let name: String
        let id = UUID()
    }
    
    var mediaDict: [String: String] = ["music.note.list": "Playlists",
                                       "music.mic": "Artists",
                                       "rectangle.stack.fill": "Albums",
                                       "music.note": "Songs",
                                       "tv": "TV & Movies"]
    
   @State var names = ["Playlists",
                 "Artists",
                 "Albums",
                 "Songs",
                 "TV & Movies",
                 "Music Videos",
                 "Genres",
                 "Compilations",
                 "Composers",
                 "Downloaded",
                 "Home Sharing"]
    
    let images = ["music.note.list",
                  "music.mic",
                  "rectangle.stack.fill",
                  "music.note",
                  "tv",
                  "music.note.tv",
                  "guitars",
                  "person.2.crop.square.stack",
                  "music.quarternote.3",
                  "arrow.down.circle",
                  "music.note.house"]
    
    @State private var multiSelection = Set<UUID>()
    
    var body: some View {
        NavigationView {
                List(selection: $multiSelection) {
                    ForEach((0..<mediaDict.count), id: \.self){
                        
                        Image(systemName: images[$0])
                            .foregroundColor(.red)
                        Text("\(names[$0])")
                        }
                    
                    .onMove(perform: move)

                }
            .navigationTitle("Media library")
            .toolbar { EditButton() }
        }
    }
    
    func move(from source: IndexSet, to destination: Int) {
        names.move(fromOffsets: source, toOffset: destination)
    }
}



struct MediaRow: View {
    let selectButton: UIButton
    let title: String
    
    var body: some View {
        Label(
            title: { Text(title) },
            icon: { Image(systemName: "music.note.list")}
        )
    }
}


struct MediaListView_Previews: PreviewProvider {
    static var previews: some View {
        MediaListView()
    }
}
