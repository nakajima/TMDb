//
//  ProductionCompany.swift
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
/// A model representing a production company.
///
public struct ProductionCompany: Identifiable, Codable, Equatable, Hashable, Sendable {

    ///
    /// Company identifier.
    ///
    public let id: Company.ID

    ///
    /// Company's name.
    ///
    public let name: String

    ///
    /// Company's country of origin.
    ///
    public let originCountry: String

    ///
    /// Company's logo path.
    ///
    /// To generate a full URL see <doc:/TMDb/GeneratingImageURLs>.
    ///
    public let logoPath: URL?

    ///
    /// Creates a production company object.
    ///
    /// - Parameters:
    ///    - id: Company identifier.
    ///    - name: Company's country of origin.
    ///    - originCountry: Company's country of origin.
    ///    - logoPath: Company's logo path.
    ///
    public init(
        id: Int, name: String,
        originCountry: String,
        logoPath: URL? = nil
    ) {
        self.id = id
        self.name = name
        self.originCountry = originCountry
        self.logoPath = logoPath
    }

}
