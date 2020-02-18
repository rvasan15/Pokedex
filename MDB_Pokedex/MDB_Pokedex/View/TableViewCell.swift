//
//  TableViewCell.swift
//  MDB_Pokedex
//
//  Created by Rini Vasan on 2/12/20.
//  Copyright © 2020 Rini Vasan. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var pokemonImage: UIImageView!
    
    @IBOutlet weak var pokemonName: UILabel!
    
    @IBOutlet weak var pokemonID: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
