//
//  AlbumPreviews.swift
//  Tidal_Clone
//
//  Created by medhat on 2/13/18.
//  Copyright © 2018 Medhatm3bd. All rights reserved.
//

import Foundation
import IGListKit

class AlbumPreviews: ListDiffable{
    let albumID: Int
    let albumImage: String
    
    init(albumID: Int, albumImage: String){
        self.albumID = albumID
        self.albumImage = albumImage
    }
    func diffIdentifier() -> NSObjectProtocol{
        return albumID as NSObjectProtocol
    }
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool{
        guard self !== object else { return true }
        guard let object = object as? AlbumPreviews else { return false }
        return albumID == object.albumID
    }
    
}
