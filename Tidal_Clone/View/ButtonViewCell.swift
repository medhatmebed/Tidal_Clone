//
//  ButtonViewCell.swift
//  Tidal_Clone
//
//  Created by medhat on 2/13/18.
//  Copyright © 2018 Medhatm3bd. All rights reserved.
//

import UIKit

class ButtonViewCell: UICollectionViewCell {
    @IBOutlet weak var seeMoreButton: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        seeMoreButton.backgroundColor = UIColor(red:0.16, green:0.16, blue:0.16, alpha:1.0)
    }
    @IBAction func seeMoreAction(_ sender: Any) {
        print(seeMoreButton.tag)
    }

}
