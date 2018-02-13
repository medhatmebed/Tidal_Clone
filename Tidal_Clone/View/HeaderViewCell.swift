//
//  HeaderViewCell.swift
//  Tidal_Clone
//
//  Created by medhat on 2/13/18.
//  Copyright © 2018 Medhatm3bd. All rights reserved.
//

import UIKit

class HeaderViewCell: UICollectionViewCell {

    @IBOutlet weak var headerLabel: UILabel!

    @IBOutlet weak var headerIcon: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = UIColor(red:0.16, green:0.16, blue:0.16, alpha:1.0)
    }
}
