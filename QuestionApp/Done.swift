//
//  Done.swift
//  QuestionApp
//
//  Created by Maryam Zoweil on 6/9/23.
//

import SwiftUI

struct Done: View {
    @State private var showCityEmoji = false
    var body: some View {
        ZStack {
            Color(.systemYellow)
                .ignoresSafeArea()
            VStack(alignment: .center, spacing: 20.0) {
                
                Text("🥳")
                    .font(.system(size: 100))

                    Text("You finished all the question!")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)

                
                Text("Click the button below to restart!")
                NavigationLink(destination: ContentView()) {
                    Text("Back to Home")
                        .font(.title)
                        .tint(.black)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                }
                
            }
            .padding()
            .background(Rectangle() .foregroundColor(.white))
            .cornerRadius(15)
            .shadow(radius: 15)
            .padding()
            
        }
        
    }
}

struct Done_Previews: PreviewProvider {
    static var previews: some View {
        Done()
    }
}
