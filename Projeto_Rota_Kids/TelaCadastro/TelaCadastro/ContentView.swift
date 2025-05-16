/*4175746f723a204a75616e204361726c6f73205269626569726f204669757a612c20286964733a2055433233313032383236204e3a2b35352836312939383130382d34343133292063726970746f67726166696120656d20646f63756d656e746f20706172612070726f746563616f206465206175746f7269612e205468697320636f64652069732066726f6d20617574686f723a204a75616e204361726c6f73205269626569726f204669757a612070726f7465637465642062792068657820656e6372797074696f6e*/

//
//  Created by Juan Carlos on 13/05/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModelCadastro()
    
    var body: some View {
        ZStack {
            Color.amarelo
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                HStack {
                    Image("RotaKids")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                    Spacer()
                }
                .padding(.horizontal)
                .background()
                
                
                ScrollView {
                    
                    
                    VStack(alignment: .leading) {
                        Text("Nome do Responsável:")
                            .foregroundColor(.letra)
                            .bold()
                            .font(.system(size: 22))
                        TextField("  Nome:", text: $viewModel.nome)
                            .background(RoundedRectangle(cornerRadius: 50).fill(.white).frame(height: 30))
                            .onChange(of: viewModel.nome) { newValue in
                                viewModel.isNomeValid = !viewModel.nome.isEmpty
                            }.overlay(alignment: .trailing) {
                                if !viewModel.isNomeValid && viewModel.nome.isEmpty {
                                    Image(systemName: "exclamationmark.triangle.fill")
                                        .foregroundColor(.red)
                                        .padding(.trailing, 10)
                                }
                            }
                        
                        Text("Telefone do Responsável:")
                            .bold()
                            .foregroundColor(.letra)
                            .font(.system(size: 22))
                        TextField("  Telefone:", text: $viewModel.telefone)
                            .background(RoundedRectangle(cornerRadius: 50).fill(.white).frame(height: 30))
                            .onChange(of: viewModel.telefone) { newValue in
                                viewModel.isTelefoneValid = !viewModel.telefone.isEmpty
                            }
                            .overlay(alignment: .trailing) {
                                if !viewModel.isTelefoneValid && viewModel.telefone.isEmpty {
                                    Image(systemName: "exclamationmark.triangle.fill")
                                        .foregroundColor(.red)
                                        .padding(.trailing, 10)
                                }
                            }
                        
                        Text("Endereço:")
                            .bold()
                            .foregroundColor(.letra)
                            .font(.system(size: 22))
                        TextField("  Endereço:", text: $viewModel.endereco)
                            .background(RoundedRectangle(cornerRadius: 50).fill(.white).frame(height: 30))
                            .onChange(of: viewModel.endereco) { newValue in
                                viewModel.isEnderecoValid = !viewModel.endereco.isEmpty
                            }
                            .overlay(alignment: .trailing) {
                                if !viewModel.isEnderecoValid && viewModel.endereco.isEmpty {
                                    Image(systemName: "exclamationmark.triangle.fill")
                                        .foregroundColor(.red)
                                        .padding(.trailing, 10)
                                }
                            }
                        
                        Text("Criança:")
                            .bold()
                            .foregroundColor(.letra)
                            .font(.system(size: 22))
                        TextField("  Apelido:", text: $viewModel.apelido)
                            .background(RoundedRectangle(cornerRadius: 50).fill(.white).frame(height: 30))
                            .onChange(of: viewModel.apelido) { newValue in
                                viewModel.isApelidoValid = !viewModel.apelido.isEmpty
                            }
                            .overlay(alignment: .trailing) {
                                if !viewModel.isApelidoValid && viewModel.apelido.isEmpty {
                                    Image(systemName: "exclamationmark.triangle.fill")
                                        .foregroundColor(.red)
                                        .padding(.trailing, 10)
                                }
                            }
                        
                        Text("Observações:")
                            .bold()
                            .foregroundColor(.letra)
                            .font(.system(size: 22))
                        TextField("  Observações:", text: $viewModel.observacoes, axis: .vertical)
                            .textFieldStyle(.roundedBorder)
                        
                        Spacer(minLength: 40)
                    }
                    .padding(.horizontal)
                    
                    HStack {
                        Spacer()
                        Button("Cadastrar") {
                            if viewModel.isFormValid {
                                viewModel.enviarDadosCadastro()
                            } else {
                                viewModel.showAlert = true
                                viewModel.alertMessage = "Por favor, preencha todos os campos obrigatórios."
                            }
                        }
                        .foregroundColor(.white)
                        .bold()
                        .padding(.horizontal, 40)
                        .padding(.vertical, 15)
                        .background(RoundedRectangle(cornerRadius: 50).fill(.botao))
                        .padding(.trailing, 20)
                        .disabled(!viewModel.isFormValid || viewModel.isLoading) //
                        
                        if viewModel.isLoading {
                            ProgressView()
                        }
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                }
            }
        }
        .alert(isPresented: $viewModel.showAlert) {
            Alert(title: Text("Cadastro"), message: Text(viewModel.alertMessage), dismissButton: .default(Text("OK")))
        }
    }
}
#Preview {
    ContentView()
}










/*4175746f723a204a75616e204361726c6f73205269626569726f204669757a612c20286964733a2055433233313032383236204e3a2b35352836312939383130382d34343133292063726970746f67726166696120656d20646f63756d656e746f20706172612070726f746563616f206465206175746f7269612e205468697320636f64652069732066726f6d20617574686f723a204a75616e204361726c6f73205269626569726f204669757a612070726f7465637465642062792068657820656e6372797074696f6e*/
