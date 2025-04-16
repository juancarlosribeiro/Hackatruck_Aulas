//
//  ContentView.swift
//  Clone_Feed_Instagram_Desafio
//
//  Created by Turma01-17 on 29/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            VStack{
                Text("Steve_Jobs")
                    .padding()
                    .font(.title2)
            }
            Spacer()
            
            VStack{
                Image(systemName:"arrow.clockwise")
            }
            VStack{
                Image(systemName: "list.dash")
                    .padding()
            }
        }
        
        HStack{
            
            VStack{
                Image("stevejobs")
                    .resizable()
                    .scaledToFit()
                    .scaledToFill()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .frame(width: 100,height: 100)
                    .padding(.horizontal, 20)
            }
            HStack{
                VStack {
                    Text("100")
                        .bold()
                    Text("Posts")
                }
                
                VStack{
                    Text("15M")
                        .bold()
                    Text("Followers")
                }
                
                VStack{
                    Text("12K")
                        .bold()
                    Text("Following")
                }
                
                
                
                
            }.padding(.horizontal, 20)
            
            
            
        }
        VStack(alignment: .leading){
            VStack(alignment: .leading){
                Text("Steve Jobs")
                    .bold()
                    .position(x: 44)
                Text("The creator of Apple inc")
                
                
                
            }
        }
            .padding()
        
        
        
        VStack{
            HStack{
                Image(systemName: "square.grid.3x3.fill")
                    .position(x:70)
                Image(systemName: "video.fill")
                    .position(x: 60)
                Image(systemName: "person.and.background.dotted")
                    .position(x:55)
            }
            .padding()
            
        }
            VStack{
                HStack{
                    Rectangle().fill(Color.gray)
                        .frame(width: 110, height: 110)
                    Rectangle().fill(Color.gray)
                        .frame(width: 110, height: 110)
                    Rectangle().fill(Color.gray)
                        .frame(width: 110, height: 110)
                }
                HStack{
                    Rectangle().fill(Color.gray)
                        .frame(width: 110, height: 110)
                    Rectangle().fill(Color.gray)
                        .frame(width: 110, height: 110)
                    Rectangle().fill(Color.gray)
                        .frame(width: 110, height: 110)
                }
                HStack{
                    Rectangle().fill(Color.gray)
                        .frame(width: 110, height: 110)
                    Rectangle().fill(Color.gray)
                        .frame(width: 110, height: 110)
                    Rectangle().fill(Color.gray)
                        .frame(width: 110, height: 110)
                }
                HStack{
                    Rectangle().fill(Color.gray)
                        .frame(width: 110, height: 110)
                    Rectangle().fill(Color.gray)
                        .frame(width: 110, height: 110)
                    Rectangle().fill(Color.gray)
                        .frame(width: 110, height: 110)
                }
             
                
                
                
            }
            
        }
    }


#Preview {
        ContentView()
}

