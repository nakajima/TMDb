//
//  TVSeriesReviewsRequestTests.swift
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

@Suite(.tags(.requests, .tvSeries))
struct TVSeriesReviewsRequestTests {

    @Test("path is correct")
    func path() {
        let request = TVSeriesReviewsRequest(id: 1)

        #expect(request.path == "/tv/1/reviews")
    }

    @Test("queryItems is empty")
    func queryItemsIsEmpty() {
        let request = TVSeriesReviewsRequest(id: 1)

        #expect(request.queryItems.isEmpty)
    }

    @Test("queryItems with page")
    func queryItemsWithPage() {
        let request = TVSeriesReviewsRequest(id: 1, page: 3)

        #expect(request.queryItems == ["page": "3"])
    }

    @Test("queryItems with language")
    func queryItemsWithLanguage() {
        let request = TVSeriesReviewsRequest(id: 1, language: "en")

        #expect(request.queryItems == ["language": "en"])
    }

    @Test("queryItems with page and language")
    func queryItemsWithPageAndLanguage() {
        let request = TVSeriesReviewsRequest(id: 1, page: 2, language: "en")

        #expect(request.queryItems == ["page": "2", "language": "en"])
    }

    @Test("method is GET")
    func methodIsGet() {
        let request = TVSeriesReviewsRequest(id: 1)

        #expect(request.method == .get)
    }

    @Test("headers is empty")
    func headersIsEmpty() {
        let request = TVSeriesReviewsRequest(id: 1)

        #expect(request.headers.isEmpty)
    }

    @Test("body is nil")
    func bodyIsNil() {
        let request = TVSeriesReviewsRequest(id: 1)

        #expect(request.body == nil)
    }

}
