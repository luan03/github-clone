//
//  NetworkManager.swift
//  GHFollowers
//
//  Created by Luan Fagundes on 07/10/20.
//  Copyright © 2020 Luan Fagundes. All rights reserved.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    let baseURL = "https://api.github.com/users/"

    private init() {

    }

    func getFollowers(for username: String, page: Int, completed: @escaping ([Follower]?, String?) -> Void ) {
        let endpoint = baseURL + "\(username)/followers?per_page=100&page=\(page)"

        // now we convert the string to an object URL in swift
        guard let url = URL(string: endpoint) else {
            completed(nil, "This username created an invalid request. Please Try Again.")
            return
        }

        let task = URLSession.shared.dataTask(with: url) { data, response, error in

            if let _  = error {
                completed(nil, "Unable to complete your request. Please check your connection.")
            }

            guard let response  = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(nil, "Invalid response from server. Please try again.")
                return
            }

            guard let data = data else {
                completed(nil, "The Data received from server was invalid. Please Try Again")
                return
            }

            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers =  try decoder.decode([Follower].self, from: data)
                completed(followers, nil)
            } catch {
                completed(nil, "The Data received from server was invalid. Please Try Again")
            }
        }

        task.resume()
    }
}
