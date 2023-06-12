//
//  ContentView.swift
//  AboutMe
//
//  Created by scholar on 6/8/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "What is you name?"
    @State private var present = false
    
    var body: some View {
        VStack {
            //text
            Text(textTitle)
                .font(.title)
            //textfield
            TextField("", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.pink, width: 1)
                .padding()
            //button
            Button("Submit Button"){
                print(name)
                textTitle = "Welcome, \(name)!"
                present = true
            
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.pink)
            
            .alert(isPresented: $present){
                Alert(
                     title: Text("Congrats \(name)!"),
                     message: Text("Your information was submitted!"),
                     dismissButton: .cancel()
               )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
