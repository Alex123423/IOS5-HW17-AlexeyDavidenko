//
//  LibraryView.swift
//  IOS5-HW17-AlexeyDavidenko
//
//  Created by Alexey Davidenko on 18.03.2022.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        NavigationView {
            
            TabView {
                
                Text("""
                     Searching your music?
                     The music you bought in
                     apple music will appear here
                     """)
    
                    .tabItem {
                        Image(systemName: "music.note.house.fill")
                        Text("Media library")
                    }
                
                Text("Radio")
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Radio")
                    }
                
                Text("Search")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
            }
            .accentColor(.red)
            .navigationTitle("Media library")
            
            .navigationBarItems(
                trailing: Text("Edit"))
        }
        
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
