//
//  MiniPlayerView.swift
//  IOS5-HW17-AlexeyDavidenko
//
//  Created by Alexey Davidenko on 23.03.2022.
//

import SwiftUI

struct MiniPlayerView: View {
    var body: some View {
        VStack() {
            
            HStack {
                
                Image("musicImage")
                    .frame(width: 70, height: 70, alignment: .leading)
                    .cornerRadius(5)
                    .shadow(color: Color.black.opacity(0.3),
                            radius: 2,
                            x: 2, y: 2)
                
                Text("Not playing")
                    .foregroundColor(.gray)
                    .font(.system(size: 20))
                    .padding([.leading], 10)
                
                
                Spacer()
                
                Button(action: {
                    print("play button pressed")
                }) {
                    Image(systemName: "play.fill")
                        .foregroundColor(.black)
                }
                .padding(.trailing, 5)
                
                Button(action: {
                    print("forward button pressed")
                }) {
                    Image(systemName: "forward.fill")
                        .foregroundColor(.black)
                }
            }
            
            Divider()
            
        }
        .padding([.trailing, .leading], 20)
    }
}

struct MiniPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        MiniPlayerView()
    }
}
