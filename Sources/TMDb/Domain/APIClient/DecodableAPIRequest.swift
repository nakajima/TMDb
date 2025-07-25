//
//  DecodableAPIRequest.swift
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

class DecodableAPIRequest<Response: Decodable>: CodableAPIRequest<EmptyBody, Response> {

    init(
        id: UUID = UUID(),
        path: String,
        queryItems: APIRequestQueryItems = [:],
        method: APIRequestMethod = .get,
        headers: [String: String] = [:]
    ) {
        super.init(
            id: id,
            path: path,
            queryItems: queryItems,
            method: method,
            body: nil,
            headers: headers
        )
    }

}

struct EmptyBody: Encodable, Equatable {}
