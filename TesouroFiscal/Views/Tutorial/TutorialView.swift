//
//  TutorialView.swift
//  TesouroFiscal
//
//  Created by Pedro Pessuto on 30/10/23.
//

import SwiftUI


struct TutorialView: View {
    var height: CGFloat
    var width: CGFloat

    @State var screenNumber: Int = 0

    var body: some View {
        ZStack {
            Image("background")
                .resizable()

            if screenNumber == 0 {
                VStack {
                    Subtitle(text: "VAMOS EM BUSCA DO SEU", size: 13 ,width: width)
                    Title(text: "Tesouro Fiscal", size: 46 ,width: width)
                    
                }
            }
        }
        .onAppear() {
            print(height, width)
        }
    }
}
