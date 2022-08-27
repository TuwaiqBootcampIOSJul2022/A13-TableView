//
//  books.swift
//  myLibrary
//
//  Created by Razan Abdullah on 29/01/1444 AH.
//

import Foundation

struct detailsBook {
    var title: String
    var price: Int
    var author: String
    var imageOfBook: String
    
}

let book1 = detailsBook.init(title: "Who Moved My Cheese‎", price: 45, author: "‎Johnson Spencer‎", imageOfBook: "Book1")
let book2 = detailsBook.init(title: "Rich Dad Poor Dad", price: 45, author: "‎Robert Kiyosaki", imageOfBook: "Book2")
let book3 = detailsBook.init(title: "‎‎Daily Teachings‎", price: 75, author: "Rhonda Byrne‎", imageOfBook: "Book3")
let book4 = detailsBook.init(title: "‎All Is Well", price: 89, author: "‎Louise Hay‎", imageOfBook: "Book4")
let book5 = detailsBook.init(title: "The Magic", price: 85, author: "Rhonda Byrne‎", imageOfBook: "Book5")
let book6 = detailsBook.init(title: "The Alchemist", price: 55, author: "‎Paulo Coelho", imageOfBook: "Book6")
let book7 = detailsBook.init(title: "‎The Power", price: 109, author: "Rhonda Byrne‎", imageOfBook: "Book7")
let book8 = detailsBook.init(title: "‎Richest Man in Babylon", price: 45, author: "‎George Clason", imageOfBook: "Book8")
let book9 = detailsBook.init(title: "‎You Can Heal Your Life‎", price: 79, author: "Louise Hay", imageOfBook: "Book9")
let book10 = detailsBook.init(title: "‎I am Malala‎", price: 55, author: "‎Malala Yousafzai‎", imageOfBook: "Book10")

let books = [book1, book2, book3, book4, book5, book6, book7, book8, book9, book10]

