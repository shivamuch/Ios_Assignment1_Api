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
        
        let request = URLRequest(url: url)
        let task = APIDataFetch.session.dataTask(with: request) {
            data, response, error in
            
            if let data = data {
                do{
                    let jsonData = try JSONSerialization.jsonObject(with: data)
                    
                    print(jsonData)
                }catch let err{
                    print("\(err)")
                }
            } else if let error = error {
                print("error with data task, fetchDir: \(error)")
            } else {
                print("something went wrong when fetching the directory: \(String(describing: response))")
            }
        }
        task.resume()
    }
}

