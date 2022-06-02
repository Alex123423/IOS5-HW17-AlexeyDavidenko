//
//  MainRadioCell.swift
//  IOS5-HW17-AlexeyDavidenko
//
//  Created by Alexey Davidenko on 01.06.2022.
//

import SwiftUI

struct MainRadioCell: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text("exclusive")
                .foregroundColor(.gray)
                .font(.system(size: 20))
            
            Text("Collection radioshow Beats 1")
                .foregroundColor(.black)
                .font(.system(size: 20))
            
            Image("bigRadioImage1")
                .resizable()
                .aspectRatio(1.5, contentMode: .fit)
                //.scaledToFit()
                .frame(height: 200)
                .cornerRadius(8)
                .padding([.top], 20)
        }
        .padding([.all], 20)
    }
}

struct MainRadioCell_Previews: PreviewProvider {
    static var previews: some View {
        MainRadioCell()
    }
}
