//
//  VideoMetadata+Mocks.swift
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

extension VideoMetadata {

    static func mock(
        id: String = "1",
        name: String = "Video name",
        site: String = "YouTube",
        key: String = "abc123",
        type: VideoType = .trailer,
        size: VideoSize = .s1080
    ) -> VideoMetadata {
        VideoMetadata(
            id: id,
            name: name,
            site: site,
            key: key,
            type: type,
            size: size
        )
    }

}

extension [VideoMetadata] {

    static var mocks: [Element] {
        [.mock(), .mock(), .mock()]
    }

}
