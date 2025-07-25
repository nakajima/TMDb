//
//  FacebookLinkTests.swift
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
struct FacebookLinkTests {

    @Test("Init with Facebook ID when ID is nil returns nil")
    func initWithFacebookIDWhenIDIsNilReturnsNil() {
        let facebookLink = FacebookLink(facebookID: nil)

        #expect(facebookLink == nil)
    }

    @Test("Init with Facebook ID when ID is empty string returns nil")
    func initWithFacebookIDWhenIDIsEmptyStringReturnsNil() {
        let facebookLink = FacebookLink(facebookID: "")

        #expect(facebookLink == nil)
    }

    @Test("Facebook URL")
    func testURL() throws {
        let facebookID = "BarbieTheMovie"
        let expectedURL = try #require(URL(string: "https://www.facebook.com/\(facebookID)"))

        let facebookLink = try #require(FacebookLink(facebookID: facebookID))

        #expect(facebookLink.url == expectedURL)
    }

}
