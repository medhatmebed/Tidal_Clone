//
//  AlbumSectionController.swift
//  Tidal_Clone
//
//  Created by medhat on 2/13/18.
//  Copyright © 2018 Medhatm3bd. All rights reserved.
//

import UIKit
import IGListKit

class AlbumSectionController: ListSectionController {
    
    let albumItem = AlbumsData().albums
    
    override init(){
        super.init()
        inset = UIEdgeInsets(top: 0, left: 0, bottom: 0.3, right: 0)
    }
    override func sizeForItem(at index: Int) -> CGSize {
        return CGSize(width: collectionContext!.containerSize.width/2, height: 262)
    }
    override func numberOfItems() -> Int {
        return albumItem.count
    }
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        guard let cell = collectionContext?.dequeueReusableCell(withNibName: "AlbumViewCell", bundle: nil, for: self, at: index) as? AlbumViewCell else { fatalError() }
        
        cell.albumImage.image = albumItem[index].albumImage
        cell.albumTitle.text = albumItem[index].title
        cell.artistName.text = albumItem[index].artist
        
        return cell
    }
    
}
