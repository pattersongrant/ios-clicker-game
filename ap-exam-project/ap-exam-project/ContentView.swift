//
//  ContentView.swift
//  ap-exam-project
//
//  Created by Grant Patterson on 5/12/23.
//

import SwiftUI
var isHappy = true
struct ContentView: View {
    @State var clicked = false
    var body: some View {
        if (clicked==false){
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
        }
        if (clicked == true){
            NewView()
        }
    }
}

struct NewView: View {
    @State var clicked2 = false
    var body: some View {
        if(clicked2==false){
            Text("Welcome to my App")
        }
        Button(action:{
            clicked2.toggle()
            isHappy.toggle()
            
        }) {
            if isHappy{
                Image("smiley")
                    .resizable()
                    .frame(width: 100.0, height: 100.0)
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
            }
            else{
                Image("wat")
                    .resizable()
                    .frame(width: 100.0, height: 100.0)
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
            }
            
        }
        if (clicked2==true){
            NewView2()
            
        }
    }
}
struct NewView2: View {
    
    var body: some View {
        Text("Ouch, why hit me")
        
        
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
