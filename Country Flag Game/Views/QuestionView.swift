//
//  QuestionView.swift
//  Country Flag Game
//
//  Created by Samantha Hiles on 1/9/25.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var gameManager: GameManager
    var body: some View {
        VStack(spacing: 20) {
            if gameManager.playingGame {
                
            }
            HStack {
                ProgressBar(progress: 50)
                VStack(spacing: 10) {
                    Text("Which Country's flag is this?")
                    Image("Italy")
                        .resizable()
                        .frame(width: 300, height: 200)
                    AnswerRow(answer: Answer(text: "France", isCorrect: false))
                    AnswerRow(answer: Answer(text: "Germany", isCorrect: false))
                    AnswerRow(answer: Answer(text: "Italy", isCorrect: true))
                    AnswerRow(answer: Answer(text: "England", isCorrect: false))
                }
                CustomButton(text: "Next")
                Spacer()
                Text("Country Flag Game")
                    .foregroundColor(.yellow)
                    .fontWeight(.heavy)
                Spacer()
                Text("1 out of 3")
                    .foregroundColor(.yellow)
            }
        }
        .padding()
        .background(.cyan)
    }
}

#Preview {
    QuestionView()
}
