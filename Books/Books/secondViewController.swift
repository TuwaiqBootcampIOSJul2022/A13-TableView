//
//  secondViewController.swift
//  Books
//
//  Created by Faisal Almutairi on 28/01/1444 AH.
//

import UIKit

class secondViewController: UIViewController {
    
    var item = ""
    var titleItem = ""
    var priceItem = ""
    var authorItem = ""
    @IBOutlet weak var secondBookTitle: UILabel!
    @IBOutlet weak var secondBookImage: UIImageView!
    @IBOutlet weak var secondBookPrice: UILabel!
    @IBOutlet weak var secondBookAuthor: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        secondBookImage.image = UIImage(named: item)
        secondBookTitle.text = "Title : \(titleItem)"
        secondBookPrice.text = "Price : \(priceItem) SAR"
        secondBookAuthor.text = "Author : \(authorItem)"

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
