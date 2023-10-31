//
//  ResponsiveStack.swift
//  TesouroFiscal
//
//  Created by Pedro Pessuto on 30/10/23.
//

import SwiftUI

struct ResponsiveStack<Content: View>: View {
    var content: (CGFloat, CGFloat) -> Content

    var body: some View {
        GeometryReader { geo in
            let height = geo.size.height
            let width = geo.size.width
            content(height, width)
                .ignoresSafeArea()
        }
    }
}
