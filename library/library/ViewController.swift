//
//  ViewController.swift
//  library
//
//  Created by Farah Alyousef on 29/01/1444 AH.
//

import UIKit

class ViewController: UIViewController {

var books = ["Don Quixote",
             "Lord of the Rings",
             "Harry Potter and the Sorcerer's Stone",
             "And Then There Were None",
             "Alice's Adventures in Wonderland"]
    var abstract = ["By Miguel de Cervantes ,Often referred to as the first modern European novel, Don Quixote follows the exploits of the titular noble who becomes obsessed with the romantic notion of chivalry. On a self-imposed mission to become a knight-errant, Don Quixote recruits common farmer, Sancho Panza, as his squire. Unfortunately, however, their quests rarely end well—among other misadventures, Don Quixote does battle with a herd of sheep, attacks a group of monks, and even frees a group of convicted criminals.",
    "By J.R.R. Tolkien ,This high-fantasy novel is a famous three volume epic. It centers around an all powerful ring forged by the Dark Lord Sauron. For many years the ring is sought after by all likes, but at the start of the novel, it resides in the simple home of the hobbit Bilbo Baggins. Bilbo sets a momentous quest upon his cousin Frodo’s shoulders, tasking him with the journey to Mount Doom to destroy the ring.",
    "By J.K. Rowling , The most recent novel on this list, Harry Potter and the Sorcerer’s Stone brings readers into a world of magic at Hogwarts School of Witchcraft and Wizardry. On his eleventh birthday, Harry’s magical heritage is brought to light by the bumbling half-giant Hagrid. As he embarks on his new life as a wizard, he finds that there’s more to this news than just learning spells and potions. The Dark Lord Voldemort, who had tried and failed to kill Harry as an infant, is regaining power, and Harry stands in his path.",
    "By Agatha Christie, From acclaimed mystery author Agatha Christie, And Then There Were None is a mastery of tension. A quirky millionaire hosts a gathering of eight strangers on a private island off of the English coast. When the guests arrive, the elusive host is nowhere to be found. In his place, however, is the accusation of murder upon each of the guests.",
    "By Lewis Carroll In this quintessential novel, seven-year-old Alice stumbles down a rabbit hole into a fantastical world of wonder and trouble. While navigating this new and peculiar place, Alice encounters many enchanting anthropomorphic creatures, like the iconic White Rabbit and the Cheshire Cat. Carrol’s work twists logic and spins riddles, giddily tossing convention aside. Now one of the cornerstones of the fantasy genre, Alice’s Adventures in Wonderland holds a dear place in the hearts of both children and adults."]
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? cellTableViewCell
        cell?.lbl.text = books[indexPath.row]
        cell?.img.image = UIImage(named: books[indexPath.row])
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
        vc?.image = UIImage(named: books[indexPath.row])!
        vc?.books = books[indexPath.row]
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}
