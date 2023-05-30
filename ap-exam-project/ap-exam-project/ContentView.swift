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
    @State var finalClick = false
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
            NewView(finalClick: $finalClick)
        }
    }
}

struct NewView: View {
    @State var clicked2 = false
    @Binding var finalClick: Bool
    var body: some View {

        if clicked2==false{
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
                if finalClick{
                Text("Click face --> Start App")
                }
            }
            if !isHappy && !finalClick{
                Image("wat")
                    .resizable()
                    .frame(width: 100.0, height: 100.0)
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
            }
            }
            
        
        if (clicked2==true){
            NewView2(finalClick: $finalClick)
            
        }
    }
}
struct NewView2: View {
    @Binding var finalClick: Bool
    var body: some View {
        if !finalClick{
            Text("Ouch, why hit me")
            Button("Click this") {
                finalClick = true
                print("heya testing")
            }
        }
        if finalClick == true{
            TesterView()
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
