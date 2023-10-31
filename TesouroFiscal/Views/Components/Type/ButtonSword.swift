//
//  Button.swift
//  TesouroFiscal
//
//  Created by Giovanna Micher on 31/10/23.
//

import SwiftUI

struct ButtonSword: View {
    
    var text: String
    
    var body: some View {
        
        VStack (spacing: 0) {
                Text(text)
                    .font(.custom("PlayfairDisplaySC-Bold", size: 25))
                    .foregroundStyle(Color(.primaryTheme))
                    .padding(.leading, 50)
                
                Image("sword")
                    .resizable()
                    .scaledToFit()
                    
            }
            
            .padding(10)
            .frame(width: 250, height: 100)
            .background(.secondaryTheme)
            .clipShape(.rect(cornerRadius: 15))
            .overlay {
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color(.secondaryTheme), lineWidth: 1)
                    .shadow(color: Color(.black), radius: 4, x: -5, y: -5)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .shadow(color: Color(.black), radius: 4, x: -5, y: -5)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            }

    }
}
