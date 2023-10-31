//
//  Subtitle.swift
//  TesouroFiscal
//
//  Created by Pedro Pessuto on 30/10/23.
//

import SwiftUI

struct Subtitle: View {
    
    var text: String
    var size: CGFloat
    var width: CGFloat
    
    var body: some View {
        Text(text)
            .font(.custom("PlayfairDisplaySC-Bold", size: size * width / 393))
            .foregroundStyle(Color(.primaryTheme))
            .onAppear {
                print(size * width / 393)
            }
    }
}
