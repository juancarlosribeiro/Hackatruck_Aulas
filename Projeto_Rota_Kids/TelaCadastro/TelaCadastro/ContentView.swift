/*4175746f723a204a75616e204361726c6f73205269626569726f204669757a612c20286964733a2055433233313032383236204e3a2b35352836312939383130382d34343133292063726970746f67726166696120656d20646f63756d656e746f20706172612070726f746563616f206465206175746f7269612e205468697320636f64652069732066726f6d20617574686f723a204a75616e204361726c6f73205269626569726f204669757a612070726f7465637465642062792068657820656e6372797074696f6e*/

//
//  Created by Juan Carlos on 13/05/25.
//

import SwiftUI

struct ContentView: View {
    
    @State public var nome: String = ""
    @State public var telefone: String = ""
    @State public var endereco: String = ""
    @State public var apelido: String = ""
    @State public var observacoes: String = ""

    
    
    
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
          
                        
                        VStack(alignment: .leading){
                            
                            
                            
                            Text("Nome do Responsável:")
                                .foregroundColor(.letra)
                                .bold()
                                .font(.system(size: 22))
                            
                            
                            TextField("  Nome:", text: $nome)
                                .background(Rectangle()
                                    .foregroundColor(.white)
                                    .frame(height: 30)
                                    .cornerRadius(50))
                            
                            
                            Text("Telefone do Responsável:")
                                .bold()
                                .foregroundColor(.letra)
                                .font(.system(size: 22))
                            
                            TextField("  Telefone:", text: $telefone)
                                .background(Rectangle()
                                    .foregroundColor(.white)
                                    .frame(height: 30)
                                    .cornerRadius(50))
                            
                            
                            
                            Text("Endereço:")
                                .bold()
                                .foregroundColor(.letra)
                                .font(.system(size: 22))
                            
                            TextField("  Endereço:", text: $endereco)
                                .background(Rectangle()
                                    .foregroundColor(.white)
                                    .frame(height: 30)
                                    .cornerRadius(50))
                            
                            
                            
                            Text("Criança:")
                                .bold()
                                .foregroundColor(.letra)
                                .font(.system(size: 22))
                            
                            TextField("  Nome:", text: $apelido)
                                .background(Rectangle()
                                    .foregroundColor(.white)
                                    .frame(height: 30)
                                    .cornerRadius(50))
                            
                            
                            
                            Text("Foto da criança:")
                                .bold()
                                .foregroundColor(.letra)
                                .font(.system(size: 22))
                            
                            TextField("", text: $observacoes, axis: .vertical)
                                .textFieldStyle(.roundedBorder)
                            
                            
                            
                            
                            Text("Observações:")
                                .bold()
                                .foregroundColor(.letra)
                                .font(.system(size: 22))
                            
                            TextField("  Observacoes:", text: $observacoes, axis: .vertical)
                                .textFieldStyle(.roundedBorder)
                            
                            Spacer(minLength: 40)
                            
                            
                            
                            

                        }.padding(.horizontal)
                        
                        HStack{
                            
                            Spacer()
                            
                            Button("Cadastrar"){}.foregroundColor(.white)
                                .bold()
                                .background(Rectangle()
                                    .foregroundColor(.botao)
                                    .cornerRadius(50)
                                    .frame(width: 150, height:50))
                                    .padding(.trailing, 40)
                            
                            
                            
                        }.padding(.horizontal)
                        
                        
                        Spacer()
                        
                            
                            
                        
                    }
                    
                
            }
            
        }
    }
}

#Preview {
    ContentView()
}




































/*4175746f723a204a75616e204361726c6f73205269626569726f204669757a612c20286964733a2055433233313032383236204e3a2b35352836312939383130382d34343133292063726970746f67726166696120656d20646f63756d656e746f20706172612070726f746563616f206465206175746f7269612e205468697320636f64652069732066726f6d20617574686f723a204a75616e204361726c6f73205269626569726f204669757a612070726f7465637465642062792068657820656e6372797074696f6e*/
