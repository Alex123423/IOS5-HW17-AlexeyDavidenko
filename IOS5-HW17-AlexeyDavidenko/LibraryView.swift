//
//  LibraryView.swift
//  IOS5-HW17-AlexeyDavidenko
//
//  Created by Alexey Davidenko on 23.03.2022.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        NavigationView {
            
            VStack {
                MediaInfoView()

            }
            .navigationTitle("Media library")
            .navigationBarItems(
                trailing:
                    NavigationLink(destination: MediaInfoView(),
                                   label: {
                                       Text("Edit")
                                           .foregroundColor(.red)
                                   })
                                )
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
