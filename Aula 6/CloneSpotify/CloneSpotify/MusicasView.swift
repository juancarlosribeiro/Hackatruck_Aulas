//
//  MusicasView.swift
//  CloneSpotify
//
//  Created by Turma01-17 on 08/04/25.
//

import SwiftUI

struct MusicasView: View {
    var recebe : Song
    
    var body: some View {
        
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack{
                
                VStack{
                    
                    AsyncImage(url: URL(string: recebe.capa)){ image in
                        image.resizable()
                    } placeholder: {ProgressView()}
                        .frame(width: 200, height: 200)
                    
                    Text(recebe.name)
                        .foregroundColor(.white)
                        .font(.system(size: 40))
                    Text(recebe.artist)
                        .foregroundColor(.white)
                        .font(.system(size: 20))

                    
                }
                
                Spacer()
                
                VStack{
                    
                    HStack{
                        
                        Image(systemName: "shuffle")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        Image(systemName: "backward.end.fill")
                            .font(.system(size: 40))
                            .foregroundColor(.white)
                        Spacer()
                        
                        Image(systemName: "play.fill")
                            .font(.system(size: 50))
                            .foregroundColor(.white)
                        Spacer()

                        
                        Image(systemName: "forward.end.fill")
                            .font(.system(size: 40))
                            .foregroundColor(.white)
                        Spacer()

                        
                        Image(systemName: "repeat")
                            .font(.system(size: 30))
                            .foregroundColor(.white)

                        
                        
                        
                        
                    }.padding()
                    
                    Spacer().frame(height: 150)
                    
                }
                
                
            }
            
            
            
            
            
        }
        
        
        
        
        
    }
}

#Preview {
    MusicasView(recebe: Song(name: "TESTE", artist: "TESTE", capa: "TESTE"))
}
