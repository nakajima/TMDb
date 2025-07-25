//
//  WatchProvidersForMoviesRequestTests.swift
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

@Suite(.tags(.requests, .watchProvider))
struct WatchProvidersForMoviesRequestTests {

    @Test("path is correct")
    func path() {
        let request = WatchProvidersForMoviesRequest()

        #expect(request.path == "/watch/providers/movie")
    }

    @Test("queryItems is empty")
    func queryItemsIsEmpty() {
        let request = WatchProvidersForMoviesRequest()

        #expect(request.queryItems.isEmpty)
    }

    @Test("queryItems with country")
    func queryItemsWithCountry() {
        let request = WatchProvidersForMoviesRequest(country: "GB")

        #expect(request.queryItems == ["watch_region": "GB"])
    }

    @Test("queryItems with language")
    func queryItemsWithLanguage() {
        let request = WatchProvidersForMoviesRequest(language: "en")

        #expect(request.queryItems == ["language": "en"])
    }

    @Test("queryItems with country and language")
    func queryItemsWithCountryAndLanguage() {
        let request = WatchProvidersForMoviesRequest(country: "GB", language: "en")

        #expect(request.queryItems == ["watch_region": "GB", "language": "en"])
    }

    @Test("method is GET")
    func methodIsGet() {
        let request = WatchProvidersForMoviesRequest()

        #expect(request.method == .get)
    }

    @Test("headers is empty")
    func headersIsEmpty() {
        let request = WatchProvidersForMoviesRequest()

        #expect(request.headers.isEmpty)
    }

    @Test("body is nil")
    func bodyIsNil() {
        let request = WatchProvidersForMoviesRequest()

        #expect(request.body == nil)
    }

}
