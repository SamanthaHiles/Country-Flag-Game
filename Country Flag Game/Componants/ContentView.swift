//
//  ContentView.swift
//  Country Flag Game
//
//  Created by Samantha Hiles on 1/7/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var gameManager = GameManager()
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                VStack(spacing: 20) {
                    Text("Country Flag Game")
                        .font(.title)
                        .fontWeight(.heavy)
                    Text("Are you ready to test your skills")
                }
                NavigationLink {
                    QuestionView()
                        .environmentObject(gameManager)
                } label: {
                    CustomButton(text: "Start")
                    
                }
            }
            .foregroundColor(.yellow)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.cyan)
        }
    }
}

#Preview {
    ContentView()
}