//
//  NetworkManager.swift
//  H4XOR News
//
//  Created by Syed Muhammad on 16/03/2020.
//  Copyright © 2020 Syed Muhammad. All rights reserved.
//

import Foundation
class NetworkManager: ObservableObject {
    @Published var posts = [Post]()
    
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, responce, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        do{
                            let decocdedData = try decoder.decode(Result.self, from: safeData)
                            DispatchQueue.main.async {
                                 self.posts = decocdedData.hits
                            }
                           
                        }catch{
                            print(error)
                        }
                        
                    }
                    
                }
            }
            task.resume()
        }
    }
}
