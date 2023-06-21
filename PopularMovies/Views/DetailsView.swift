//
//  DetailsView.swift
//  PopularMovies
//
//  Created by Oscar Andrés Rodas Montoya on 24/4/22.
//

import SwiftUI

struct DetailsView : View{

    var model : [TvPopularData]
    var index : Int
    @State private var size = UIScreen.main.bounds.size
    var body: some View{
        NavigationView{
        ScrollView{
        VStack(alignment: .center){
        let urlImg = URL(string: "https://image.tmdb.org/t/p/original\(model[index].posterPath ?? "")")
                AsyncImage(url: urlImg){image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: size.width, height: 300)
                }placeholder: {
                    ProgressView()
                }
        }
         
            Text("Nombre Original: \(model[index].originalName ?? "")")
            Text("Nombre en Español: \(model[index].name ?? "")")
            Text("Fecha de Estreno: \(model[index].firstAir ?? "")")
            Text("Visión General : \(model[index].overview ?? "")")
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding(.all, 2.0)
                .padding(.trailing)
            Text("Lenguaje Original : \(model[index].originalLanguage ?? "")")
            .padding(.horizontal, 35.0)
        }
     
        }.navigationTitle(model[index].name ?? "")
        Spacer()
        
    }
}
//struct DetailsView_Previews: PreviewProvider {
  //  static var previews: some View {
    //    DetailsView()
    //}
//}
