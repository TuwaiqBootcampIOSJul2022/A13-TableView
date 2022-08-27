//
//  ViewController.swift
//  Books
//
//  Created by Ruba on 27/01/1444 AH.
//

import UIKit
import TextFieldEffects


class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate, UITextFieldDelegate{
   
    var filteredData = [String]()
    var data = [String]()
    var filtered = false
    var descr = ""
    var name = ""
    let low = ["Think And Grow Rich" ,"Zero to One" ,"How To Talk To Absolutely Anyone","How to Speak So People Really Listen","1001 Words You Need To Know and Use","Good Vibes, Good Life","Short Stories In English", "In Five Years", "The Rules of People" , "Simple Thinking"  , "The Elephant in the Brain"]
   
    let high = ["The Elephant in the Brain","Simple Thinking", "The Rules of People","In Five Years","Short Stories In English","Good Vibes, Good Life" , "1001 Words You Need To Know and Use" , "How to Speak So People Really Listen","How To Talk To Absolutely Anyone","Zero to One","Think And Grow Rich"]
    var numOfImage = ["book1","book2","book3","book4","book5","book6","book7","book8","book9","book10","book11"]
    var labeltext =  ["Human beings are primates, and primates are political animals. Our brains, therefore, are designed not just to hunt and gather, but also to help us get ahead socially, often via deception and self-deception" , "Think And Grow Rich Has Been Called The Granddaddy Of All Motivational Literature. It Was The First Book To Boldly Ask, What Makes A Winner? The Man Who Asked And Listened For The Answer, Napoleon Hill, Is Now Counted In The Top Ranks Of The World'S Winners Himself.","The next Bill Gates will not build an operating system. The next Larry Page or Sergey Brin won’t make a search engine.","How can you learn to truly love yourself? How can you transform negative emotions into positive ones? Is it possible to find lasting happiness?", "need to know. Whether you need guidance for a letter, job application, essay, proposal, interview, or presentation, this book can help you choose the words you need to create the right effect.","Olly's top-notch language-learning insights are right in line with the best of what we know from neuroscience and cognitive psychology about how to learn effectively. I love his work - and you will too!" , "Simple behaviours that unclutter your mind and help you realise your true potential Awaken your passion and tap into your inner greatness as you remove the metaphorical clutter from your life with Simple Thinking.","The Rules of People has been officially shortlisted in the 'Self Development' category for The Business Book Awards 2018, as announced on 17th January 2018. A PERSONAL CODE FOR GETTING THE BEST FROM EVERYONE." ,"A New York Times Bestseller A Good Morning America, Fabfitfun, And Marie Claire Book Club Pick In Five Years Is As Clever As It Is Moving, The Rare Read-In-One-Sitting Novel You Won'T Forget.", "Talk to anyone, anytime, about anything with confidence. How to Talk to Absolutely Anyone is your personal handbook for stepping up your communication game.","Learn how to inspire your audience with best-selling author Paul McGee! 13 things you'll discover when reading this book...1."]
    
    @IBOutlet weak var search1: YoshikoTextField!
    @IBOutlet weak var segm: UISegmentedControl!
    @IBOutlet weak var table1: UITableView!
    @IBOutlet weak var cancel1: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.01070870552, green: 0.1547813714, blue: 0.8197633624, alpha: 0.8470588235)
        table1.delegate = self
        table1.dataSource = self
        search1.delegate = self
        setupData()
        cancel1.layer.cornerRadius = 8
        search1.placeholder = "Search"
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if let text = textField.text{
            filterText(text+string)
        }
        return true
    }
    func filterText(_ query:String){
        filteredData.removeAll()
        for string in data{
            if string.lowercased().starts(with: query.lowercased()){
                filteredData.append(string)
            }
        }
        table1.reloadData()
        filtered = true
    }
    func setupData(){
        data.append("The Elephant in the Brain")
        data.append("Think And Grow Rich")
        data.append( "Zero to One")
        data.append("Good Vibes, Good Life")
        data.append("1001 Words You Need To Know and Use")
        data.append("Short Stories In English")
        data.append("Simple Thinking")
        data.append("The Rules of People")
        data.append("In Five Year")
        data.append("How To Talk To Absolutely Anyone")
        data.append("How to Speak So People Really Listen")
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if  !filteredData.isEmpty{
            return filteredData.count
        }
        return filtered ? 0 : data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! tableViewCell
        switch segm.selectedSegmentIndex{
        case 0:
            cell.label4.text = low[indexPath.row]
        case 1:
            cell.label4.text = high[indexPath.row]
        default:
            break
        }
        if !filteredData.isEmpty{
            cell.label1.text = filteredData[indexPath.row]
        }else{
        cell.label1.text = obj[indexPath.row].name
        cell.label2.text = obj[indexPath.row].author
        cell.label3.text = "\(obj[indexPath.row].price)"
        cell.img.image = obj[indexPath.row].img1
        }
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
          name = numOfImage[indexPath.row]
          descr = labeltext[indexPath.row]
         performSegue(withIdentifier: "move", sender: nil)
       
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "move"{
            if let page = segue.destination as? imgViewController{
                page.nameImg = name
                page.namelabel = descr
            }
        }
    }
    
    
    @IBAction func segChange(_ sender: Any) {
        switch segm.selectedSegmentIndex{
               case 0:
            let result = allBooks.sorted() { $0.price <= $1.price}
                       print(result)
               case 1:
                   let result = allBooks.sorted() { $0.price >= $1.price}
                   print(result)
               default:
                   break
               }
        table1.reloadData()
}
}
