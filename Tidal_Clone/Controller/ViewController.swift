//
//  ViewController.swift
//  Tidal_Clone
//
//  Created by medhat on 2/13/18.
//  Copyright © 2018 Medhatm3bd. All rights reserved.
//

import UIKit
import IGListKit

class ViewController: UIViewController, ListAdapterDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let tidalData = TidalData()
    var data: [Any] = []
    lazy var adapter: ListAdapter = {
        return ListAdapter(updater: ListAdapterUpdater(), viewController: self)
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHeader()
        data = tidalData.getData()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        adapter.collectionView = collectionView
        adapter.dataSource = self
    }
    
    func setupHeader(){
        let bounds = navigationController?.navigationBar.bounds
        let headerLabel = UILabel(frame: CGRect(x: 0, y: 0, width: (bounds?.width)!, height: (bounds?.height)!))
        
        headerLabel.text = "What's New"
        headerLabel.textColor = .white
        headerLabel.font = headerLabel.font.withSize(20)
        navigationItem.titleView = headerLabel
        
    }
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return data as! [ListDiffable]
    }
    
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        switch object{
        case is Header:
            return HeaderSectionController()
        case is Track:
            return TrackSectionController()
        case is AlbumPreviews:
            return AlbumPreviewSectionController()
        case is String:
            return AlbumSectionController()
        default:
            return ButtonSectionController()
        }
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
    
}

