//
//  HomeViewModel.swift
//  netflix-clone
//
//  Created by Rafael Carter on 6/19/21.
//

import Foundation

class HomeViewModel: ObservableObject {
    // String is Category
    @Published var movies:  [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        movies.keys.map({$0.description})
    }
    
    public func GetMovie (forCategory category: String) -> [Movie] {
        return movies[category] ?? []
    }
    
    init() {
        setUpMovies()
    }
    
    func setUpMovies(){
        movies["Trending Now"] = exampleMovies
        movies["Stand-Up Comedy"] = exampleMovies.shuffled()
        movies["Sci-fi"] = exampleMovies.shuffled()
        movies["Horror"] = exampleMovies.shuffled()
        movies["Romance"] = exampleMovies.shuffled()
        movies["Adventure"] = exampleMovies.shuffled()
    }
}
