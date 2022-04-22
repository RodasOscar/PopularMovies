//
//  DataDateDecoder.swift
//  PopularMovies
//
//  Created by Oscar Andrés Rodas Montoya on 21/4/22.
//

import Foundation

final class DataDateDecoder: JSONDecoder {
    let dateFormatter = DateFormatter()
    
    override init() {
        super.init()
        // Formato Actual 2022-03-30
        dateFormatter.dateFormat = "yyyy-MM-DD"
        dateDecodingStrategy = .formatted(dateFormatter)
    }
}
