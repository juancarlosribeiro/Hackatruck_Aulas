//
//  ContentView.swift
//  NetflixClone
//
//  Created by Turma01-17 on 07/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.gray
                .ignoresSafeArea()

            
            VStack {
                
                TabView{
                    
                    InitView()
                        .tabItem {
                            Label("Inicio", systemImage:"house.fill")
                        }
                    
                    WhatsnewView()
                        .tabItem {
                            Label("Novidades", systemImage:"play.rectangle.on.rectangle.fill")
                        }
                    
                    MyNetflixView()
                        .tabItem {
                            Label("Minha Netflix", systemImage:"person.crop.square")
                        }
                    
                    
                    
                    
                    
                }
                
                
                
                
                
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
