//
//  ViewController.swift
//  Books
//
//  Created by Faisal Almutairi on 26/01/1444 AH.
//

import UIKit

class ViewController: UIViewController {
    
    let searchController = UISearchController()
    var moveItem = ""
    var moveItem2 = ""
    var moveItem3 = ""
    var moveItem4 = ""
    var filteredBooks: [Book]!

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var bookTableView: UITableView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filteredBooks = allBooks
        bookTableView.layer.cornerRadius = 16
        bookTableView.delegate = self
        bookTableView.dataSource = self
        searchBar.delegate = self

    }
    

    @IBAction func highAndLowPrice(_ sender: UISegmentedControl) {

        let selected = sender.selectedSegmentIndex

        if selected == 0{
            filteredBooks.sort(by: { $0.price < $1.price})
            print("low")

        }else if selected == 1{
            filteredBooks.sort(by: { $0.price > $1.price})
            print("high")
        }
        bookTableView.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        moveItem = filteredBooks[indexPath.row].bookImages
        moveItem2 = filteredBooks[indexPath.row].title
        moveItem3 = "\(filteredBooks[indexPath.row].price)"
        moveItem4 = filteredBooks[indexPath.row].author
        performSegue(withIdentifier: "move", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "move"{
            if let secondView = segue.destination as? secondViewController{
                
                secondView.item = moveItem
                secondView.titleItem = moveItem2
                secondView.priceItem = moveItem3
                secondView.authorItem = moveItem4
            }
        }
    }
}



extension ViewController : UITableViewDelegate , UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return filteredBooks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let books = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! booksDetails
        
        books.bookImage.image = UIImage(named:"\(filteredBooks[indexPath.row].bookImages)")
        books.bookTitle.text = filteredBooks[indexPath.row].title
        books.bookPrice.text = "Price: \(filteredBooks[indexPath.row].price) SAR"
        books.bookAuthor.text = "Author: \(filteredBooks[indexPath.row].author)"
                
        return books
    }
    
}

extension ViewController : UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
                    filteredBooks = []
        
                if searchText == "" {
                    filteredBooks = allBooks
                }
        
                for searchItem in allBooks{
        
                    if searchItem.title.uppercased().contains(searchText.uppercased()){
                        filteredBooks.append(searchItem)
                    }
                }
                bookTableView.reloadData()
        
            }
}

        



