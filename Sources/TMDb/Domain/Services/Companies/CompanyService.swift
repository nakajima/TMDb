//
//  CompanyService.swift
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
/// Provides an interface for obtaining company data from TMDb.
///
@available(macOS 13.0, iOS 16.0, watchOS 9.0, tvOS 16.0, *)
public protocol CompanyService: Sendable {

    ///
    /// Returns a company's details
    ///
    /// [TMDb API - Companies: Details](https://developer.themoviedb.org/reference/company-details)
    ///
    /// - Parameter id: The identifier of the company.
    ///
    /// - Throws: TMDb error ``TMDbError``.
    ///
    /// - Returns: Matching company.
    ///
    func details(forCompany id: Company.ID) async throws -> Company

}
