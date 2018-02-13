//
//  TidalData.swift
//  Tidal_Clone
//
//  Created by medhat on 2/13/18.
//  Copyright © 2018 Medhatm3bd. All rights reserved.
//

import Foundation
import IGListKit

class TidalData{
    
    func getData()->[ListDiffable]{
        
         let data = [AlbumPreviews(albumID: 11, albumImage: "ablum1"),
                Header(icon: #imageLiteral(resourceName: "tracks"), heading: "TRACKS"),
                Track(trackID: "T1", trackIcon: #imageLiteral(resourceName: "album1"), trackName: "Blash Blash", trackDetail: "Jamila - Blash Blash", trackTime: 4.15),
                Track(trackID: "T2", trackIcon: #imageLiteral(resourceName: "album2"), trackName: "Saharna Ya Leil", trackDetail: "Elissa - Fatet Snen", trackTime: 4.02),
                Track(trackID: "T3", trackIcon: #imageLiteral(resourceName: "album3"), trackName: "Elaab Yala", trackDetail: "Oka and Ortega - Elaab Yala", trackTime: 4.05),
                Track(trackID: "T4", trackIcon: #imageLiteral(resourceName: "album4"), trackName: "Hasa Bek", trackDetail: "Nancy Ajram - Hasa Bek", trackTime: 3.30),
                Track(trackID: "T5", trackIcon: #imageLiteral(resourceName: "album5"), trackName: "W Byerjoo", trackDetail: "Balqees - Khaleje", trackTime: 3.01),
                1,
                Header(icon: #imageLiteral(resourceName: "albums"), heading: "ALBUMS"),
                "Tracks",
                2
        ] as [Any]
        return data as! [ListDiffable]
    }
}
