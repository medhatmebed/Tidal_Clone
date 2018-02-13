//
//  Header.swift
//  Tidal_Clone
//
//  Created by medhat on 2/13/18.
//  Copyright © 2018 Medhatm3bd. All rights reserved.
//

import Foundation
import IGListKit

class Header: ListDiffable{
    let icon: UIImage
    let heading: String!
    
    init(icon: UIImage, heading: String){
        self.icon = icon
        self.heading = heading
    }
    func diffIdentifier() -> NSObjectProtocol {
        return heading as NSObjectProtocol
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        guard self !== object else { return true }
        guard let object = object as? Header else { return false }
        return heading == object.heading
    }
}

