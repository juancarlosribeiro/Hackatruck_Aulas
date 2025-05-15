//
//  TelaNotificacoes.swift
//  TelaCadastro
//
//  Created by Juan Carlos on 15/05/25.
//

import SwiftUI

struct TelaNotificacoes: View {
    var body: some View {
        
        
        ZStack{
            Color.amarelo
                .ignoresSafeArea()
            
            VStack{
                
                VStack(alignment: .leading){
                    HStack{
                        Image("RotaKids")
                            .resizable()
                            .scaledToFit()
                            .scaledToFill()
                            .frame(width: 80,height: 80)
                        
                        Spacer()
                        
                    }.padding(.horizontal)
                        .background()
                    
                }
                
                ScrollView{
                    
                    VStack{
                        
                        
                        Text("Notificações")
                            .bold()
                            .font(.system(size: 28))
                        
                        
                        
                        
                        VStack(alignment: .leading){
                            Divider()
                                .background(Color.black)
                            
                            
                            HStack{
                                Text("Aviso de notificação")
                                    .bold()
                                Spacer()
                                
                                Text("12:30")
                                
                            }
                            HStack{
                                Text("Texto da notificação")
                            }
                        }
                        VStack(alignment: .leading){
                            Divider()
                                .background(Color.black)
                            
                            
                            HStack{
                                Text("Aviso de notificação")
                                    .bold()
                                Spacer()
                                
                                Text("12:30")
                                
                            }
                            HStack{
                                Text("Texto da notificação")
                            }
                        }
                        VStack(alignment: .leading){
                            Divider()
                                .background(Color.black)
                            
                            
                            HStack{
                                Text("Aviso de notificação")
                                    .bold()
                                Spacer()
                                
                                Text("12:30")
                                
                            }
                            HStack{
                                Text("Texto da notificação")
                            }
                        }
                        VStack(alignment: .leading){
                            Divider()
                                .background(Color.black)
                            
                            
                            HStack{
                                Text("Aviso de notificação")
                                    .bold()
                                Spacer()
                                
                                Text("12:30")
                                
                            }
                            HStack{
                                Text("Texto da notificação")
                            }
                        }
                        VStack(alignment: .leading){
                            Divider()
                                .background(Color.black)
                            
                            
                            HStack{
                                Text("Aviso de notificação")
                                    .bold()
                                Spacer()
                                
                                Text("12:30")
                                
                            }
                            HStack{
                                Text("Texto da notificação")
                            }
                        }
                        VStack(alignment: .leading){
                            Divider()
                                .background(Color.black)
                            
                            
                            HStack{
                                Text("Aviso de notificação")
                                    .bold()
                                Spacer()
                                
                                Text("12:30")
                                
                            }
                            HStack{
                                Text("Texto da notificação")
                            }
                        }
                        VStack(alignment: .leading){
                            Divider()
                                .background(Color.black)
                            
                            
                            HStack{
                                Text("Aviso de notificação")
                                    .bold()
                                Spacer()
                                
                                Text("12:30")
                                
                            }
                            HStack{
                                Text("Texto da notificação")
                            }
                        }
                        VStack(alignment: .leading){
                            Divider()
                                .background(Color.black)
                            
                            
                            HStack{
                                Text("Aviso de notificação")
                                    .bold()
                                Spacer()
                                
                                Text("12:30")
                                
                            }
                            HStack{
                                Text("Texto da notificação")
                            }
                        }
                        VStack(alignment: .leading){
                            Divider()
                                .background(Color.black)
                            
                            
                            HStack{
                                Text("Aviso de notificação")
                                    .bold()
                                Spacer()
                                
                                Text("12:30")
                                
                            }
                            HStack{
                                Text("Texto da notificação")
                            }
                        }
                        VStack(alignment: .leading){
                            Divider()
                                .background(Color.black)
                            
                            
                            HStack{
                                Text("Aviso de notificação")
                                    .bold()
                                Spacer()
                                
                                Text("12:30")
                                
                            }
                            HStack{
                                Text("Texto da notificação")
                            }
                        }
                        VStack(alignment: .leading){
                            Divider()
                                .background(Color.black)
                            
                            
                            HStack{
                                Text("Aviso de notificação")
                                    .bold()
                                Spacer()
                                
                                Text("12:30")
                                
                            }
                            HStack{
                                Text("Texto da notificação")
                            }
                        }
                                                  
                        
                    }.padding()
                    
                    Spacer()
                    
                    
                }
                
                
            }
            
        }
        
        
    }
    
    
}

#Preview {
    TelaNotificacoes()
}

