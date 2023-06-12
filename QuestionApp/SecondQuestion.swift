//
//  SecondQuestion.swift
//  QuestionApp
//
//  Created by Maryam Zoweil on 6/9/23.
//

import SwiftUI

struct SecondQuestion: View {
    @State private var showSunRiseEmoji = false
    @State private var showMoonEmoji = false
    var body: some View {
        VStack(alignment: .center) {
            Text("Question #2")
                .font(.headline)
            Text("Morning Person or Night Owl?")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 5.0)
                .toolbar {
                    ToolbarItemGroup(placement: .status) {
                        NavigationLink(destination: ThirdQuestion()) {
                            Text("Next")
                                .font(.title)
                        }}}
            Button("Morning Person") {
                showSunRiseEmoji = true
                showMoonEmoji = false
            }
            .padding(.top)
            .buttonStyle(.borderedProminent)
            .tint(.orange)
            .foregroundColor(.black)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Button("Night Owl") {
                showSunRiseEmoji = false
                showMoonEmoji = true
                
            }
            .padding(.top)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            .foregroundColor(.white)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            if showSunRiseEmoji {
                Text("🌅")
                    .font(.system(size: 100))
                .padding(.top)}
            if showMoonEmoji {
                Text("🌚🦉")
                    .font(.system(size: 100))
                .padding(.top)}
        }
    }
}

struct SecondQuestion_Previews: PreviewProvider {
    static var previews: some View {
        SecondQuestion()
    }
}
