//
//  TableViewCell.swift
//  Collection_in_tableview
//
//  Created by iroid on 21/04/21.
//  Copyright © 2021 iroid. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    let fruits = ["apple","bery","srawberry","banana"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let ccell = collectionView.dequeueReusableCell(withReuseIdentifier: "collection", for: indexPath) as! CollectionViewCell
        ccell.cimg.image = UIImage(named:fruits[indexPath.item])!
        ccell.backgroundColor = UIColor.blue
        return ccell
    }
    
    @IBOutlet var collonview: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.collonview.dataSource = self as UICollectionViewDataSource
        self.collonview.delegate = self as UICollectionViewDelegate
        self.collonview.reloadData()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
