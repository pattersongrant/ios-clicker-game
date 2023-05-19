//
//  view2.swift
//  ap-exam-project
//
//  Created by Grant Patterson on 5/12/23.
//

import SwiftUI
import AVFoundation
var player: AVAudioPlayer!
struct TesterView: View {
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
                    ToDoList()
                        .tabItem {
                            Label("Order", systemImage: "star.fill")
                        }
                }
    }
}
func playSound(){
    
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
    var body: some View {
        Text("ToDoList Functionality")
        Button(action: {
            //play music
        }) {
            Text("Play music")
        }
        
    }
}

struct view2_Previews: PreviewProvider {
    static var previews: some View {
        TesterView()
    }
}
