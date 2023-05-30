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
    @State var count = 0
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
            ClickerView(count: $count)                        .tabItem {
                Label("Clicker", systemImage: "dollarsign")
            }
            .badge(count)
            MapView()
                .tabItem {
                    Label("Map", systemImage: "cube")
                }
                }
    }
}

struct MenuView: View {
    @State var showAbout = false
    @State var showHelp = false
    @Binding var showSecret: Bool
    var body: some View {
        NavigationStack {
            ZStack{
                Image("catbg")
                    .opacity(0.2)
                VStack{
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
                                    showSecret.toggle()
                                    
                                }
                                
                                
                            }
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

                            .offset()
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
struct ClickerView: View {
    @State var rotation = 0
    @State var textList = ["try clicking me", "great work!", "nice!", "amazing", "SUPER!", "what a tap!", "nice one!", "you can do it!", "LET'S GO!", "click again!", "Keep going!", "You're on fire!", "Never give up!", "Awesome job!", "Well done!", "You're crushing it!", "One more click!", "You're unstoppable!", "Amazing progress!", "Excellent work!", "Stay focused!", "Keep tapping away!", "You're a click master!", "Inspiring effort!", "Just a little more!", "You're making waves!", "Tremendous effort!", "Way to go!", "Incredible stamina!", "You're a superstar!", "The sky's the limit!", "Push it to the max!", "Phenomenal tapping!", "Keep that momentum!", "Bravo!", "You're a click champion!", "Never back down!", "Fantastic job!", "More power to you!", "Unbelievable determination!", "Your perseverance shines!", "Keep those clicks coming!", "You're a force to be reckoned with!", "Stellar performance!", "Keep up the great work!", "You're a click warrior!", "Inspiring dedication!", "Every click counts!", "Don't stop now!", "You're doing amazing!", "You're a click legend!", "The world needs your clicks!", "Keep that rhythm going!", "You're in a league of your own!", "Keep tapping like a pro!", "You're unstoppable!", "Rise to the challenge!", "Click like there's no tomorrow!", "Keep that motivation high!", "You're a click maestro!", "Your dedication is inspiring!", "You're a click virtuoso!", "Show them what you've got!", "Click your way to success!", "Keep that energy up!", "You're on the right track!", "Nothing can slow you down!", "Click your way to greatness!", "You're a click superstar!", "Your determination is awe-inspiring!", "Keep tapping, keep shining!", "You're a click phenomenon!", "Don't let anything hold you back!", "Click your way to victory!", "Your clicks are extraordinary!", "Keep those taps coming!", "You're an inspiration to others!", "Click like there's no tomorrow!", "Keep that positive energy flowing!", "You're a click prodigy!", "Nothing can stop you now!", "Click with all your might!", "You're a click hero!", "Keep up the amazing work!", "Your clicks are legendary!", "Click your way to excellence!", "You're on a roll!", "Keep that motivation burning!", "You're a click wizard!", "Never lose your rhythm!", "Click your way to the top!", "You're unstoppable!", "Keep that fire burning!", "You're a click genius!", "Don't hold back!", "Click like a true champion!", "Keep those clicks flowing!", "You're a click superstar!", "Believe in your clicking power!", "Click with passion!", "Keep that drive alive!", "You're a click mastermind!", "Click your way to triumph!", "Keep pushing forward!", "You're a click legend in the making!", "Don't settle for less!", "Click like there's no tomorrow!", "Keep aiming higher!", "You're a click sensation!", "Never underestimate your clicking prowess!"]
    @State var currentText = 0
    @State var temp = 100
    @State var earnings = 1
    @State var upgradeCost = 50
    @State var showError = false
    @State var rotIncrease = 20
    @State var showCongrats = false
    @Binding var count: Int
    var body: some View {
        ZStack{
            Image("catbg")
                .opacity(0.2)
            VStack{
                if showError && !showCongrats {
                    Text("not enough money.")
                }
                if showCongrats{
                    VStack{
                        Text("UPGRADED, Let's go!")
                        Image("thumbsup")
                            .resizable()
                    }.frame(width: 300, height: 150)
                        .background(Rectangle().fill(Color.white).shadow(radius: 3))
                        
                }
                Button(action:{
                    if (count<upgradeCost){
                        showError = true
                    }
                    if (count>upgradeCost){
                        showCongrats = true
                        earnings = earnings * 2
                        count = count - upgradeCost
                        rotIncrease = rotIncrease + 4
                        upgradeCost = Int((Double(upgradeCost)*1.8))
                    }
                    
                    
                })
                {
                    Text("Upgrade Cost: $" + String(upgradeCost))
                }
                .padding(.bottom, 50.0)
                .buttonStyle(.bordered)
                Text(textList[currentText])
                    .padding(.bottom, 20.0)
                Button(action:{
                    print("test")
                    showError = false
                    showCongrats = false
                    count = count + earnings
                    rotation = rotation + rotIncrease
                    temp = currentText
                    UIApplication.shared.applicationIconBadgeNumber = count
                    while(currentText == temp){
                        currentText = Int(Float.random(in: 1..<110))
                    }
                })
                {
                    Image("smileynobg")
                        .rotationEffect(.degrees(Double(rotation)))
                    
                    
                }
                .padding(.bottom, 30.0)
                VStack{
                    Text("Balance: $" + String(count))
                    Text("Earnings per click: $" + String(earnings))
                        .padding(.top, 20.0)
                }
                .frame(width: 300, height: 150)
                    .background(Rectangle().fill(Color.white).shadow(radius: 3))
                Button("Reset"){
                    count = 0
                    earnings = 1
                    upgradeCost = 50
                    rotation = 0
                    rotIncrease = 4
                }
            }
            
        }
    }
}
struct MapView: View {
    var body: some View {
        Text("view")
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
