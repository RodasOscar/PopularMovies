//
//  MoviesTvData.swift
//  PopularMovies
//
//  Created by Oscar Andrés Rodas Montoya on 21/4/22.
//

//Respuesta API REST

/*
 {
 "page": 1,
 "results": [
 {
 "backdrop_path": "/1uegR4uAxRxiMyX4nQnpzbXhrTw.jpg",
 "first_air_date": "2022-03-30",
 "genre_ids": [
 10759,
 10765,
 9648
 ],
 "id": 92749,
 "name": "Moon Knight",
 "origin_country": [
 "US"
 ],
 "original_language": "en",
 "original_name": "Moon Knight",
 "overview": "When Steven Grant..",
 "popularity": 9988.761,
 "poster_path": "/9rJoulDnFeVGXcUsN7CjllUWADA.jpg",
 "vote_average": 8.5,
 "vote_count": 330
 },
 "total_pages": 6431,
 "total_results": 128612
 }
 ],
 */
import Foundation

struct PopularTVDataModel : Decodable, Identifiable{
    var id = UUID()
    let page: Int??
    let totalResults: Int??
    let totalPages: Int??
    let tvPopular: [TvPopularData]?
    enum CodingKeys : String, CodingKey{
        case tvPopular = "results"
        case page,
             totalResults = "total_results",
             totalPages = "total_pages"
    }
   // enum CodingKeys: String, CodingKey {
     //   case errorMessage
            // page
           //  totalResults = "total_results",
            // totalPages = "total_pages",
             //tvPopular = "results"
    }

struct TvPopularData: Decodable {

    let backDropPath: String?
    let firstAir: String?
    let ids: Int?
    let name: String?
    let originalLanguage: String?
    let originalName: String?
    let overview: String?
    let popularity : Float?
    let posterPath: String?
    let voteCount: Float?
    let voteAverage: Float?
    let originCountry: [String]?
    let genre_ids: [Int]?
    
    public enum CodingKeys: String, CodingKey {
        case backDropPath = "backdrop_path",
             firstAir = "first_air_date",
             ids = "id",
             name = "name",
             originalLanguage = "original_language",
             originalName = "original_name",
             overview,
             popularity,
             posterPath = "poster_path",
             voteCount = "vote_count",
             voteAverage = "vote_average"
       case originCountry = "origin_country"
       case genre_ids = "genre_ids"
    }
}
    
    
/*
 struct Result : Decodable {
    let backdrop_path : String?
    let first_air_date : Date?
    //let genre_ids : [Int]?
    let id : Int?
    let name : String?
    //let origin_country : Array<String>?
    let original_language : String?
    let original_name : String?
    let overview : String
    let popularity : Float?
    let poster_path : String?
    let vote_average : Float?
 
 
 
 import Foundation

 struct MoviesTvResponse: Decodable,Identifiable{
     var currentPage = UUID()
     //let currentPage: Int?
     let totalResultsCount: Int?
     let totalPages: Int?
     let tvMoviesItems: [TvMovies]?
     let errorMessage: String?

     public enum CodingKeys: String, CodingKey {
         case currentPage = "page"
         case totalResultsCount = "total_results"
         case totalPages = "total_pages"
         case tvMoviesItems = "results"
         case errorMessage, tvMoviesItems
     }
 }

 struct TvMovies: Codable {

     let backDropPath: String?
     let firstAir: String?
    // let genre_ids: Float
     let id: Int
     let name: String
    // let originCountry:
     let originalLanguage: String?
     let originalName: String?
     let overview: String?
     let popularity: Float?
     let posterPath: String?
     let voteCount: Float?
     let voteAverage: Float?
     
     public enum CodingKeys: String, CodingKey {
         case backDropPath = "backdrop_path"
         case firstAir = "first_air_date"
        // case genre_ids = "genre_ids"
         case id
         case name
        // case originCountry = "origin_country"
         case originalLanguage = "original_language"
         case originalName = "original_name"
         case overview
         case popularity
         case posterPath = "poster_path"
         case voteCount = "vote_count"
         case voteAverage = "vote_average"
     }
 }
 */
