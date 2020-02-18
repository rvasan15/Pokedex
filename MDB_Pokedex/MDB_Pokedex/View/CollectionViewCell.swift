//
//  CollectionViewCell.swift
//  MDB_Pokedex
//
//  Created by Rini Vasan on 2/12/20.
//  Copyright © 2020 Rini Vasan. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var pokemonImage: UIImageView!
    
    @IBOutlet weak var pokemonName: UILabel!
    
    @IBOutlet weak var pokemonID: UILabel!
    
    @IBOutlet weak var gridViewConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}


//TABVIEW CONTROLLER DELEGATE
//RELOAD DATA WHEN SWITCHING TABS TO TAB 1
