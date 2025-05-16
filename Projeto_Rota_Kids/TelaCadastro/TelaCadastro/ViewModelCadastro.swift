//
//  ViewModelCadastro.swift
//  TelaCadastro
//
//  Created by Turma01-17 on 16/05/25.
//

import Foundation
import SwiftUI

class ViewModelCadastro: ObservableObject {
    @Published var nome: String = ""
    @Published var telefone: String = ""
    @Published var endereco: String = ""
    @Published var apelido: String = ""
    @Published var observacoes: String = ""
    @Published var showAlert: Bool = false
    @Published var alertMessage: String = ""
    @Published var isLoading: Bool = false // Para indicar o carregamento durante a requisição
    
    @Published var isNomeValid = false
    @Published var isTelefoneValid = false
    @Published var isEnderecoValid = false
    @Published var isApelidoValid = false
    
    var isFormValid: Bool {
           return !nome.isEmpty && !telefone.isEmpty && !endereco.isEmpty && !apelido.isEmpty
       }
    
    
    
    
    

    func enviarDadosCadastro() {
        isLoading = true
        alertMessage = ""
        showAlert = false

        let dadosCadastro = CadastroPaiFilho(
            nomeResponsavel: nome,
            telefoneResponsavel: telefone,
            enderecoResponsavel: endereco,
            apelidoCrianca: apelido,
            observacoesCrianca: observacoes.isEmpty ? nil : observacoes
        )

        guard let url = URL(string: "http://127.0.0.1:1880/createQuitanda") else {
            print("URL inválida para cadastro.")
            alertMessage = "Erro: URL de cadastro inválida."
            showAlert = true
            isLoading = false
            return
        }

        do {
            let jsonData = try JSONEncoder().encode(dadosCadastro)

            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            request.httpBody = jsonData

            URLSession.shared.dataTask(with: request) { [weak self] data, response, error in
                DispatchQueue.main.async {
                    self?.isLoading = false
                    if let error = error {
                        print("Erro ao enviar dados de cadastro: \(error)")
                        self?.alertMessage = "Erro ao enviar os dados: \(error.localizedDescription)"
                        self?.showAlert = true
                        return
                    }

                    guard let httpResponse = response as? HTTPURLResponse else {
                        self?.alertMessage = "Erro ao obter resposta do servidor."
                        self?.showAlert = true
                        return
                    }

                    print("Resposta do servidor: \(httpResponse.statusCode)")
                    if (200...299).contains(httpResponse.statusCode) {
                        self?.alertMessage = "Cadastro realizado com sucesso!"
                        self?.showAlert = true
                        // Limpar os campos após o sucesso
                        self?.nome = ""
                        self?.telefone = ""
                        self?.endereco = ""
                        self?.apelido = ""
                        self?.observacoes = ""
                    } else {
                        if let data = data, let responseString = String(data: data, encoding: .utf8) {
                            self?.alertMessage = "Erro no cadastro: \(httpResponse.statusCode) - \(responseString)"
                        } else {
                            self?.alertMessage = "Erro no cadastro: Status \(httpResponse.statusCode)"
                        }
                        self?.showAlert = true
                    }
                }
            }.resume()

        } catch {
            DispatchQueue.main.async {
                self.isLoading = false
                print("Erro ao codificar dados para JSON: \(error)")
                self.alertMessage = "Erro interno ao processar os dados."
                self.showAlert = true
            }
        }
    }
}
