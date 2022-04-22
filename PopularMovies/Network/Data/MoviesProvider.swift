//
//  MoviesProvider.swift
//  PopularMovies
//
//  Created by Oscar Andrés Rodas Montoya on 21/4/22.
//

import Foundation
import Alamofire

final class MoviesProvider {
    
    static let share = MoviesProvider()
    
    private let restWebService = "https://api.themoviedb.org/3/tv/popular"
    private let okStatusService = 200...300
    
    func getMovies (apKey:String){//, success: @escaping(_ responseGet: Success) -> (), failure: @escaping(_ error: Error?) -> () ){
        
        let url = "\(restWebService)?api_key=\(apKey)"
            
        AF.request(url, method: .get).validate(statusCode: okStatusService).responseDecodable (of:MoviesTvResponse.self, decoder: DataDateDecoder()) { response in
            
            if let responseGet = response.value?.tvMovies {
                print(responseGet)
            } else{
                print(Error.self)
            }
        }
        
        }
}
