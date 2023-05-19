//
//  view2.swift
//  ap-exam-project
//
//  Created by Grant Patterson on 5/12/23.
//

import SwiftUI

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
                }
    }
}
struct MenuView: View {
    var body: some View {
        Image("javaphoto")
        
        
    }
}
struct OrderView: View {
    var body: some View {
        Text("OrderView")
        
    }
}


struct view2_Previews: PreviewProvider {
    static var previews: some View {
        TesterView()
    }
}
