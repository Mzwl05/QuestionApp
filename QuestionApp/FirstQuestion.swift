//
//  FirstQuestion.swift
//  QuestionApp
//
//  Created by Maryam Zoweil on 6/9/23.
//

import SwiftUI

struct FirstQuestion: View {
    @State private var showSunEmoji = false
    @State private var showSnowEmoji = false

    var body: some View {
        VStack(alignment: .center) {
            Text("Question #1")
                .font(.headline)
            Text("Summer or Winter?")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .toolbar {
                    ToolbarItemGroup(placement: .status) {
                        NavigationLink(destination: SecondQuestion()) {
                            Text("Next")
                                .font(.title)
                        }}}
            Button("Summer") {
                showSunEmoji = true
                showSnowEmoji = false
            }
            .padding(.top)
            .buttonStyle(.borderedProminent)
            .tint(.yellow)
            .foregroundColor(.black)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Button("Winter") {
                showSunEmoji = false
                showSnowEmoji = true
                
            }
            .padding(.top)
            .buttonStyle(.borderedProminent)
            .tint(.blue)
            .foregroundColor(.white)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            if showSunEmoji {
                Text("☀️")
                    .font(.system(size: 100))
                .padding(.top)}
            if showSnowEmoji {
                Text("❄️")
                    .font(.system(size: 100))
                .padding(.top)}
            
        }
        
    }
        
}

struct FirstQuestion_Previews: PreviewProvider {
    static var previews: some View {
        FirstQuestion()
    }
}
