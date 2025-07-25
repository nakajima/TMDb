//
//  PersonExternalLinksCollection+Mocks.swift
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

extension PersonExternalLinksCollection {

    static func mock(
        id: Person.ID,
        imdb: IMDbLink? = nil,
        wikiData: WikiDataLink? = nil,
        facebook: FacebookLink? = nil,
        instagram: InstagramLink? = nil,
        twitter: TwitterLink? = nil,
        tikTok: TikTokLink? = nil
    ) -> PersonExternalLinksCollection {
        PersonExternalLinksCollection(
            id: id,
            imdb: imdb,
            wikiData: wikiData,
            facebook: facebook,
            instagram: instagram,
            twitter: twitter,
            tikTok: tikTok
        )
    }

    static var sydneySweeney: PersonExternalLinksCollection {
        .mock(
            id: 346_698,
            imdb: IMDbLink(imdbNameID: "nm2858875"),
            wikiData: WikiDataLink(wikiDataID: "Q49561909"),
            facebook: FacebookLink(facebookID: "sydney_sweeney"),
            instagram: InstagramLink(instagramID: "sydney_sweeney"),
            twitter: TwitterLink(twitterID: "sydney_sweeney"),
            tikTok: TikTokLink(tikTokID: "syds_garage")
        )
    }

}
