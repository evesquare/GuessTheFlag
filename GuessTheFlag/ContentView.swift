//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by evesquare on 2025/04/17.
//

import SwiftUI

struct ContentView: View {
    var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"]
    var cottectAnswer = Int.random(in: 0...2)

    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                Text("Tap the flag of")
                    .foregroundStyle(.white)
                
                Text(countries[cottectAnswer])
                    .foregroundStyle(.white)
            }
        
            ForEach(0..<3) { number in
                Button {
                    
                } label: {
                    Image(countries[number])
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
