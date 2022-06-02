//
//  SecondaryRadioCell.swift
//  IOS5-HW17-AlexeyDavidenko
//
//  Created by Alexey Davidenko on 01.06.2022.
//

import SwiftUI

struct SecondaryRadioCell: View {
    var body: some View {
        
        HStack(alignment: .center) {
            
            Image("radioImage1")
                .resizable()
                //.frame(minWidth: 10, idealWidth: 50, maxWidth: 100, minHeight: 10, idealHeight: 50, maxHeight: 100, alignment: .center)
                .frame(maxWidth: 75, maxHeight: 75, alignment: .center)
                .scaledToFit()
                .cornerRadius(8)
                .padding([.all], 10)
            
            VStack(alignment: .leading) {
                
                Text("Populare")
                
                Text("what are listening to right now.")
                    .foregroundColor(.gray)
                    .font(.system(size: 16))
                    .lineLimit(1)
                    .minimumScaleFactor(0)
                
            }
        }
    }
}

struct SecondaryRadioCell_Previews: PreviewProvider {
    static var previews: some View {
        SecondaryRadioCell()
    }
}
