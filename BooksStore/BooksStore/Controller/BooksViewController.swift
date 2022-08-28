//
//  BooksViewController.swift
//  BooksStore
//
//  Created by REOF ALMESHARI on 26/08/2022.
//

import UIKit

class BooksViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!


    @IBOutlet weak var segmentOutlet: UISegmentedControl!
    let searchController = UISearchController()
    
    var searchdata: [Books]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        searchController.searchBar.delegate = self
  
        tableView.register(UINib(nibName: "BookTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        searchdata = booksList
        navigationItem.searchController = searchController
        
     
    }
    

    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        
        let segmentIndex = sender.selectedSegmentIndex
        
        switch segmentIndex {
        case 0 :

          searchdata = booksList
            
         tableView.reloadData()
       
            
        case 1 :
            let low =  booksList.sorted {
                  $0.price < $1.price
                  
              }
            searchdata = low
            tableView.reloadData()
        case 2 :
            let high =  booksList.sorted {
                  $0.price > $1.price
                  
              }
            searchdata = high
            tableView.reloadData()
        default :
            view.backgroundColor = .white
        }
    }
    

    

}

extension BooksViewController : UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        searchdata.count
    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! BookTableViewCell
        cell.bookCover.image = searchdata[indexPath.row].bookCover
        cell.bookTitle.text = searchdata[indexPath.row].bookName
        cell.bookAuthor.text = searchdata[indexPath.row].author.authorName
        cell.bookPrice.text = String(searchdata[indexPath.row].price) + "SR"
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90.0;//Choose your custom row height
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "details") as! DetalisViewController
        let position = indexPath.row
        vc.list = searchdata
        vc.position = position
        navigationController?.pushViewController(vc, animated: true)
       
    
    }
   
}

extension BooksViewController : UISearchBarDelegate {
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.text = ""

              searchdata = booksList

             searchBar.endEditing(true)

             tableView.reloadData()
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchdata = searchText.isEmpty ? booksList : booksList.filter{ (item: (Books)) -> Bool in

           // If dataItem matches the searchText, return true to include it
            return item.bookName.range(of: searchText , options: .caseInsensitive , range: nil , locale: nil) != nil
     

   }

   

        tableView.reloadData()

}
}
