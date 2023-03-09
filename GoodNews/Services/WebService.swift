//
//  WebService.swift
//  GoodNews
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/03/09.
//

import Foundation


class Webservice {
    
    // Completion handler gives us what we exactly want from the Data in this case Article Array
    
    func getArticles(url: URL, completion: @escaping([Any]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
                // fire completion block and pass nil because we ddint find any articles
            } else if let data = data {
 
                print(data)
            }
            
        }.resume()
    }
}
