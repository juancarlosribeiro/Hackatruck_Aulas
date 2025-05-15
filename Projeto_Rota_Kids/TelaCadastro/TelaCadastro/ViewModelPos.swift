/*4175746f723a204a75616e204361726c6f73205269626569726f204669757a612c20286964733a2055433233313032383236204e3a2b35352836312939383130382d34343133292063726970746f67726166696120656d20646f63756d656e746f20706172612070726f746563616f206465206175746f7269612e205468697320636f64652069732066726f6d20617574686f723a204a75616e204361726c6f73205269626569726f204669757a612070726f7465637465642062792068657820656e6372797074696f6e*/

//
//
//
//  Created by Juan on 15/05/25.
//


import Foundation

func postDataToAPI(urlString: String, parameters: [String: Any], completion: @escaping (Result<Data, Error>) -> Void) {
    guard let url = URL(string: urlString) else {
        completion(.failure(NSError(domain: "Invalid URL", code: 0, userInfo: nil)))
        return
    }

    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.addValue("application/json", forHTTPHeaderField: "Content-Type")

    do {
        request.httpBody = try JSONSerialization.data(withJSONObject: parameters)
    } catch {
        completion(.failure(NSError(domain: "JSON Encoding Error", code: 0, userInfo: [NSLocalizedDescriptionKey: "Failed to encode JSON data"])))
        return
    }

    URLSession.shared.dataTask(with: request) { data, response, error in
        if let error = error {
            completion(.failure(error))
            return
        }

        guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
            completion(.failure(NSError(domain: "Invalid Response", code: 0, userInfo: [NSLocalizedDescriptionKey: "Received an invalid HTTP response"])))
            return
        }

        if let data = data {
            completion(.success(data))
        } else {
            completion(.failure(NSError(domain: "No Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "No data received in the response"])))
        }
    }.resume()
}

// Exemplo de uso:
let apiURL = "http://127.0.0.1:1880/createQuitanda" // Substitua pela URL da sua API
let postParameters: [String: Any] = [
    "chave1": "valor1",
    "chave2": 123,
    "chave3": true
]


        


/*4175746f723a204a75616e204361726c6f73205269626569726f204669757a612c20286964733a2055433233313032383236204e3a2b35352836312939383130382d34343133292063726970746f67726166696120656d20646f63756d656e746f20706172612070726f746563616f206465206175746f7269612e205468697320636f64652069732066726f6d20617574686f723a204a75616e204361726c6f73205269626569726f204669757a612070726f7465637465642062792068657820656e6372797074696f6e*/
