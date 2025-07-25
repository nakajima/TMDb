//
//  HTTPMockClient.swift
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

@MainActor
final class HTTPMockClient: HTTPClient {

    var result: Result<HTTPResponse, Error>?
    private(set) var lastRequest: HTTPRequest?
    private(set) var performCount = 0

    init() {}

    func perform(request: HTTPRequest) async throws -> HTTPResponse {
        lastRequest = request
        performCount += 1

        guard let result else {
            preconditionFailure("Result not set.")
        }

        return try result.get()
    }

}
