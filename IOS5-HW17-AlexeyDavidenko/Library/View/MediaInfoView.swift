//
//  MediaInfoView.swift
//  IOS5-HW17-AlexeyDavidenko
//
//  Created by Alexey Davidenko on 23.03.2022.
//

import SwiftUI

struct MediaInfoView: View {
    var body: some View {
        
        VStack {
            
            Text("Searching your music?")
                .fontWeight(.bold)
                .font(.system(size: 22))
            
            Text("""
             The music you bought in
             iTunes Store will appear here.
             """)
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
        }
        .padding()
    }
}

struct MediaInfo_Previews: PreviewProvider {
    static var previews: some View {
        MediaInfoView()
    }
}
