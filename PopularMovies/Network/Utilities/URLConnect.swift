//
//  URLConnect.swift
//  PopularMovies
//
//  Created by Oscar Andrés Rodas Montoya on 21/4/22.
//

import Foundation

extension URL{
    static func getTvPopularUrl()->URL?
    {
        guard let url = URL(string: "https://api.themoviedb.org/3/tv/popular?api_key=c6aeee577586ba38e487b74dfede5deb&language=es-ES") else {return nil}
        return url
    }
}
