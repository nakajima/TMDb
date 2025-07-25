//
//  Country.swift
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
/// A model representing a country.
///
public struct Country: Identifiable, Codable, Equatable, Hashable, Sendable {

    ///
    /// Country's identifier (same as `countryCode`).
    ///
    public var id: String { countryCode }

    ///
    /// The ISO 3166-1 country code.
    ///
    public let countryCode: String

    ///
    /// Country name.
    ///
    public let name: String

    ///
    /// Country name in English.
    ///
    public let englishName: String

    /// Creates a country object.
    ///
    /// - Parameters:
    ///    - countryCode: ISO 3166-1 country code.
    ///    - name: Country name.
    ///    - englishName: Country name in English.
    ///
    public init(countryCode: String, name: String, englishName: String) {
        self.countryCode = countryCode
        self.name = name
        self.englishName = englishName
    }

}

extension Country {

    private enum CodingKeys: String, CodingKey {
        case countryCode = "iso31661"
        case name = "nativeName"
        case englishName
    }

}
