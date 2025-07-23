//
//  ContentView.swift
//  InteractiveUI
//
//  Created by D on 7/23/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name: String = ""
    @State private var textTitle = "What is your name?"

    var body: some View {
        VStack {
            
            Text("What is your name?")
                .font(.title)
            TextField("Type your name here", text: $name)
                .padding(.horizontal)
                .multilineTextAlignment(.center)
                .border(Color.gray, width:1)
            Button("Submit Name") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
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
