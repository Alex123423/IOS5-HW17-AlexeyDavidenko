//
//  TabViewItem.swift
//  IOS5-HW17-AlexeyDavidenko
//
//  Created by Alexey Davidenko on 22.03.2022.


import SwiftUI

struct TabViewItem: View {
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            
            TabView {
                
                Text("")
                    .tabItem {
                        Image(systemName: "music.note.house.fill")
                        Text("Media library")
                    }
                
                Text("")
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Radio")
                    }
                
                Text("")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
            }
            .accentColor(.red)
            
            MiniPlayerView()
                .offset(y: -49)
        })
    }
}


struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewItem()
    }
}
