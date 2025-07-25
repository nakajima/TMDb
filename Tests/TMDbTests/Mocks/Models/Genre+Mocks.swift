//
//  Genre+Mocks.swift
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

extension Genre {

    static func mock(
        id: Int = 1,
        name: String = "Action"
    ) -> Genre {
        Genre(
            id: id,
            name: name
        )
    }

    static var action: Genre {
        Genre.mock(id: 1, name: "Action")
    }

    static var drama: Genre {
        Genre.mock(id: 1, name: "Drama")
    }

    static var sciFi: Genre {
        Genre.mock(id: 3, name: "Sci-Fi")
    }

}

extension [Genre] {

    static var mocks: [Element] {
        [.action, .drama, .sciFi]
    }

}
