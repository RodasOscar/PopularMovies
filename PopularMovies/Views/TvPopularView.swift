//
//  TvPopularView.swift
//  PopularMovies
//
//  Created by Oscar Andrés Rodas Montoya on 22/4/22.
//

import SwiftUI

struct TvPopularView: View {
    @StateObject var tvPopularVM = TvPopularViewModel()
    var body: some View {
        NavigationView{
            List{
                ForEach(tvPopularVM.tvPopularData.indices, id:\.self){ idx in
                    HStack{
                        NavigationLink(destination: DetailsView(model: tvPopularVM.tvPopularData,index: idx), label: {
                            AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/original\(tvPopularVM.tvPopularData[idx].posterPath ?? "")")){image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 70, height: 90, alignment: .center)
                            }placeholder: {
                                ProgressView()
                            }
                            .padding(.all, 0.0)
                            VStack(alignment:.leading){
                                Text("Nombre: \(tvPopularVM.tvPopularData[idx].name ?? "")")
                                    
                                Text("Fecha de Estreno: \(tvPopularVM.tvPopularData[idx].firstAir ?? "")")
                                Text("Lenguaje Original: \(tvPopularVM.tvPopularData[idx].originalLanguage ?? "")")
                            }
                            .padding(.all)
                        })
                        .padding(.all, 0.0)
                    }
                    .padding(.all, 0.0)
                }
                .padding(.all, 0.0)
            }
            .padding(.all, 0.0)
            .navigationTitle("Programas de TV")
        }
        .padding(.all, 0.0)
        .onAppear(){
            tvPopularVM.getTVPopularData()
        }
    }
}

struct TvPopularView_Previews: PreviewProvider {
    static var previews: some View {
        TvPopularView()
    }
}
