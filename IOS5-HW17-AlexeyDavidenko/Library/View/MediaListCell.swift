//
//  MediaListCell.swift
//  IOS5-HW17-AlexeyDavidenko
//
//  Created by Alexey Davidenko on 27.03.2022.
//

import SwiftUI

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
