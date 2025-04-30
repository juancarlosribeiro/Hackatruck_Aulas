//
//  ContentView.swift
//  Desafio 2
//
//  Created by Turma01-17 on 06/04/25.
//

import SwiftUI

struct ContentView: View {
    @State private var sheetAqui = false
    
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
                            .bold()
                            .foregroundColor(.white)
                        
                    }.background(Rectangle()
                        .foregroundColor(.rosinhadeCaixa)
                        .frame(width: 200, height:100 ))
                        
                    Spacer()
                        
                    NavigationLink(destination: modo2()){
                            Text("Modo 2")
                            .bold()
                            .foregroundColor(.white)
                        
                    }.background(Rectangle()
                        .foregroundColor(.rosinhadeCaixa)
                        .frame(width: 200, height:100))
                        
                    Spacer()
                    
                    Button("Modo 3"){
                        
                        sheetAqui = true
                        
                    }
                    .foregroundColor(.white)
                    .bold()
                    .background(Rectangle()
                        .foregroundColor(.rosinhadeCaixa)
                        .frame(width: 200, height:100))
                    .sheet(isPresented: $sheetAqui){
                        
                        
                        ZStack {
                            
                            Color.corDeFundo
                                .ignoresSafeArea()
                            
                            VStack{
                                
                                VStack{
                                    Text("Sheet View")
                                        .foregroundColor(.white)
                                        .bold()
                                        .font(.system(size: 40))
                                }.padding()
                                
                                
                                
                                Spacer()
                                
                                
                                VStack(alignment: .center){
                                    Text("Nome: Juan")
                                        .foregroundColor(.white)
                                        .font(.system(size: 30))
                                    Text("Sobrenome: Carlos")
                                        .foregroundColor(.white)
                                        .font(.system(size: 30))
                                    
                                }.background(Rectangle()
                                    .foregroundColor(.rosinhadeCaixa)
                                    .frame(width: 300, height: 200))
                                
                                
                                Spacer()

                                
                            }
                            
                        }
                    }

                        
                    
                    
                    
                    
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
