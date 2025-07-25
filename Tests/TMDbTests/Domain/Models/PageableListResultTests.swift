//
//  PageableListResultTests.swift
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
struct PageableListResultTests {

    @Test("JSON decoding of PageableListResult", .tags(.decoding))
    func decodeReturnsPageableListResult() throws {
        let result = try JSONDecoder.theMovieDatabase
            .decode(PageableListResult<SomeListItem>.self, fromResource: "pageable-list-result")

        #expect(result.page == list.page)
        #expect(result.results == list.results)
        #expect(result.totalResults == list.totalResults)
        #expect(result.totalPages == list.totalPages)
    }

    private let list = PageableListResult<SomeListItem>(
        page: 1,
        results: [
            SomeListItem(id: 1),
            SomeListItem(id: 2),
            SomeListItem(id: 3),
            SomeListItem(id: 4)
        ],
        totalResults: 4,
        totalPages: 1
    )

}

private struct SomeListItem: Identifiable, Codable, Equatable, Hashable {

    let id: Int

}
