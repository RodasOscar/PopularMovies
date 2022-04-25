//
//  ImageComponent.swift
//  PopularMovies
//
//  Created by Oscar Andrés Rodas Montoya on 21/4/22.
//

import SwiftUI

extension Image{
    func imageResuableModifier(width:CGFloat,height:CGFloat)-> some View{
        self
            .resizable()
            .aspectRatio(1.0, contentMode: .fit)
            .frame(width: width, height: height, alignment: .center)
    }
}
