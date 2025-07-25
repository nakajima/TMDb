//
//  Company+Mocks.swift
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
import TMDb

extension Company {

    // swift-format-ignore: NeverForceUnwrap
    static func mock(
        id: Int = 1,
        name: String = "Lucasfilm Ltd.",
        description: String = "Some description",
        headquarters: String = "San Francisco, California",
        homepageURL: URL? = URL(string: "https://www.lucasfilm.com"),
        logoPath: URL = URL(string: "/o86DbpburjxrqAzEDhXZcyE8pDb.png")!,
        originCountry: String = "US",
        parentCompany: Company.Parent? = nil
    ) -> Company {
        Company(
            id: id,
            name: name,
            description: description,
            headquarters: headquarters,
            homepageURL: homepageURL,
            logoPath: logoPath,
            originCountry: originCountry,
            parentCompany: parentCompany
        )
    }

    // swift-format-ignore: NeverForceUnwrap
    static var lucasfilm: Company {
        Company.mock(
            id: 1,
            name: "Lucasfilm Ltd.",
            description: "Some description",
            headquarters: "San Francisco, California",
            homepageURL: URL(string: "https://www.lucasfilm.com"),
            logoPath: URL(string: "/o86DbpburjxrqAzEDhXZcyE8pDb.png")!,
            originCountry: "US"
        )
    }

}
