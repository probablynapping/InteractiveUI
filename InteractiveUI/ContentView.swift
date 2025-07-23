//
//  ContentView.swift
//  InteractiveUI
//
//  Created by D on 7/23/25.
//

import SwiftUI

struct ContentView: View {
    
    //@State allows the variable to be updated
    //$ is a two-way-binding & it allows name to be immediatedly updated
    @State private var name: String = ""
    @State private var food: String = ""
    @State private var textTitle = "What is your name and favorite food?"

    var body: some View {
        VStack {
            
            Text(textTitle)
                .font(.title)
            TextField("Type your name here", text: $name)
                .padding(.horizontal)
                .multilineTextAlignment(.center)
                .border(Color.gray, width:1)
            TextField("And your fav food here", text: $food)
                .padding(.horizontal)
                .multilineTextAlignment(.center)
                .border(Color.gray, width:1)

            Button("Submit") {
                textTitle = "Welcome, \(name)! You've got great taste for liking \(food)."            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
