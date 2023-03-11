//
//  WebService.swift
//  GoodNews
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/03/09.
//

import Foundation



class WebService {
    
    func getArticles(url: URL, completion: @escaping ([Article]?) -> ()){
        
        // The first test is can we evern get data from the url or not
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            }
            else if let data = data {
                
                
                let articleList = try?  JSONDecoder().decode(ArticleList.self, from: data)
                
                if let articleList = articleList {
                    completion(articleList.articles)
                }
                
                print(articleList?.articles)
                
                
            }
        } .resume()
    }
}
