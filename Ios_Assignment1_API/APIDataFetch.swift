//
//  APIDataFetch.swift
//  Ios_Assignment1_API
//
//  Created by Shivam Bajaj on 2023-02-08.
//

import Foundation

class APIDataFetch{
    
    static private let session: URLSession = {
        let config = URLSessionConfiguration.default
        return URLSession(configuration: config)
    }()
    
  
}

