//
//  TMDbCompanyServiceTests.swift
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

@Suite(.tags(.services, .company))
struct TMDbCompanyServiceTests {

    var service: TMDbCompanyService!
    var apiClient: MockAPIClient!

    init() {
        self.apiClient = MockAPIClient()
        self.service = TMDbCompanyService(apiClient: apiClient)
    }

    @Test("details returns company")
    func detailsReturnsCompany() async throws {
        let expectedResult = Company.lucasfilm
        let companyID = expectedResult.id
        let expectedRequest = CompanyDetailsRequest(id: companyID)

        apiClient.addResponse(.success(expectedResult))

        let result = try await service.details(forCompany: companyID)

        #expect(result == expectedResult)
        #expect(apiClient.lastRequest as? CompanyDetailsRequest == expectedRequest)
    }

    @Test("details when errors throws error")
    func detailsWhenErrorsThrowsError() async throws {
        let companyID = 1
        apiClient.addResponse(.failure(.unknown))

        await #expect(throws: TMDbError.unknown) {
            _ = try await service.details(forCompany: companyID)
        }
    }

}
