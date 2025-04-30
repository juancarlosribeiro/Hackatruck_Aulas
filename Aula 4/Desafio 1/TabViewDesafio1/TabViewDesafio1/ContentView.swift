//
//  ContentView.swift
//  TabViewDesafio1
//
//  Created by Turma01-17 on 30/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            TabView{
                
                RosaDeView()
                    .tabItem {
                        Label("Rosa", systemImage:"paintbrush.fill")
                    }
                
                
                AzulDeView()
                    .tabItem {
                        Label("Azul", systemImage:"paintbrush.pointed.fill")
                    }
                
                
                CinzaDeView()
                
                    .tabItem {
                        Label("Cinza", systemImage:"paintpalette.fill")
                    }
                
                ListaDeView()
                    .tabItem {
                        Label("Lista", systemImage:"list.bullet")
                    }
                
                
                
                
                
            }
            
            
            
            
            
            
        }
    }
}

#Preview {
    ContentView()
}
