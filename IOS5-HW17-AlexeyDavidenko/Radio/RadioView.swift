//
//  RadioView.swift
//  IOS5-HW17-AlexeyDavidenko
//
//  Created by Alexey Davidenko on 01.06.2022.
//

import SwiftUI

struct RadioView: View {
    
    let rows = [GridItem(.flexible())]
    let colums = [GridItem(.flexible())]
    
    var body: some View {
        
        NavigationView {
            
            ScrollView(.vertical, showsIndicators: false) {
                
                ScrollView(.horizontal, showsIndicators: false) {
                
//                    Divider()
//                        .padding([.all], 10)
                    
                    LazyHGrid(rows: rows) {
                        MainRadioCell()
                            .padding([.all], 10)
                    }
                    .padding([.all], 20)
            
                    
//                    Divider()
//                        .padding([.all], 10)
                    
                    LazyVGrid(columns: colums, alignment: .leading) {
                        Text("Stations")
                            .padding([.all], 10)
                            .font(.system(size: 24, weight: .semibold))
                            
                        SecondaryRadioCell()
                    }
                    .padding([.leading, .trailing, .bottom], 10)
                }
            }
            .navigationTitle("Radio")
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
