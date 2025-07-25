//
//  TikTokLinkTests.swift
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
struct TikTokLinkTests {

    @Test("init with TikTok ID when ID is nil returns nil")
    func initWithTikTokIDWhenIDIsNilReturnsNil() {
        let tikTokLink = TikTokLink(tikTokID: nil)

        #expect(tikTokLink == nil)
    }

    @Test("init with TikTok ID when ID is empty string returns nil")
    func initWithTikTokIDWhenIDIsEmptyStringReturnsNil() {
        let tikTokLink = TikTokLink(tikTokID: "")

        #expect(tikTokLink == nil)
    }

    @Test("url returns TikTok URL")
    func urlReturnsTikTokURL() throws {
        let tikTokID = "jasonstatham"
        let expectedURL = try #require(URL(string: "https://www.tiktok.com/@\(tikTokID)"))

        let tikTokLink = try #require(TikTokLink(tikTokID: tikTokID))

        #expect(tikTokLink.url == expectedURL)
    }

}
