
import Foundation

class ViewModelMyApi: ObservableObject {
    
    @Published var fruteira: [Fruit] = []
    
    func fetch(){
        
        
        guard let url = URL(string: "http://127.0.0.1:1880/readQuitanda") else {
            
            return
            
        }
        
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            
            guard let data = data, error == nil else{
                
                return
                
            }

            
            
            do{
                
                let parsed = try JSONDecoder().decode([Fruit].self, from: data)
                
                DispatchQueue.main.async {
                    self?.fruteira = parsed
                }
                } catch {
                    
                    print(error)
                    
                }
                
                
                
            }
        task.resume()
            
        }
    }
    
    
