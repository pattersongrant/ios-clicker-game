//
//  view2.swift
//  ap-exam-project
//
//  Created by Grant Patterson on 5/12/23.
//

import SwiftUI
struct TesterView: View {
    @State var numSubmissions = 0
    @State var textContent = [""]
    var body: some View {
        TabView {
                    MenuView()
                        .tabItem {
                            Label("Menu", systemImage: "list.dash")
                        }
                    OrderView()
                        .tabItem {
                            Label("Order", systemImage: "square.and.pencil")
                        }
                    
            ToDoList(numSubmissions: $numSubmissions, textContent: $textContent)
                        .tabItem {
                            Label("To Do", systemImage: "star.fill")
                        }
                }
    }
}

struct MenuView: View {
    
    var body: some View {
        NavigationStack {
            Image("javaphoto")
                        .toolbar {
                            ToolbarItemGroup(placement: .primaryAction) {
                                Button("About") {
                                    print("About tapped!")
                                }

                                Button("Help") {
                                    print("Help tapped!")
                                }
                            }
                            ToolbarItemGroup(placement: .navigationBarLeading) {
                                Button("< Back") {
                                    print("Back tapped!")
                                }

            
                            }
                        }
                }
        
        
    }
}
struct OrderView: View {
    var body: some View {
        Image("wat")
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
                        print(textContent)
                        print(numSubmissions)
                        
                    }
            }
        }
        .padding(.top, 2.0)
        .position(x:210, y: 75)
    }
}

struct view2_Previews: PreviewProvider {
    static var previews: some View {
        TesterView()
    }
}
