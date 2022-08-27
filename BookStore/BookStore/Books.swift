//
//  Books.swift
//  BookStore
//
//  Created by Waad on 28/01/1444 AH.
//

import Foundation
import UIKit

struct Books {
    let image: UIImage
    let title: String
    let price: Double
    let author: String
}

var books: [Books] = [
    
    Books(image: UIImage(named: "book8")!, title: "If we were", price: 100, author: "Rio"),
    Books(image: UIImage(named: "book9")!, title: "قلق السعي", price: 150, author: "الان دو بوتون"),
    Books(image: UIImage(named: "book10")!, title: "كيف انظم حياتي", price: 60, author: "هارييت جريفي"),
    Books(image: UIImage(named: "book11")!, title: "كيف أكون مبدعاً", price: 66, author: "هارييت جريفي"),
    Books(image: UIImage(named: "book12")!, title: "فن اللامبالاة", price: 89, author: "مارك مانسون"),
    Books(image: UIImage(named: "book13")!, title: "قوة التفكير الايجابي", price: 55, author: "د.نورمان فنسنت"),
    Books(image: UIImage(named: "book14")!, title: "It ends", price: 45, author: "colleen hoover"),
    Books(image: UIImage(named: "book15")!, title: "Be Water", price: 90, author: "shannon lee"),
    Books(image: UIImage(named: "book16")!, title: "Don't Overthink", price: 88, author: "Anne Bogel"),
    Books(image: UIImage(named: "book17")!, title: "worn", price: 65, author: "sofi thanhausee"),
    Books(image: UIImage(named: "book18")!, title: "obsessed", price: 56, author: "Alloson britz"),
    Books(image: UIImage(named: "book1")!, title: "stay curios", price: 78, author: "emily calandreili"),
    Books(image: UIImage(named: "book2")!, title: "BeNotAfraid", price: 45, author: "Mimi Zhu"),
    Books(image: UIImage(named: "book3")!, title: "Tomoorrow", price: 50, author: "Gabrielle zevin"),
    Books(image: UIImage(named: "book4")!, title: "Braiding", price: 80, author: "Robin wall"),
    Books(image: UIImage(named: "book5")!, title: "iOS 15", price: 90, author: "Matt Neuburg"),
    Books(image: UIImage(named: "book6")!, title: "Zero", price: 100, author: "peter thiel"),
    Books(image: UIImage(named: "book7")!, title: "Swift", price: 99, author: "Apple"),
]
