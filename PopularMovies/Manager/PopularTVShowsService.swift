//
//  PopularTVShowsService.swift
//  PopularMovies
//
//  Created by Oscar Andrés Rodas Montoya on 20/4/22.
//

import Foundation
import Combine
import Alamofire

enum NetworkErrors: Error{
    case urlError
    case responseError
    case decoderError
    case unknownError
}
struct NetworkError: Error {
  let initialError: AFError
  let backendError: BackendError?
}

struct BackendError: Codable, Error {
    var status: String
    var message: String
}
protocol ServiceProtocol{
    func getPopularTVServiceData()-> AnyPublisher<PopularTVDataModel,Error>
}

class Service{
    static let shared = Service()
    private init(){}
}

private let okStatusService = 200...299

extension Service: ServiceProtocol{
    
    func getPopularTVServiceData()-> AnyPublisher<PopularTVDataModel,Error>{
        let url = URL.getTvPopularUrl()!
        return AF.request(url, method: .get).validate(statusCode: okStatusService).publishDecodable(type: PopularTVDataModel.self, decoder: DataDateDecoder())
            .tryCompactMap { (response) -> PopularTVDataModel? in
                if let error = response.error { throw error }
                return response.value
            }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
}
}
