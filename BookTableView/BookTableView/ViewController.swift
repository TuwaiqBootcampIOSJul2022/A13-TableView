//
//  ViewController.swift
//  BookTableView
//
//  Created by Kholoud Almutairi on 29/01/1444 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SigmentSort: UISegmentedControl!
    @IBOutlet weak var MyListTabel: UITableView!
    @IBOutlet weak var SearchBar: UISearchBar!
    
    var listBook = [Prodect]()
    var serch = false
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    
        MyListTabel.register(UINib(nibName: "CustemCell", bundle: nil), forCellReuseIdentifier: "custemCell")
            
        }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "mov", sender: indexPath.row)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mov"{
            if let VCus = segue.destination as? ViewController2{
                VCus.price2 = ("\(listProdect [sender as! Int].price)")
                VCus.titel2 = listProdect[sender as! Int].titel
                VCus.nameAuthor2 = listProdect[sender as! Int].nameAuthor
                VCus.image3 = listProdect [sender as! Int].image
                
            }}
    }
    
    @IBAction func topToDown(_ sender: UISegmentedControl) {
       // serch = true
        switch SigmentSort.selectedSegmentIndex{
        case 0 : listProdect.sort(by: {$0.price <= $1.price})
        case 1:  listProdect.sort(by: {$0.price >= $1.price})
        default:
            print("")
           // print(serching)
            
        }
        MyListTabel.reloadData()
    }
    
    
    
    /*@IBAction func topToDown(_ sender: UISegmentedControl) {
        switch SigmentSort.selectedSegmentIndex{
        case 0 : listProdect.sort(by: {$0.titel <= $1.price})
        case 1:  listProdect.sort(by: {$0.price >= $1.price})
        default:
            print("")
            
        }
        MyListTabel.reloadData()
    }*/
 
    
}
    
extension ViewController : UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        listBook = listProdect.filter({$0.titel.prefix(searchText.count) == searchText})
        serch = true
        MyListTabel.reloadData()
    
     }
    }

