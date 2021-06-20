//
//  StandardHomeMovie.swift
//  netflix-clone
//
//  Created by Rafael Carter on 6/19/21.
//

import SwiftUI
import KingfisherSwiftUI

struct StandardHomeMovie: View {
    var movie: Movie
    
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie: exampleMovie1)
            //.frame(width: 200, height: 300)
    }
}
