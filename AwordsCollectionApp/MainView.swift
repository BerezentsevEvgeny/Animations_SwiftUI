//
//  ContentView.swift
//  AwordsCollectionApp
//
//  Created by Alexey Efimov on 05.08.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct MainView: View {
    @State private var showAward = false
    
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                HStack {
                    Text(showAward ? "Hide Award" : "Show Award")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .scaleEffect(showAward ? 2 : 1)
                        .rotationEffect(.degrees(showAward ? 0 : 180))
                }
                .font(.headline)
                .padding()
            }
            
            Spacer()
            
            ZStack {
 
                LogoCircle(width: 250, height: 250, isRotate: showAward)
                    .offset(y: showAward ? 0 : -UIScreen.main.bounds.height)
                    .animation(.interpolatingSpring(mass: 1,
                                                    stiffness: 8,
                                                    damping: 4,
                                                    initialVelocity: 3.5), value: showAward)
                Text(".ru")
                    .font(.largeTitle)
                    .bold()
                    .offset(x: showAward ? 82 : -UIScreen.main.bounds.width)
                    .animation(.interpolatingSpring(stiffness: 5, damping: 3).delay(showAward ? 3 : 0), value: showAward)
            }
            .shadow(radius: 5)
            .scaleEffect(showAward ? 1.2 : 1)
            .animation(.linear(duration: 0.4).repeatCount(3, autoreverses: true).delay(6), value: showAward)
        
            Spacer()
        }
    }

    private func buttonAction() {
        showAward.toggle()
    }
}

//extension AnyTransition {
//    static var transition: AnyTransition {
//        let insertion = AnyTransition.move(edge: .trailing)
//        let removal = AnyTransition.move(edge: .trailing)
//        return .asymmetric(insertion: insertion, removal: removal)
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
