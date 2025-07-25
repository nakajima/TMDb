//
//  MovieTests.swift
//  TMDb
//
//  Copyright © 2025 Adam Young.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an AS IS BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import Foundation
import Testing

@testable import TMDb

@Suite(.tags(.models))
struct MovieTests {

    @Test("JSON decoding of Movie", .tags(.decoding))
    func decodeReturnsMovie() throws {
        let result = try JSONDecoder.theMovieDatabase.decode(Movie.self, fromResource: "movie")

        #expect(result == movie)
    }

    @Test("JSON decoding of Movie with empty homepage and release date")
    func decodeWhenHomepageAndReleaseDateIsEmptyStringReturnsMovie() throws {
        let result = try JSONDecoder.theMovieDatabase.decode(
            Movie.self,
            fromResource: "movie-blank-homepage-release-date"
        )

        #expect(result.homepageURL == nil)
        #expect(result.releaseDate == nil)
    }

}

extension MovieTests {

    private var movie: Movie {
        Movie(
            id: 550,
            title: "Fight Club",
            tagline: "How much can you know about yourself if you've never been in a fight?",
            originalTitle: "Fight Club",
            originalLanguage: "en",
            overview:
                "A ticking-time-bomb insomniac and a slippery soap salesman channel primal male aggression into a shocking new form of therapy. Their concept catches on, with underground \"fight clubs\" forming in every town, until an eccentric gets in the way and ignites an out-of-control spiral toward oblivion.",
            runtime: 139,
            genres: [
                Genre(id: 18, name: "Drama")
            ],
            releaseDate: DateFormatter.theMovieDatabase.date(from: "1999-10-12"),
            posterPath: nil,
            backdropPath: URL(string: "/fCayJrkfRaCRCTh8GqN30f8oyQF.jpg"),
            budget: 63_000_000,
            revenue: 100_853_753,
            homepageURL: nil,
            imdbID: "tt0137523",
            status: .released,
            productionCompanies: [
                ProductionCompany(
                    id: 508,
                    name: "Regency Enterprises",
                    originCountry: "US",
                    logoPath: URL(string: "/7PzJdsLGlR7oW4J0J5Xcd0pHGRg.png")
                )
            ],
            productionCountries: [
                ProductionCountry(
                    countryCode: "US",
                    name: "United States of America"
                )
            ],
            spokenLanguages: [
                SpokenLanguage(
                    languageCode: "en",
                    name: "English"
                )
            ],
            popularity: 0.5,
            voteAverage: 7.8,
            voteCount: 3439,
            hasVideo: false,
            isAdultOnly: false
        )
    }

}
