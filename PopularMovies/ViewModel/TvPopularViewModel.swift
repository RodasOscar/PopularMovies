//
//  TvPopularViewModel.swift
//  PopularMovies
//
//  Created by Oscar Andrés Rodas Montoya on 23/4/22.
//

import Foundation

import Combine

class TvPopularViewModel : ObservableObject{
    
    @Published var tvPopularData : [TvPopularData] = []
    @Published var tvPopularDataModel : [PopularTVDataModel] = []
    private var cancellable = Set<AnyCancellable>()
    
    func getTVPopularData(){
        let cancellable = Service.shared.getPopularTVServiceData()
            .sink(receiveCompletion: { result in
                switch result{
                case .finished:
                    print("Conexión exitosa")
                    print(result)
                case .failure:
                    print("Conexión fallida, Error de conexión o en la data")
                    print(result)
                }
            }, receiveValue: {response in
                self.tvPopularData = response.tvPopular ?? []
            })
        self.cancellable.insert(cancellable)
    }
}
