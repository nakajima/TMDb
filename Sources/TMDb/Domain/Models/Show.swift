//
//  Show.swift
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
/// A model representing a show - movie or TV series.
///
public enum Show: Identifiable, Codable, Equatable, Hashable, Sendable {

    ///
    /// Show identifier.
    ///
    public var id: Int {
        switch self {
        case .movie(let movie):
            movie.id

        case .tvSeries(let tvSeries):
            tvSeries.id
        }
    }

    ///
    /// Show's popularity.
    ///
    var popularity: Double? {
        switch self {
        case .movie(let movie):
            movie.popularity

        case .tvSeries(let tvSeries):
            tvSeries.popularity
        }
    }

    ///
    /// Show's release or first air date.
    ///
    var date: Date? {
        switch self {
        case .movie(let movie):
            movie.releaseDate

        case .tvSeries(let tvSeries):
            tvSeries.firstAirDate
        }
    }

    ///
    /// Movie.
    ///
    case movie(MovieListItem)

    ///
    /// TV series.
    ///
    case tvSeries(TVSeriesListItem)

}

extension Show {

    private enum CodingKeys: String, CodingKey {
        case mediaType
    }

    private enum MediaType: String, Decodable, Equatable {
        case movie
        case tvSeries = "tv"
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
        let mediaType = try container.decode(MediaType.self, forKey: .mediaType)

        switch mediaType {
        case .movie:
            self = try .movie(MovieListItem(from: decoder))

        case .tvSeries:
            self = try .tvSeries(TVSeriesListItem(from: decoder))
        }
    }

    ///
    /// Encodes this value into the given encoder.
    ///
    /// If the value fails to encode anything, `encoder` will encode an empty
    /// keyed container in its place.
    ///
    /// This function throws an error if any values are invalid for the given
    /// encoder's format.
    ///
    /// - Parameter encoder: The encoder to write data to.
    ///
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    ///
    public func encode(to encoder: Encoder) throws {
        var singleContainer = encoder.singleValueContainer()

        switch self {
        case .movie(let movie):
            try singleContainer.encode(movie)

        case .tvSeries(let tvSeries):
            try singleContainer.encode(tvSeries)
        }
    }
}
