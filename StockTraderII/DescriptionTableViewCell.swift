//
//  DescriptionTableViewCell.swift
//  StockTraderII
//
//  Created by Francisco on 22/05/2018.
//  Copyright © 2018 Francisco Ruiz. All rights reserved.
//

import UIKit

class DescriptionTableViewCell: UITableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBOutlet weak var chartImageView: UIImageView!
    
    @IBOutlet weak var descriptionTextView: UITextView!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
