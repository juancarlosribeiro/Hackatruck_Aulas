//
//  ContentView.swift
//  CalculadoraVelocidade
//
//  Created by Turma01-17 on 22/04/25.
//

import SwiftUI


struct ContentView: View {
    
    @State private var distancia: Double = 0.0
    @State private var tempo: Double = 0.0
    @State private var calculo: Double = 0.0
    @State private var imagemDaHora: String = "interroga"
    @State private var corDefundo: Color = .gray
    
    
    

    
    var body: some View {
        ZStack{
            corDefundo
                .ignoresSafeArea()
            VStack {
                VStack{
                    VStack{
                        Text("Digite a distancia(km)")
                        TextField("N:", value: $distancia, format:.number)
                            .background(Color.white)
                            .frame(width: 200)
                        
                        Text("Digite o tempo(h)")
                        TextField("N:", value: $tempo, format: .number)
                            .background(Color.white)
                            .frame(width: 200)
                        
                        Button(action: {
                            
                            calculo = distancia / tempo
                            
                            switch calculo{
                            case 0...9.9:
                                imagemDaHora = "taruga"
                                corDefundo = .verdeClaro
                                
                            case 10...29.9:
                                imagemDaHora = "elefante"
                                corDefundo = .azulClaro
                                
                            case 30...69.9:
                                imagemDaHora = "avestruz"
                                corDefundo = .laranjaClaro
                                
                            case 70...89.9:
                                imagemDaHora = "leao"
                                corDefundo = .amareloClaro
                                
                            case 90...130:
                                imagemDaHora = "guepa"
                                corDefundo = .vermelhoClaro
                                
                                
                            default:
                                imagemDaHora = "interroga"
                            }
                            
                        }, label: {
                            Text("Calcular")
                        })
                        .buttonStyle(.borderedProminent)
                        .tint(.black)
                        
                        
                        Spacer()
                    }
                    VStack{
                        Text(" \(calculo, specifier: "%.2lf") KM/H")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        
                    }
                    
                    VStack{
                        Image("\(imagemDaHora)")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            //.scaledToFit()
                           // .scaledToFill()
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 400)
                        
                        
                        
                        
                    }
                    
                    VStack{
                        Image("tela")
                            .resizable()
                            .scaledToFit()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                        
                        
                        
                        
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
