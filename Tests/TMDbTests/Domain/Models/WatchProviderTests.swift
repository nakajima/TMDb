//
//  WatchProviderTests.swift
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
struct WatchProviderTests {

    @Test("JSON decoding of WatchProvider", .tags(.decoding))
    func decodeReturnsWatchProvider() throws {
        let watchProvider = WatchProvider(
            id: 8,
            name: "Netflix",
            logoPath: URL(string: "/t2yyOv40HZeVlLjYsCsPHnWLk4W.jpg")
        )

        let result = try JSONDecoder.theMovieDatabase.decode(
            WatchProvider.self, fromResource: "watch-provider")

        #expect(result == watchProvider)
    }

}
