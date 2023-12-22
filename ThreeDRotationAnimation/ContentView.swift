//
//  ContentView.swift
//  ThreeDRotationAnimation
//
//  Created by Berk Aksu on 23.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount = 0.0
    
    var body: some View {
        VStack {
            Button("Tap Me"){
                withAnimation(.easeIn(duration: 1.5)){
                    animationAmount += 360
                }
            }
            .padding(50)
            .foregroundColor(.white)
            .background(.cyan)
            .clipShape(Circle())
            .rotation3DEffect(.degrees(animationAmount), axis: (x:0, y:1, z:0))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
