

import UIKit

class bookDetailsController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var bookTitle: UILabel!
    
    @IBOutlet weak var bookAuthor: UILabel!
    @IBOutlet weak var bookPrice: UILabel!
    var book : BookModel?
    override func viewDidLoad() {
        super.viewDidLoad()

        if book != nil
        {
            imageView.image = UIImage(named: book!.bookPicName)
            bookTitle.text = book!.bookTitle
            bookAuthor.text = book!.bookAuthor
            bookPrice.text = String(book!.bookPrice)
            
        }
    }
    

  

}
