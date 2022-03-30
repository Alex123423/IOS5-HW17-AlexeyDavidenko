//
//  PlaylistView.swift
//  IOS5-HW17-AlexeyDavidenko
//
//  Created by Alexey Davidenko on 23.03.2022.
//

import SwiftUI

struct PlaylistView: View {
    
    @State private var isShowFilter = false
    
    var body: some View {
        NavigationView {
            VStack {
                if isShowFilter {
                   MediaListCell()
                } else {
                    MediaListCell()
                }
            }
            .navigationTitle("Media library")
            .navigationBarItems(trailing: Button(action: {
                isShowFilter.toggle()
            }, label: {
                if isShowFilter {
                    Text("Done").foregroundColor(.red)
                } else {
                    Text("Edit").foregroundColor(.red)
                }
            }))
        }
    }
}

struct PlaylistView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistView()
    }
}
