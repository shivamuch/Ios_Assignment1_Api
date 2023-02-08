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
    
    public func fetchData(url: String){
        guard
            let url = URL(string: url)
        else{
            preconditionFailure("was not able to convert string to url: \(url)")
        }
        
        
}

