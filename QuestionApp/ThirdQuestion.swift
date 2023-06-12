//
//  ThirdQuestion.swift
//  QuestionApp
//
//  Created by Maryam Zoweil on 6/9/23.
//

import SwiftUI

struct ThirdQuestion: View {
    @State private var showCityEmoji = false
    @State private var showCountryEmoji = false
    var body: some View {
        VStack(alignment: .center) {
            Text("Question #3")
                .font(.headline)
            Text("City life or countryside living?")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            
                .padding(.horizontal, 5.0)
                .toolbar {
                    ToolbarItemGroup(placement: .status) {
                        NavigationLink(destination: Done()) {
                            Text("Finish!")
                                .font(.title)
                        }}}
            Button("City Life") {
                showCityEmoji = true
                showCountryEmoji = false
            }
            .padding(.top)
            .buttonStyle(.borderedProminent)
            .tint(.blue)
            .foregroundColor(.white)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Button("Countryside") {
                showCityEmoji = false
                showCountryEmoji = true
                
            }
            .padding(.top)
            .buttonStyle(.borderedProminent)
            .tint(.green)
            .foregroundColor(.black)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            if showCityEmoji {
                Text("🏙️🚆")
                    .font(.system(size: 100))
                .padding(.top)}
            
            if showCountryEmoji {
                Text("🏘️🏞️")
                    .font(.system(size: 100))
                .padding(.top)}
        }
    }
}

struct ThirdQuestion_Previews: PreviewProvider {
    static var previews: some View {
        ThirdQuestion()
    }
}
