//
//  ContentView.swift
//  ap-exam-project
//
//  Created by Grant Patterson on 5/12/23.
//

import SwiftUI
var isHappy = true
var allOff = false
struct ContentView: View {
    @State var clicked = false
    //@State var update = 0
    var body: some View {
        if allOff{
            SuperStart()
            //update+=1
        }
        if (clicked==false&&allOff==false){
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

        if(clicked2==false&&allOff==false){
            Text("Welcome to my App")
        }
        Button(action:{
            clicked2.toggle()
            isHappy.toggle()
            
        }) {
            if isHappy && allOff==false{
                Image("smiley")
                    .resizable()
                    .frame(width: 100.0, height: 100.0)
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
            }
            if !isHappy && allOff==false {
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
    @State var finalClick = false
    @State var realAppStart = false
    var body: some View {
        
        Text("Ouch, why hit me")
        Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
            finalClick = true
            allOff=true
            print("heya testing")
            
        
        }
        if finalClick == true{
            TesterView()
            ContentView()
            viewer5()
            
        }
    }
struct viewer5: View {
        var body: some View {
            Text("what")
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
