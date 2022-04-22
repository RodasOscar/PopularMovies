//
//  ContentView.swift
//  PopularMovies
//
//  Created by Oscar Andrés Rodas Montoya on 20/4/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                Button(action: {getMoviesAction()
                }, label: {
                    Text("Get Movies")
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(15)
                })
            }
        }
    }
}


func getMoviesAction(){
    let apKey = "c6aeee577586ba38e487b74dfede5deb"
    MoviesProvider.share.getMovies(apKey: apKey) //{ Success in
        
  //  } failure: { (error) in }

    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
