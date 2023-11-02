//
//  ContentView.swift
//  About Me
//
//  Created by [Jose Lara].
//

import SwiftUI

struct ContentView: View {
    
    @State private var messageString = ""
    
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: "cross")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.cyan)
                    .scaledToFit()
                    .padding(.all)
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    .background(.black)
                Text(messageString)
                    .font(.title)
                    .fontWeight(.light)
                    .foregroundStyle(.blue)
                    .padding()
                    .italic()
                HStack {
                    Button("Intresting fact") {
                        messageString = "I have been to 21 diffrent states througout my life."
                    }
                    .buttonStyle(.borderedProminent)
                
                    Button("Early Life") {
                        messageString = "Growing up I was always curious about technology, I'd take devices apart, get into system & software settings."
                    }
                    .buttonStyle(.borderedProminent)
                    
                    Button("About Me") {
                        messageString = "My name is Jose Lara I am 23 years old. I am currently majoring in CIS - Web Developer Speacialist."
                    }
                    .buttonStyle(.borderedProminent)
                    }
                    Button("Reset") {
                        messageString = ""
                    }
                    .buttonStyle(.borderedProminent)
                }
            }
        }
    }

#Preview {
    ContentView()
        .background(Color.black)

}
