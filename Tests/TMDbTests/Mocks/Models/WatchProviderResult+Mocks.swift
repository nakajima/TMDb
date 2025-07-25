//
//  WatchProviderResult+Mocks.swift
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

extension WatchProviderResult {

    static var mock: Self {
        .init(
            results: [
                .init(
                    id: 8, name: "Netflix",
                    logoPath: URL(string: "/t2yyOv40HZeVlLjYsCsPHnWLk4W.jpg")
                ),
                .init(
                    id: 9, name: "Amazon Prime Video",
                    logoPath: URL(string: "/emthp39XA2YScoYL1p0sdbAH2WA.jpg")
                )
            ]
        )
    }

}
