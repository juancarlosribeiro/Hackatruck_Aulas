//
//  ContentView.swift
//  APIsSwift
//
//  Created by Turma01-17 on 12/04/25.
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
                        
                        VStack(alignment: .center){
                            Text("The Dragon Ball App")
                                .foregroundColor(.white)
                                .bold()
                                .font(.system(size: 40))
                            
                            Spacer()
                            
                        }
                        
                        
                        
                        VStack{
                            Image("dbz_background")
                                .resizable()
                                .scaledToFit()
                                .scaledToFill()
                                .frame(width: 400,height: 200)
                                .ignoresSafeArea()
                            
                        }
                        VStack(alignment: .leading){
                            ForEach(viewmodel.characters, id: \.self){index in
                                Spacer()
                                
                                HStack{
                                    
                                    NavigationLink(destination: SwiftUIView(recebe: index)){
                                        
                                        AsyncImage(url: URL(string: index.image!)){ image in
                                            image.resizable()
                                                .scaledToFill()
                                                .scaledToFit()
                                                .frame(width:100, height: 100)
                                        } placeholder: {
                                            ProgressView()
                                        }.frame(width: 60, height: 60)
                                            .padding()
                                        Text(index.name!)
                                            .foregroundColor(.white)
                                            .font(.system(size: 30))
                                        
                                        
//                                        VStack{}
//                                        VStack{}
                                        
                                        Spacer()
                                    }
                                }
                            }
                            
                            
                            
                        }.padding()
   
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
