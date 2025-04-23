//
//  ContentView.swift
//  Desafio 2
//
//  Created by Turma01-17 on 06/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                Color.corDeFundo
                    .ignoresSafeArea()
                
                VStack {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .scaledToFill()
                        .frame(width: 150, height: 150)
                    
                    Spacer()
                    
                    NavigationLink(destination:modo1()){
                        Text("Modo 1")
                            .foregroundColor(.white)
                        
                    }.background(Rectangle()
                        .foregroundColor(.rosinhadeCaixa)
                        .frame(width: 200, height:100 ))
                        
                    Spacer()
                        
                    NavigationLink(destination: modo2()){
                            Text("Modo 2")
                            .foregroundColor(.white)
                        
                    }.background(Rectangle()
                        .foregroundColor(.rosinhadeCaixa)
                        .frame(width: 200, height:100))
                        
                    
                    
                    Spacer()
                    
                }
                .padding()
            }
        }
    }
    
}

#Preview {
    ContentView()
}
