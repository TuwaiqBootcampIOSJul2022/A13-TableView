//
//  ViewController.swift
//  LibraryBooks
//
//  Created by Anaal Albeeshi on 29/01/1444 AH.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate, UITextFieldDelegate {
    
    var arrBooks = [BooKs]()
    var filterData = [String]()
    var filter = false
    var nameSelet = ""
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchbar: UISearchBar!
    @IBOutlet weak var field: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        field.delegate = self
        // Do any additional setup after loading the view.
        
        //
        
       // let book1 = Book.init(title: "Learn Swift", author: "Ali", readingAge: 12, pageCount: 1000)
        
        arrBooks.append(BooKs.init(title: "Keeper Of The Lost Cities Collection Books 1-5: Keeper Of The Lost Cities; Exile; Everblaze; Neverseen; Lodestar ", price: 183.00, author: "Shannon Messenger", photo: UIImage(named: "b2")!, readingAge: 8, pageCount: 3136))
        
        
        arrBooks.append(BooKs.init(title: "A Game Of Thrones: The Story Continues: The Complete Boxset Of All 7 Books", price: 298.00, author: "George R.R.Martin ", photo: UIImage(named: "b1")!, readingAge: 20, pageCount: 5264))
        
        
        arrBooks.append(BooKs.init(title: "Peppa Pig", price: 23.00, author: "gggg", photo: UIImage(named: "b8")!, readingAge: 8, pageCount: 60))
        //
        arrBooks.append(BooKs.init(title: "شخص مريخي", price: 12.00, author: "gggg", photo: UIImage(named: "b4")!, readingAge: 12, pageCount: 100))
        
        
        arrBooks.append(BooKs.init(title: "Moana Little Golden Book (Disney Moana)", price: 27.00, author: "Laura Hitchcock", photo: UIImage(named: "b10")!, readingAge: 10, pageCount: 24))
        
        //
        arrBooks.append(BooKs.init(title: "Harry Potter And The Sorcerer'S Stone: Minalima Edition (Harry Potter, Book 1) ", price: 145.00, author: " K Rowling", photo: UIImage(named: "b3")!, readingAge: 10, pageCount: 368))
        
        //
        arrBooks.append(BooKs.init(title: "موعد مع الجريمة", price: 53.00, author: " دين كونتز", photo: UIImage(named: "b5")!, readingAge: 18, pageCount: 424))
        
       //
        arrBooks.append(BooKs.init(title: "A Knight of the Seven Kingdoms", price: 128.00, author: "George R R Martin", photo: UIImage(named: "b6")!, readingAge: 18, pageCount: 368))
        
        //
        arrBooks.append(BooKs.init(title: "A Game of Thrones Leather-Cloth Boxed Set", price: 23.0, author: "George R R Martin", photo: UIImage(named: "b7")!, readingAge: 34, pageCount: 5280))
       //
        arrBooks.append(BooKs.init(title: "Civil War: A Novel of the Marvel Universe: 2", price: 299, author: "Stuart Moore", photo: UIImage(named: "b9")!, readingAge: 20, pageCount: 5280))
                        
    }
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        if let text = textField.text
//        {
//            filterText(text + string)
//        }
//        return true
//    }
//    
//    
//    func filterText(_ query: String){
//        filterData.removeAll()
//        for string in arrBooks[title] {
//            if string.lowercased()(with: query.lowercased())
//            {
//                filterData.append(string)
//            }
//        }
//        tableView.reloadData()
//        filter = true
//    }
//    


func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    if !filterData.isEmpty{
        return filterData.count
    }
    return filter ? 0: arrBooks.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! BooksCell // هذ الكلاس المربوط بالخلية
    
    if !filterData.isEmpty{
        cell.textLabel?.text = filterData[indexPath.row]
    }
//    else{
//        cell.textLabel?.text = data.title[indexPath.row]
//    }
    

    let data = arrBooks[indexPath.row]
    cell.setupCell(photo: data.photo,
                   titiel_name: data.title,
                   price_1: data.price,
                   author_1: data.author,
                   Age: data.readingAge,
                   page: data.pageCount)
    
    
    // عشان button  يكون عليه اكشين ، و tag عشان اعرف علي اي button  يتم الضغط عليه
    cell.buttonL.tag = indexPath.row
    cell.buttonL.addTarget(self, action: #selector(addToFavorite(sender:)), for: .touchUpInside)
    return cell
}
// لتعديل طول ال cell

func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 130
}
func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
    print("cell index: \(indexPath.row)")
    if let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController_2") as? ViewController_2 {
        vc.immg = UIImage(named: arrBooks.photo[indexPath.row])!
        vc.user1 = arrBooks[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
        
        
        
        
        // nameSelet = photo[indexPath.row]
       // cell.immg = UIImage(named: photo)!
        //cell.user1 = arrBooks[indexPath.row]
       
    }
}

@objc
func addToFavorite(sender: UIButton){
    print("button index = \(sender.tag)")
    //  وضع البوتين بعد الضغط عليه ولكن اسم الصورة الموجودة ع البوتيبن مختلف
    sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
  }
    
    
//    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String){
//        searchBooks = arrBooks.filter({$0.prefix(searchText.count) == searchText})
//        searching = true
//        tableView.reloadData()
//        
//    }
}


// struct
struct BooKs{
var title: String
var price: Double
var author: String
var photo: UIImage
var readingAge: Int
var pageCount: Int
}


