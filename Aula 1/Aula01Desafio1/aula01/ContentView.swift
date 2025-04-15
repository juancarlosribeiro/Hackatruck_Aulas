//
//  ContentView.swift
//  aula01
//
//  Created by Turma01-17 on 29/03/25.
//
// Author - Juan Carlos

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Rectangle().fill(Color.red)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                .position(CGPoint(x: 50.0, y: 50))
                
            Rectangle().fill(Color.blue)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                .position(CGPoint(x: 310, y: -133))
            
            Rectangle().fill(Color.green)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                .position(CGPoint(x: 50.0, y: 260))
            
            Rectangle().fill(Color.yellow)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                .position(CGPoint(x: 310, y: 75))
            
            
        }
        .padding()
        
        
        
    }
}

#Preview {
    ContentView()
}
