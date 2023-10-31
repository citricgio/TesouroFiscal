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
            
            ZStack {
                if screenNumber == 0 {
                    VStack(spacing: 0) {
                        
                        Subtitle(text: "VAMOS EM BUSCA DO SEU", size: 13 ,width: width)
                            .padding(.top)
                        Title(text: "Tesouro Fiscal", size: 46 ,width: width)
                        Image("treasure")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 843)
                    }
                    .padding()
                }
                else if screenNumber == 1 {
                    VStack(spacing: 40) {
                        Subtitle(text: "Vamos lhe dar um mapa que lhe guiará até o seu Tesouro Fiscal", size: 13, width: width)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 350)
                            .padding(.vertical, 20)
            
                        Image("map")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 522)
                    }
                
                }
                else {
                    VStack {
                        VStack {
                            Text("Fique atento!")
                                
                            HStack {
                                Text("os")
                                Text("Piratas do Imposto de renda")
                                    .font(.custom("PlayfairDisplaySC-Black", size: 13 * width / 393))
                            }
                            
                            Text("Irão tentar roubar seu")
                            Text("Tesouro Fiscal a todo custo")
                               
                        }
                        .font(.custom("PlayfairDisplaySC-Bold", size: 13 * width / 393))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 250)
                        
                        Image("pirate")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 550)
                            
                    }
                }
                
                ButtonSword(text: screenNumber < 2 ? "Próximo" : "Continuar")
                    .offset(x: width/2, y: height/2 - 20)
                    .padding(.trailing, 300)
                    .padding(.bottom, 100)
                    .onTapGesture {
                        screenNumber += 1
                    }
                
            }
            
        }
        .onAppear() {
            print(height, width)
        }
    }
}
