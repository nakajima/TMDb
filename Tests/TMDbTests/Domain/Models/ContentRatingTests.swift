//
//  ContentRatingTests.swift
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
struct ContentRatingTests {

    @Test("JSON decoding of ContentRating", .tags(.decoding))
    func decodeContentRating() throws {
        let result = try JSONDecoder.theMovieDatabase.decode(
            ContentRating.self, fromResource: "content-rating")

        #expect(result.descriptors == contentRating.descriptors)
        #expect(result.countryCode == contentRating.countryCode)
        #expect(result.rating == contentRating.rating)
    }

    private let contentRating = ContentRating(
        descriptors: [],
        countryCode: "US",
        rating: "TV-14"
    )

}
