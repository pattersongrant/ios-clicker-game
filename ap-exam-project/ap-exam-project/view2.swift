//
//  view2.swift
//  ap-exam-project
//
//  Created by Grant Patterson on 5/12/23.
//

import SwiftUI
import Foundation


struct TesterView: View {
    @State var numSubmissions = 0
    @State var textContent = [""]
    @State var showSecret = false
    
    var body: some View {
        TabView {
            if showSecret{
                secretView()
                    .tabItem {
                    Label("Secret", systemImage: "questionmark")
                }
            }
            
            MenuView(showSecret: $showSecret)
                        .tabItem {
                            Label("Menu", systemImage: "list.dash")
                        }
                    
            ToDoList(numSubmissions: $numSubmissions, textContent: $textContent)
                        .tabItem {
                            Label("To Do", systemImage: "star.fill")
                        }
            AksharView()
                .tabItem {
                Label("Akshar", systemImage: "ellipsis.message")
            }
                .badge(10)
                }
    }
}

struct MenuView: View {
    @State var showAbout = false
    @State var showHelp = false
    @Binding var showSecret: Bool
    var body: some View {
        NavigationStack {
            if showAbout{
                VStack{
                    Text("This is an app I made for the CSA Project. Feel free to click around the app and find out all the functionality.")
                    Button("hide"){
                        showAbout.toggle()
                    }
                    .padding(.top, 20.0)
                    .buttonStyle(.bordered)

                }
                .frame(width: 300, height: 200)
                    .background(Rectangle().fill(Color.white).shadow(radius: 3))
            }
            if showHelp{
                VStack{
                    Text("Try clicking the tabs at the bottom to view different parts of the app!")
                    Button("hide"){
                        showHelp.toggle()
                    }
                    .padding(.top, 20.0)
                    .buttonStyle(.bordered)

                }
                .frame(width: 300, height: 200)
                    .background(Rectangle().fill(Color.white).shadow(radius: 3))
            }
            Image("javaphoto")
                        .toolbar {
                            ToolbarItemGroup(placement: .primaryAction) {
                                Button("About") {
                                    print("About tapped!")
                                    showAbout.toggle()
                                }

                                Button("Help") {
                                    print("Help tapped!")
                                    showHelp.toggle()
                                }
                            }
                            ToolbarItemGroup(placement: .navigationBarLeading) {
                                Button("< Back") {
                                    print("Back tapped!")
                                    showSecret = true
                                    
                                }

            
                            }
                        }
                }
        
        
    }
}


struct ToDoList: View {
    @State var line1 = ""
    @State var lineCount = 0
    @Binding var numSubmissions: Int
    @Binding var textContent: Array<String>
    var body: some View {
            VStack(){
                TextField("Start Writing", text: $line1)
                
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                    .onSubmit{
                        numSubmissions = numSubmissions + 1
                        lineCount = lineCount + 1
                        textContent.append("")
                        
                        
                    }
                
                ForEach(0..<numSubmissions, id: \.self){index in
                    TextField("...", text: ($textContent[index]))
                        .padding(.top, 10.0)

                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .onSubmit{
                            numSubmissions = numSubmissions + 1
                            textContent.append("")
                            
                            
                        }
                }
            }
            .padding(.top, 2.0)
            .position(x:210, y: 75)
        }
}
struct AksharView: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("Akshar")
                Image("smiley")
                    .padding(.bottom, 50.0)
                Text("Ryan Lin")
                Image("wat")
            }
            
        }
    }
}
struct secretView: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("Grant")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                ZStack{
                    Image("penguino")
                    Text("\n\n\nMeow")
                        
                    
                }
            }
            
        }
    }
}
struct view2_Previews: PreviewProvider {
    static var previews: some View {
        TesterView()
    }
}
