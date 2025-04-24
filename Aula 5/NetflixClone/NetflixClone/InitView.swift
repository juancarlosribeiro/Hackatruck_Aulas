//
//  InitView.swift
//  NetflixClone
//
//  Created by Turma01-17 on 07/04/25.
//

import SwiftUI

struct InitView: View {
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                Color.gray
                    .ignoresSafeArea()
                
                VStack{
                    HStack{
                        VStack{
                            HStack{
                                
                                Spacer()
                                
                                Text("Para Juan")
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    .bold()
                                    .foregroundColor(.white)
                                
                                Spacer()
                                
                                
                                Image(systemName: "arrow.down.to.line.alt")
                                    .resizable()
                                    .scaledToFit()
                                    .scaledToFill()
                                    .frame(width: 0, height: 25)
                                    .foregroundColor(.white)
                                
                                Spacer()
                                
                                
                                Image(systemName: "magnifyingglass")
                                    .resizable()
                                    .scaledToFit()
                                    .scaledToFill()
                                    .frame(width: 0, height: 25)
                                    .foregroundColor(.white)
                                Spacer()
                                
                            }
                            
                            VStack{
                                
                                HStack{
                                    
                                    
                                    Text("Series")
                                        .foregroundColor(.white)
                                    
                                    Text("Filmes")
                                        .foregroundColor(.white)
                                    
                                    
                                    Text("Categorias")
                                        .foregroundColor(.white)
                                    
                                    
                                }
                            }
                            
                        }
                        Spacer()
                    }
                    ZStack{
                        VStack{
                            HStack{
                                
                                Image("sao")
                                    .resizable()
                                    .frame(width: 360, height:520)
                                    .overlay(
                                        VStack{
                                            Spacer()
                                            HStack{
                                                Spacer()
                                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                                    Text("Assistir")
                                                        .foregroundColor(.black)
                                                        .bold()
                                                        .background(Rectangle()
                                                            .foregroundColor(.white)
                                                            .frame(width: 120, height: 50)
                                                            .cornerRadius(5))
                                                    
                                                    
                                                })
                                                Spacer()
                                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                                    Text("+ Minha Lista   ")
                                                        .foregroundColor(.white)
                                                        .bold()
                                                        .background(Rectangle()
                                                            .foregroundColor(.white)
                                                            .frame(width: 120, height: 50)
                                                            .cornerRadius(5)
                                                            .opacity(0.6)
                                                            .bold()
                                                        )
                                                    
                                                    
                                                    
                                                })
                                                Spacer()
                                            }.position(CGPoint(x: 195, y: 470))
                                        }
                                    )
                            }
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                }
                
                
            }
            
            
            
        }
    }
}

#Preview {
    InitView()
}
