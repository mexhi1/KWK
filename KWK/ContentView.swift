//
//  ContentView.swift
//  KWK
//
//  Created by user on 23.6.23.
//
import SwiftUI

struct ContentView: View {
    @State private var showingFirst = false
    @State private var showingSecond = false
    
    var body: some View {
        ZStack{
            
            Image("BEIGE")
            VStack {
                Text("Hi my name is Megi!")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 0.824, green: 0.67, blue: 0.544))
                Button("Tap for more info") {
                    showingFirst = true
                }
                .accentColor(/*@START_MENU_TOKEN@*/Color(hue: 0.096, saturation: 0.585, brightness: 0.64)/*@END_MENU_TOKEN@*/)
            }

            .sheet(isPresented: $showingFirst) {
                Image("Megi")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 400)
                    .cornerRadius(/*@START_MENU_TOKEN@*/13.0/*@END_MENU_TOKEN@*/)
               
                Text("This is me!")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.062, saturation: 0.33, brightness: 0.71))
                    
                Button("Tap for more") {
                        showingSecond = true
                    }
                .foregroundColor(Color(hue: 0.062, saturation: 0.33, brightness: 0.71))
                
                .sheet(isPresented: $showingSecond) {
                    Text("I really like to code also,playing tennis.My favourite things to do on my free time are writing,playing the piano and painting because I'm an artist.My dream is to become a successful AI engineer and also be part of big projets that will help the humanity through AI.NICE TO MEET YA!!")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.824, green: 0.67, blue: 0.544))
                        .multilineTextAlignment(.leading)
                        .lineLimit(nil)
                        .truncationMode(.head)
                        .lineSpacing(10)
                        .padding()
                    Image("kolazh1")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 300)
                        .cornerRadius(20.0)
                   
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
