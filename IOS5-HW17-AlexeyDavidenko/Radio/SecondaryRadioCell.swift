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
            
            Image("radioImage2")
                //.resizable()
                .scaledToFit()
                .cornerRadius(10)
                .padding([.all], 10)
            
            VStack(alignment: .leading) {
                
                Text("Populare")
                
                Text("what are listening to right now.")
                    .foregroundColor(.gray)
                    .font(.system(size: 16))
                
            }
        }
    }
}

struct SecondaryRadioCell_Previews: PreviewProvider {
    static var previews: some View {
        SecondaryRadioCell()
    }
}
