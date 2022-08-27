//
//  ViewController.swift
//  Library
//
//  Created by NosaibahMW on 26/01/1444 AH.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var ListOfBookTableView: UITableView!
    @IBOutlet weak var sortSegment: UISegmentedControl!
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    var books: [Book] = [Book(title: "Software Testing", author: "Brian Hambling‎", price: 15, image: "SoftwareTesting"),
                         Book(title: "Networking", author: " ‎Bruce Hallberg‎", price: 150, image: "Networking"),
                         Book(title: "Interaction Design", author: "Jenny Preece‎", price: 219, image: "InteractionDesign"),
                         Book(title: "Introduction to Information Technology", author: "V. Rajaraman‎", price: 55, image: "IT"),
                         Book(title: "Java, A Beginners Guide", author: "Herbert Schildt‎", price: 179, image: "Java"),
                         Book(title: "Coding, All‎-‎in-One‎", author: "Nikhil Abraham", price: 199, image: "Coding"),
                         Book(title: "Coding Course‎", author: "Staffs of DK (Dorling Kindersley)", price: 99, image: "CodingCourse"),
                         Book(title: "Operating Systems", author: "William Stallings‎", price: 99, image: "OperatingSystems"),
                         Book(title: "Information Security‎", author: "D. P . Nagpal‎", price: 32, image: "InformationSecurity‎"),
                         Book(title: "Computer Networks", author: "Andrew Tanenbaum", price: 249, image: "ComputerNetworks")]
    
  
    var tempArray:[Book] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tempArray = books
        
        ListOfBookTableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "customCell")
        
        //defualt sort is from high to low price
        tempArray.sort { $0.price > $1.price
        }
        ListOfBookTableView.reloadData()
        
    }

    
    @IBAction func sortSegmentAction(_ sender: Any) {
        
        if sortSegment.selectedSegmentIndex == 0 {
            tempArray.sort { $0.price > $1.price
            }
            ListOfBookTableView.reloadData()
        } else if sortSegment.selectedSegmentIndex == 1 {
            tempArray.sort { $0.price < $1.price
            }
            ListOfBookTableView.reloadData()
            
        }
    }
}



//set data to ListOfBookTableView
extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tempArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ListOfBookTableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! TableViewCell
        
        cell.bookTitle.text = tempArray[indexPath.row].title
        cell.bookAuthor.text = tempArray[indexPath.row].author
        cell.bookPrice.text = "\(tempArray[indexPath.row].price) SR"
        cell.bookImageView.image = UIImage(named: tempArray[indexPath.row].image)
        
        return cell
    }
}



//check if specific cell selected then add an action according to that
extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetailsSegue", sender: indexPath.row)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let secondVC = segue.destination as? SecondViewController {
            secondVC.tempBookImage = tempArray[sender as! Int].image
            secondVC.tempBookTitle = tempArray[sender as! Int].title
            secondVC.tempBookAuthor = tempArray[sender as! Int].author
            secondVC.tempBookPrice = tempArray[sender as! Int].price

        }
    }
}


//search about specific book title
extension MainViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        tempArray = []
        
        if searchText == "" {
            tempArray = books
        }
        
        for searchWordObj in books {
            if searchWordObj.title.uppercased().contains(searchText.uppercased()){
                tempArray.append(searchWordObj)
            }
        }
        
        ListOfBookTableView.reloadData()

    }
}

