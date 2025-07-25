//
//  Token.swift
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

///
/// A model representing an internediate request token.
///
public struct Token: Codable, Equatable, Hashable, Sendable {

    ///
    /// Was token creation successful.
    ///
    public let success: Bool

    ///
    /// An intermediate request token.
    ///
    public let requestToken: String

    ///
    /// Date of token expiry.
    ///
    public let expiresAt: Date

    ///
    /// Creates an internediate request token object.
    ///
    /// - Parameters:
    ///   - success: Was token creation successful.
    ///   - requestToken: An intermediate request token.
    ///   - expiresAt: Date of token expiry.
    ///
    public init(success: Bool, requestToken: String, expiresAt: Date) {
        self.success = success
        self.requestToken = requestToken
        self.expiresAt = expiresAt
    }

}
