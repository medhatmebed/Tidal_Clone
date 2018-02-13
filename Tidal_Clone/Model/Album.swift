//
//  Album.swift
//  Tidal_Clone
//
//  Created by medhat on 2/13/18.
//  Copyright © 2018 Medhatm3bd. All rights reserved.
//

import Foundation
import IGListKit

final class Album: NSObject{
    let albumID: Int!
    var albumImage: UIImage
    var title: String
    var artist: String
    
    init(albumID: Int, albumImage: UIImage, title: String, artist: String){
        self.albumID = albumID
        self.albumImage = albumImage
        self.title = title
        self.artist = artist
    }
    
}
extension Album: ListDiffable{
    
    func diffIdentifier() -> NSObjectProtocol {
        return self
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        return self === object ? true : self.isEqual(object)
    }
}

