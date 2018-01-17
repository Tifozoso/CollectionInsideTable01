//
//  MainTableViewCell.swift
//  CollectionInsideTable01
//
//  Created by Michael Franks on 1/16/18.
//  Copyright © 2018 Michael Franks. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    @IBOutlet weak var clCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension MainTableViewCell {
    
    func setCollectionViewDataSourceDelegate
        <D: UICollectionViewDelegate & UICollectionViewDataSource>
        (_ dataSourceDelegate: D, forRow:Int)
    {
        clCollectionView.delegate = dataSourceDelegate
        clCollectionView.dataSource = dataSourceDelegate
        
        clCollectionView.reloadData()
    }
    
}
