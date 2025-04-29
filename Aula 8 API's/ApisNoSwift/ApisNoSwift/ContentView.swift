//
//  ContentView.swift
//  ApisNoSwift
//
//  Created by Turma01-17 on 29/04/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewmodel = ViewModel()
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color.orange
                    .ignoresSafeArea()
                
                
                ScrollView{
                    VStack{
                        VStack{
                            Image("dbz_background")
                                .resizable()
                                .scaledToFit()
                                .scaledToFill()
                                .frame(width: 400,height: 200)
                                .ignoresSafeArea()
                            
                        }
                        VStack{
                            ForEach(viewmodel.characters, id: \.self ){index in
                                
                                HStack{
                                    
                                  //  NavigationLink(destination: //ViewCharacters(recebe: index)){
                                        
                                        AsyncImage(url: URL(string: index.image!)){ image in
                                            image.resizable()
                                        } placeholder: {
                                            ProgressView()
                                        }
                                            .frame(width: 60, height: 60)
                                        
                                        
//                                        VStack{}
//                                        VStack{}
                                        
                                        
                                    //}
                                }
                                
                                
                                
                            }
                            
                            
                            
                        }
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                }
                
                
                
                
                
            }
        }.onAppear(){
            viewmodel.fetch()
        }
    }
}
    
#Preview {
    ContentView()
}
