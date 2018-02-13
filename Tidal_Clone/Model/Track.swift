//
//  Track.swift
//  Tidal_Clone
//
//  Created by medhat on 2/13/18.
//  Copyright © 2018 Medhatm3bd. All rights reserved.
//

import Foundation
import IGListKit

class Track: ListDiffable{
    let trackID: String
    let trackIcon: UIImage
    let trackName: String
    let trackDetail: String
    let trackTime: Double
    
    init(trackID: String, trackIcon: UIImage, trackName: String, trackDetail: String, trackTime: Double ){
        self.trackID = trackID
        self.trackIcon = trackIcon
        self.trackName = trackName
        self.trackDetail = trackDetail
        self.trackTime = trackTime
    }
    // MARK: ListDiffable
    
    func diffIdentifier() -> NSObjectProtocol {
        return trackID as NSObjectProtocol
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        guard self !== object else { return true }
        guard let object = object as? Track else { return false }
        return trackID == object.trackID
    }
}
