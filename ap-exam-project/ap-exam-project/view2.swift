//
//  view2.swift
//  ap-exam-project
//
//  Created by Grant Patterson on 5/12/23.
//

import SwiftUI
struct TesterView: View {
    @State var numSubmissions = 0
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
                    
                ToDoList(numSubmissions: $numSubmissions)
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
    var body: some View {
        TextField("Start Writing", text: $line1)
            .position(x: 210, y: 75)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .onSubmit{
                numSubmissions = numSubmissions + 1
                lineCount = lineCount + 1
            }
        ForEach(0..<numSubmissions, id: \.self){index in
            TextField("...", text: .constant(""))
                .position(x: 210, y: (75+CGFloat(numSubmissions)*15))
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .onSubmit{
                    numSubmissions = numSubmissions + 1
                }
        }
    }
}

struct view2_Previews: PreviewProvider {
    static var previews: some View {
        TesterView()
    }
}
