//
//  AuthenticateURLMockBuilder.swift
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

@testable import TMDb

final class AuthenticateURLMockBuilder: AuthenticateURLBuilding, @unchecked Sendable {

    var authenticateURLResult: URL
    private(set) var lastRequestToken: String?
    private(set) var lastRedirectURL: URL?

    init() {
        self.authenticateURLResult = {
            guard let url = URL(string: "https://some.domain.com/authenticate") else {
                fatalError()
            }

            return url
        }()
    }

    func authenticateURL(with requestToken: String) -> URL {
        authenticateURL(with: requestToken, redirectURL: nil)
    }

    func authenticateURL(with requestToken: String, redirectURL: URL?) -> URL {
        lastRequestToken = requestToken
        lastRedirectURL = redirectURL

        return authenticateURLResult
    }

}
