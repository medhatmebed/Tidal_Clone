//
//  ButtonSectionController.swift
//  Tidal_Clone
//
//  Created by medhat on 2/13/18.
//  Copyright © 2018 Medhatm3bd. All rights reserved.
//

import UIKit
import IGListKit

class ButtonSectionController: ListSectionController {
    var name: String?
    
    override init(){
        super.init()
        inset = UIEdgeInsets(top: 0, left: 0, bottom: 6, right: 0)
    }
    override func sizeForItem(at index: Int) -> CGSize {
        return CGSize(width: collectionContext!.containerSize.width, height: 60)
    }
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        guard let cell = collectionContext?.dequeueReusableCell(withNibName: "ButtonViewCell", bundle: nil, for: self, at: index) as? ButtonViewCell else { fatalError() }
        
        return cell
    }
    
    override func didUpdate(to object: Any) {
        self.name = String(describing: object)
    }
}
