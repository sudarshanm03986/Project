//
//  ContentView.swift
//  Gym Buddy
//
//  Created by Sudarshan Malla on 23/06/23.
//

import SwiftUI

enum Tabs: Int {
    case home = 0
    case setup = 1
}

struct ContentView: View {
    
    @State var selectedTab: Tabs = .home
    var body: some View {
        ZStack {
            Color(red: 1, green: 0.7, blue: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
            
            VStack {
                
                HStack{
                    Button {
                        selectedTab = .home
                        
                    } label: {
                        Image(systemName: "house.fill")
                            .font(Font.largeTitle)
                            .foregroundColor(Color.black)
                    }
                    
                    Spacer()
                    
                    Button {
                        selectedTab = .setup
                        
                    } label: {
                        Image(systemName: "gearshape.fill")
                            .font(Font.largeTitle)
                            .foregroundColor(Color.black)
                    }
                    
                }
                .padding()
                
                if (selectedTab == .home) {
                    MainView()
                } else {
                    SetUpView()
                }
                
                
            }
            .padding()
            
            
        }
        
        .ignoresSafeArea()
        
    

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
