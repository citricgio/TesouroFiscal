//
//  ContentView.swift
//  TesouroFiscal
//
//  Created by Giovanna Micher on 30/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ResponsiveStack { height, width in
            TutorialView(height: height, width: width)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}
