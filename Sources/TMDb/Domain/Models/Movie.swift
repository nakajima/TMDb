//
//  Movie.swift
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

///
/// A model representing a movie.
///
public struct Movie: Identifiable, Codable, Equatable, Hashable, Sendable {
    ///
    /// Movie identifier.
    ///
    public let id: Int

    ///
    /// Movie title.
    ///
    public let title: String

    ///
    /// Movie tagline.
    ///
    public let tagline: String?

    ///
    /// Original movie title.
    ///
    public let originalTitle: String?

    ///
    /// Original language of the movie.
    ///
    public let originalLanguage: String?

    ///
    /// Movie overview.
    ///
    public let overview: String?

    ///
    /// Movie runtime, in minutes.
    ///
    public let runtime: Int?

    ///
    /// Movie genres.
    ///
    public let genres: [Genre]?

    ///
    /// Movie release date.
    ///
    public let releaseDate: Date?

    ///
    /// Movie poster path.
    ///
    /// To generate a full URL see <doc:/TMDb/GeneratingImageURLs>.
    ///
    public let posterPath: URL?

    ///
    /// Movie poster backdrop path.
    ///
    /// To generate a full URL see <doc:/TMDb/GeneratingImageURLs>.
    ///
    public let backdropPath: URL?

    ///
    /// Movie budget, in US dollars.
    ///
    public let budget: Double?

    ///
    /// Movie revenue, in US dollars.
    ///
    public let revenue: Double?

    ///
    /// Movie's web site URL.
    ///
    public let homepageURL: URL?

    ///
    /// IMDd identifier.
    ///
    public let imdbID: String?

    ///
    /// Movie status.
    ///
    public let status: Status?

    ///
    /// Movie production companies.
    ///
    public let productionCompanies: [ProductionCompany]?

    ///
    /// Movie production countries.
    ///
    public let productionCountries: [ProductionCountry]?

    ///
    /// Movie spoken languages.
    ///
    public let spokenLanguages: [SpokenLanguage]?

    ///
    /// Current popularity.
    ///
    public let popularity: Double?

    ///
    /// Average vote score.
    ///
    public let voteAverage: Double?

    ///
    /// Number of votes.
    ///
    public let voteCount: Int?

    ///
    /// Has video.
    ///
    public let hasVideo: Bool?

    ///
    /// Is the movie only suitable for adults.
    ///
    public let isAdultOnly: Bool?

    public let job: String?
		public let department: String?
    public let creditID: String?
    public let character: String?
    public let order: Int?

    ///
    /// Creates a movie object.
    ///
    /// - Parameters:
    ///    - id: Movie identifier.
    ///    - title: Movie title.
    ///    - tagline: Movie tagline.
    ///    - originalTitle: Original movie title.
    ///    - originalLanguage: Original language of the movie.
    ///    - overview: Movie overview.
    ///    - runtime: Movie runtime, in minutes.
    ///    - genres: Movie genres.
    ///    - releaseDate: Movie release date.
    ///    - posterPath: Movie poster path.
    ///    - backdropPath: Movie poster backdrop path.
    ///    - budget: Movie budget, in US dollars.
    ///    - revenue: Movie revenue, in US dollars.
    ///    - homepageURL: Movie's web site URL.
    ///    - imdbID: IMDd identifier.
    ///    - status: Movie status.
    ///    - productionCompanies: Movie production companies.
    ///    - productionCountries: Movie production countries.
    ///    - spokenLanguages: Movie spoken languages.
    ///    - popularity: Current popularity.
    ///    - voteAverage: Average vote score.
    ///    - voteCount: Number of votes.
    ///    - hasVideo: Has video.
    ///    - isAdultOnly: Is the movie only suitable for adults.
    ///
    public init(
        id: Int,
        title: String,
        tagline: String? = nil,
        originalTitle: String? = nil,
        originalLanguage: String? = nil,
        overview: String? = nil,
        runtime: Int? = nil,
        genres: [Genre]? = nil,
        releaseDate: Date? = nil,
        posterPath: URL? = nil,
        backdropPath: URL? = nil,
        budget: Double? = nil,
        revenue: Double? = nil,
        homepageURL: URL? = nil,
        imdbID: String? = nil,
        status: Status? = nil,
        productionCompanies: [ProductionCompany]? = nil,
        productionCountries: [ProductionCountry]? = nil,
        spokenLanguages: [SpokenLanguage]? = nil,
        popularity: Double? = nil,
        voteAverage: Double? = nil,
        voteCount: Int? = nil,
        hasVideo: Bool? = nil,
        isAdultOnly: Bool? = nil,
        character: String? = nil,
        job: String? = nil,
				department: String? = nil,
        order: Int? = nil,
        creditID: String? = nil,
    ) {
        self.id = id
        self.title = title
        self.tagline = tagline
        self.originalTitle = originalTitle
        self.originalLanguage = originalLanguage
        self.overview = overview
        self.runtime = runtime
        self.genres = genres
        self.releaseDate = releaseDate
        self.posterPath = posterPath
        self.backdropPath = backdropPath
        self.budget = budget
        self.revenue = revenue
        self.homepageURL = homepageURL
        self.imdbID = imdbID
        self.status = status
        self.productionCompanies = productionCompanies
        self.productionCountries = productionCountries
        self.spokenLanguages = spokenLanguages
        self.popularity = popularity
        self.voteAverage = voteAverage
        self.voteCount = voteCount
        self.hasVideo = hasVideo
        self.isAdultOnly = isAdultOnly
        self.character = character
        self.job = job
				self.department = department
        self.order = order
        self.creditID = creditID
    }
}

extension Movie {
    private enum CodingKeys: String, CodingKey {
        case id
        case title
        case tagline
        case originalTitle
        case originalLanguage
        case overview
        case runtime
        case genres
        case releaseDate
        case posterPath
        case backdropPath
        case budget
        case revenue
        case homepageURL = "homepage"
        case imdbID = "imdbId"
        case status
        case productionCompanies
        case productionCountries
        case spokenLanguages
        case popularity
        case voteAverage
        case voteCount
        case hasVideo = "video"
        case isAdultOnly = "adult"

        // When getting a movie back in credits we'll get these
        case creditID = "credit_id"
        case job
				case department
        case character
        case order
    }

    ///
    /// Creates a new instance by decoding from the given decoder.
    ///
    /// This initializer throws an error if reading from the decoder fails, or
    /// if the data read is corrupted or otherwise invalid.
    ///
    /// - Parameter decoder: The decoder to read data from.
    ///
    /// - Throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - Throws: `DecodingError.keyNotFound` if self does not have an entry for the given key.
    /// - Throws: `DecodingError.valueNotFound` if self has a null entry for the given key.
    ///
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let container2 = try decoder.container(keyedBy: CodingKeys.self)

        self.id = try container.decode(Int.self, forKey: .id)
        self.title = try container.decode(String.self, forKey: .title)
        self.tagline = try container.decodeIfPresent(String.self, forKey: .tagline)
        self.originalTitle = try container.decodeIfPresent(String.self, forKey: .originalTitle)
        self.originalLanguage = try container.decodeIfPresent(
            String.self, forKey: .originalLanguage
        )
        self.overview = try container.decodeIfPresent(String.self, forKey: .overview)
        self.runtime = try container.decodeIfPresent(Int.self, forKey: .runtime)
        self.genres = try container.decodeIfPresent([Genre].self, forKey: .genres)

        // Need to deal with empty strings - date decoding will fail with an empty string
        let releaseDateString = try container.decodeIfPresent(String.self, forKey: .releaseDate)
        self.releaseDate = try {
            guard let releaseDateString, !releaseDateString.isEmpty else {
                return nil
            }

            return try container2.decodeIfPresent(Date.self, forKey: .releaseDate)
        }()

        self.posterPath = try container.decodeIfPresent(URL.self, forKey: .posterPath)
        self.backdropPath = try container.decodeIfPresent(URL.self, forKey: .backdropPath)
        self.budget = try container.decodeIfPresent(Double.self, forKey: .budget)
        self.revenue = try container.decodeIfPresent(Double.self, forKey: .revenue)

        // Need to deal with empty strings - URL decoding will fail with an empty string
        let homepageURLString = try container.decodeIfPresent(String.self, forKey: .homepageURL)
        self.homepageURL = try {
            guard let homepageURLString, !homepageURLString.isEmpty else {
                return nil
            }

            return try container2.decodeIfPresent(URL.self, forKey: .homepageURL)
        }()

        self.imdbID = try container.decodeIfPresent(String.self, forKey: .imdbID)
        self.status = try container.decodeIfPresent(Status.self, forKey: .status)
        self.productionCompanies = try container.decodeIfPresent(
            [ProductionCompany].self, forKey: .productionCompanies
        )
        self.productionCountries = try container.decodeIfPresent(
            [ProductionCountry].self, forKey: .productionCountries
        )
        self.spokenLanguages = try container.decodeIfPresent(
            [SpokenLanguage].self, forKey: .spokenLanguages
        )
        self.popularity = try container.decodeIfPresent(Double.self, forKey: .popularity)
        self.voteAverage = try container.decodeIfPresent(Double.self, forKey: .voteAverage)
        self.voteCount = try container.decodeIfPresent(Int.self, forKey: .voteCount)
        self.hasVideo = try container.decodeIfPresent(Bool.self, forKey: .hasVideo)
        self.isAdultOnly = try container.decodeIfPresent(Bool.self, forKey: .isAdultOnly)

        self.character = try container.decodeIfPresent(String.self, forKey: .character)
        self.job = try container.decodeIfPresent(String.self, forKey: .job)
				self.department = try container.decodeIfPresent(String.self, forKey: .department)
        self.order = try container.decodeIfPresent(Int.self, forKey: .order)
        self.creditID = try container.decodeIfPresent(String.self, forKey: .creditID)
    }
}
