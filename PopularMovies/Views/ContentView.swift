//
//  ContentView.swift
//  PopularMovies
//
//  Created by Oscar Andrés Rodas Montoya on 20/4/22.
//

import SwiftUI
import Alamofire

struct ContentView: View {
    var body: some View {
        TabView{
            TvPopularView()
                .tabItem{
                    Text("Programas de TV")
                    Image(systemName: "tv")
                }
        }
    }
}

//ProgressView


/*func getMoviesAction(){
    let apKey = "c6aeee577586ba38e487b74dfede5deb"
    MoviesProvider.share.getMovies(apKey: apKey)

    } */


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
