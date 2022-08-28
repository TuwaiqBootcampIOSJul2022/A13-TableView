
import UIKit

class ViewController1: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var TitleBook: UILabel!
    @IBOutlet var BookAuthor: UILabel!
    @IBOutlet var BookPrice: UILabel!
    
    var sendImage:UIImage?
    var sendTitleBook:String?
    var sendBookAuthor:String?
    var sendBookPrice:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = sendImage
        TitleBook.text = "The title of the book: \(sendTitleBook!)"
        BookAuthor.text = "Book Author: \(sendBookAuthor!)"
        BookPrice.text = "Book Price:  \(sendBookPrice!) $"
    }
}
