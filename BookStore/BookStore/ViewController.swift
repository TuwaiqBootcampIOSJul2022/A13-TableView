//
//  ViewController.swift
//  BookStore
//
//  Created by Kholoud Almutairi on 27/01/1444 AH.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate ,UITableViewDataSource  {
    
    var Details = ["How your quest leads to riches different and more satisfying than you can imagine. How to listen to your heart and reveal the opportunity scattered along the path of life His logic is that this work will spark creativity, soaring with wisdom, strength and clarity. It changes how we look at the world!",
                   
                   "How to be more confident. Acknowledging that you don't know anything is a great power. A new perspective on how to deal with internal conflict. How to change someone's mind to be stubborn",
                   
                   "The Five Factors for Victory and Six Ways to Court Defeat! Discover the hidden manipulation of strings and examine the future note: The chapters in the book are not arranged, and they are intended Notice: Adventure lovers and anyone fascinated by competition, rivalry and power will appreciate this rare book of classic action!",
                   
                   "How to accumulate small habits. Change your life by taking small steps. Small steps become part of your routine until a new habit is formed. How to make new habits “clear, attractive, easy and satisfying”",
                   
                   "How to make yourself instantly loved and respected How to master small and large chats and body language Ways to feed someone's ego How do you talk to cunning characters? Building confidence through tone of voice This book is about emotional intelligence based on real-life, adrenaline-filled stories!",
                   
                   "Learn about the enemy of ambition, success and flexibility. Get to know: Vanity. Why arrogance is a deadly opponent that you must protect yourself from. How to conquer your ego and reach the highest levels of strength and success",
                   
                   "Probably the best book ever written on human behavior. You will learn to be aware of your biases. Make better decisions by understanding your blind spots. People are professionally (clients) or (employees). This book helps you get better at both!",
                   
                   "Find harmony and personal happiness by letting go. Leave the hamster wheel and set free. Discover and learn Stoic techniques to achieve calm!",
                   
                   "Complex growth is the eighth wonder of the world. You overestimate what you can do in a day and underestimate what you can do in a year. Focus on the long term. How to use the Remorse Minimization framework!",
                   
                   " What does our brain tell us about success? The horrific ways people take when they despair and seek revenge?!. The eternal truths that change and magnify the mind and soul of the reader? The antidote to the chaos applied to our modern world."]
    
    var searchBook = [Book]()
    var serching = false
  
   
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if serching{
            return searchBook.count
        }else{
        return listBook.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! TableViewCell
        
        
        if serching {
            cell.imageView?.image = UIImage(named: searchBook[indexPath.row].image)
            cell.LName.text = "\(searchBook[indexPath.row].name)"
            cell.LAuthor.text = "\(searchBook[indexPath.row].author)"
            cell.Lprice.text = " \(searchBook[indexPath.row].price) "
            
        }else {
            cell.imageView?.image = UIImage(named: listBook[indexPath.row].image)
            cell.LName.text = listBook[indexPath.row].name
            cell.LAuthor.text = listBook[indexPath.row].author
            cell.Lprice.text = " \(listBook[indexPath.row].price) "
        }
        
        
        
      

        return cell
    }
    
  

    @IBOutlet weak var MyTableView: UITableView!
    @IBOutlet weak var SearchBar: UISearchBar!
    
   
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        MyTableView.register(UINib(nibName: "TableViewCell", bundle: nil ), forCellReuseIdentifier: "MyCell")
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "Show2", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let view = segue.destination as? ViewController2{
            
            view.imagview =  listBook[sender as! Int].image
            view.Detils = Details[sender as! Int]
    }

}
  
    @IBAction func LessOrGrather(_ sender: UISegmentedControl ) {
        
        if sender.selectedSegmentIndex == 0 {
            
           listBook.sort(by: {$0.price <= $1.price})
        
         
            }else{
            
            listBook.sort(by: {$0.price >= $1.price})

    
        }
    
        MyTableView.reloadData()
    }
    
    

}
    


extension ViewController : UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchBook = listBook.filter({$0.name.prefix(searchText.count) == searchText })
        serching = true
        MyTableView.reloadData()
    }
    
    
    
}
