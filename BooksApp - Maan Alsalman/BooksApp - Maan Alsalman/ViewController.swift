//
//  ViewController.swift
//  BooksApp - Maan Alsalman
//
//  Created by Maan Abdullah on 24/08/2022.
//

import UIKit

var FilteredBooks: [Book] = []

class ViewController: UIViewController {
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var viewOfSearch: UIView!
    @IBOutlet weak var booksTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        booksTableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "bookCell")
        viewOfSearch.layer.cornerRadius = 16
        booksTableView.layer.cornerRadius = 16
        searchBar.layer.cornerRadius = 16
        books = books.sorted(){$0.price >= $1.price}
        FilteredBooks = books
    }

    override func viewWillAppear(_ animated: Bool) {
        searchBar.searchTextField.attributedPlaceholder  = NSAttributedString(string: "Book title", attributes: [NSAttributedString.Key.foregroundColor: UIColor(#colorLiteral(red: 0.3602861166, green: 0.6446326375, blue: 0.719224751, alpha: 1))])
    }
    @IBAction func priceFilterButton(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
                FilteredBooks = FilteredBooks.sorted(){$0.price >= $1.price}
        }
        else{
                FilteredBooks = FilteredBooks.sorted(){$0.price <= $1.price}
        }
        booksTableView.reloadData()
    }
    
}
// Set up TableView DataSource
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
            return FilteredBooks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath) as! TableViewCell
        let data = FilteredBooks[indexPath.row]
        cell.setup(title: data.title, author: data.author, price: data.price, image: data.image)
        return cell
    }
    
    
}

// Set up TableView Delegate
extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "bookDetailSegue", sender: indexPath.row)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "bookDetailSegue" else {return}
        guard let temp = segue.destination as? BookDetailScene else{return}
        guard let senderTemp = sender as? Int else {return}
        temp.cellClicked = senderTemp
    }
        
    }

// Set up SeatchBar Delegate
extension ViewController: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchBar.showsCancelButton = true
        FilteredBooks = books.filter{$0.title.lowercased().hasPrefix(searchText.lowercased())}
        booksTableView.reloadData()

    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        searchBar.showsCancelButton = false
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.searchTextField.text = ""
        self.searchBar(searchBar, textDidChange: "")
    }
    
}

