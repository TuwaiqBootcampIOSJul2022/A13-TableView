//
//  cellTableViewCell.swift
//  library
//
//  Created by Farah Alyousef on 29/01/1444 AH.
//

import UIKit

class cellTableViewCell: UITableViewCell {
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
