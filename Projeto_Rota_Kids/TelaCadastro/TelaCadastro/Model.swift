/*4175746f723a204a75616e204361726c6f73205269626569726f204669757a612c20286964733a2055433233313032383236204e3a2b35352836312939383130382d34343133292063726970746f67726166696120656d20646f63756d656e746f20706172612070726f746563616f206465206175746f7269612e205468697320636f64652069732066726f6d20617574686f723a204a75616e204361726c6f73205269626569726f204669757a612070726f7465637465642062792068657820656e6372797074696f6e*/

//
//  Created by Juan Carlos on 13/05/25.
//


import Foundation

struct Motorista: Decodable, Hashable {
    let nome: String?
    let cnh: String?
    let foto: String?
    let telefone: String?
    let veiculos: Veiculo
}

struct Veiculo: Decodable, Hashable {
    let placa: String?
    let modelo: String?
    let foto: String?
    let cor: String?
    let criancas: [Crianca]
}

struct Pai: Decodable, Hashable {
    let nome: String?
    let endereco: String?
    let foto: String?
    let telefone: String?
    let criancas: [Crianca]
}

struct Crianca: Decodable, Hashable {
    let apelido: String?
    let foto: String?
    let colegio: String?
    let horario: String?
    let observacoes: String?
}
