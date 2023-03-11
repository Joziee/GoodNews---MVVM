//
//  Article.swift
//  GoodNews
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/03/09.
//

import Foundation


struct ArticleList: Codable {
    let articles: [Article]
}


struct Article: Codable {
    
    let title: String
    let description: String
}
