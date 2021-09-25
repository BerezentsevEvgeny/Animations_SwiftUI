//
//  DriftingWheel.swift
//  AwordsCollectionApp
//
//  Created by Евгений Березенцев on 25.09.2021.
//  Copyright © 2021 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct LogoCircle: View {
    let width: CGFloat
    let height: CGFloat
    let isRotate: Bool
   
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 20)
                .foregroundColor(.blue)
                .frame(width: width, height: height)
    
            Text("Swiftbook      ")
                .font(.largeTitle)
                .bold()
                .rotationEffect(.degrees(isRotate ? 0 : 1440))
        }
    }
}

struct DriftingWheel_Previews: PreviewProvider {
    static var previews: some View {
        LogoCircle(width: 250, height: 250, isRotate: true)
    }
}
