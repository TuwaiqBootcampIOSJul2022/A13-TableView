//
//  HomeableViewCell.swift
//  BooksApp
//
//  Created by Hessa on 27/01/1444 AH.
//

import UIKit

class HomeableViewCell: UITableViewCell {

    @IBOutlet weak var imagebook: UIImageView!
    
    @IBOutlet weak var titel: UILabel!
    
    @IBOutlet weak var price: UILabel!
    
    @IBOutlet weak var Author: UILabel!
    
    func setupcell(photo: UIImage, titl: String, prc: Double,Auth:String){
        imagebook.image = photo
        titel.text = titl
        price.text = "\(prc) $"
        Author.text = Auth
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
