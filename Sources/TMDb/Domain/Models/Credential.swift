//
//  Credential.swift
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
/// A model representing a user's TMDb username and password.
///
public struct Credential: Sendable {

    ///
    /// User's username.
    ///
    public let username: String

    ///
    /// User's password.
    ///
    public let password: String

    ///
    /// Creates a user credential object.
    ///
    /// - Parameters:
    ///   - username: User's username.
    ///   - password: User's password.
    ///
    public init(username: String, password: String) {
        self.username = username
        self.password = password
    }

}
