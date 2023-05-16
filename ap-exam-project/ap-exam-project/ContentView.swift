//
//  ContentView.swift
//  ap-exam-project
//
//  Created by Grant Patterson on 5/12/23.
//

import SwiftUI
struct ContentView: View {
    @State var clicked = false
    var body: some View {
        VStack {
            Image("javaphoto")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("AP Exam Project!")
                .padding(.top, 9.0)
            Button("Continue") {
                print("wow")
                clicked.toggle()
                
            }
            .padding(.top, 2.0)
        }
        if (clicked == true){
            NewView()
        }
    }
}

struct NewView: View {
    var body: some View {
        Text("Welcome to my App")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
