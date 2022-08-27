
import UIKit

class AddBookVC: UIViewController {

    @IBOutlet weak var addTitle: UITextField!
    @IBOutlet weak var addAuthor: UITextField!
    @IBOutlet weak var addPrice: UITextField!
    @IBOutlet weak var addImage: UIImageView!
    @IBOutlet weak var addImageOutlet: UIButton!
    @IBOutlet weak var addDescription: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
    
    var titleAdd:String?
    var authorAdd:String?
    var priceAdd:String?
    var imageAdd:UIImage?
    var descriptionAdd:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // press add image button
    @IBAction func addImageButton(_ sender: Any) {
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        vc.delegate = self
        vc.allowsEditing = true
        present(vc, animated: true)
        addImageOutlet.setTitle("", for: .normal)
    }
    
    @IBAction func sumbitDetial(_ sender: Any) {
        titleAdd = addTitle.text
        authorAdd = addAuthor.text
        priceAdd = addPrice.text
        let price = Double(priceAdd!)
        descriptionAdd = addDescription.text
        
        if titleAdd != "" && authorAdd != "" && price != nil && imageAdd != nil {
            bookList.append(Book(title: titleAdd!, author: authorAdd!, price: price!, image: imageAdd!, description: descriptionAdd!))
            messageLabel.textColor = .green
            messageLabel.text = "The Book Has Been Successfully Added ✅"
            _ = navigationController?.popViewController(animated: true)
        }else{
            messageLabel.textColor = .red
            messageLabel.text = "The Book Was Not Added Successfully ❌"
        }
    }
}
// add image
extension AddBookVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage{
            addImage.image = image
            imageAdd = image
        }
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
}
