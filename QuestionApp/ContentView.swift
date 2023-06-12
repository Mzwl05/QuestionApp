//
//  ContentView.swift
//  QuestionApp
//
//  Created by Maryam Zoweil on 6/9/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            NavigationStack {
                VStack {
                    
                    Text("Let's Play This or That")
                        .font(.title)
                        .padding(.bottom)
                    
                    NavigationLink(destination: FirstQuestion()) {
                        Text("Click here to start!")
                            .font(.title)
                            .fontWeight(.bold)
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
