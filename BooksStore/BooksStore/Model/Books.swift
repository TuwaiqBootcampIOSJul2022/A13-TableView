//
//  Books.swift
//  BooksStore
//
//  Created by REOF ALMESHARI on 26/08/2022.
//

import Foundation
import UIKit

struct Books {
    let bookName : String
    let author : Author
    var price : Double
    let bookCover : UIImage!
    let overview : String
}



let booksList : [Books] = [
    Books.init(bookName: "Catcher in the Rye ",
    author:  Author.init(authorName: "J.D. Salinger"), price: 30, bookCover: UIImage(named: "book1"), overview: "The Catcher in the Rye is a novel by J. D. Salinger, partially published in serial form in 1945–1946 and as a novel in 1951. It was originally intended for adu lts but is often read by adolescents for its theme of angst, alienation and as a critique......"),
    Books.init(bookName: "White Nights",
    author:  Author.init(authorName: "Dostoyevsky"), price: 90, bookCover:  UIImage(named: "book2"), overview: "The Catcher in the Rye is a novel by J. D. Salinger, partially published in serial form in 1945–1946 and as a novel in 1951. It was originally intended for adu lts but is often read by adolescents for its theme of angst, alienation and as a critique......"),
    Books.init(bookName: "Moving Fingers",
    author:  Author.init(authorName: "Agatha Christie"), price: 50, bookCover:  UIImage(named: "book3") , overview: "The Catcher in the Rye is a novel by J. D. Salinger, partially published in serial form in 1945–1946 and as a novel in 1951. It was originally intended for adu lts but is often read by adolescents for its theme of angst, alienation and as a critique......"),
    Books.init(bookName: "The mystery of the blue train",
    author:  Author.init(authorName: "Agatha Christie"), price: 50, bookCover: UIImage(named: "book4"), overview: "The Catcher in the Rye is a novel by J. D. Salinger, partially published in serial form in 1945–1946 and as a novel in 1951. It was originally intended for adu lts but is often read by adolescents for its theme of angst, alienation and as a critique......"),
    Books(bookName: " The ABC Murders",
    author:  Author.init(authorName: "Agatha Christie"), price: 50, bookCover: UIImage(named: "book5"), overview: "The Catcher in the Rye is a novel by J. D. Salinger, partially published in serial form in 1945–1946 and as a novel in 1951. It was originally intended for adu lts but is often read by adolescents for its theme of angst, alienation and as a critique......"),
    Books.init(bookName: "Crime and Punishment",
    author: Author.init(authorName: "Dostoyevsky"), price: 90, bookCover: UIImage(named: "book6"), overview: "The Catcher in the Rye is a novel by J. D. Salinger, partially published in serial form in 1945–1946 and as a novel in 1951. It was originally intended for adu lts but is often read by adolescents for its theme of angst, alienation and as a critique......"),
    Books.init(bookName: "White Nights",
    author: Author.init(authorName: "Dostoyevsky"), price: 80, bookCover: UIImage(named: "book7"), overview: "The Catcher in the Rye is a novel by J. D. Salinger, partially published in serial form in 1945–1946 and as a novel in 1951. It was originally intended for adu lts but is often read by adolescents for its theme of angst, alienation and as a critique......"),
    Books.init(bookName: "1984",
    author: Author.init(authorName: "George Orwell"),price: 80, bookCover: UIImage(named: "book8"), overview: "The Catcher in the Rye is a novel by J. D. Salinger, partially published in serial form in 1945–1946 and as a novel in 1951. It was originally intended for adu lts but is often read by adolescents for its theme of angst, alienation and as a critique......"),
    Books.init(bookName: "Prisoner of AZKABAN",
    author: Author.init(authorName: "J.K Rowling"), price: 150, bookCover: UIImage(named: "book9"), overview: "The Catcher in the Rye is a novel by J. D. Salinger, partially published in serial form in 1945–1946 and as a novel in 1951. It was originally intended for adu lts but is often read by adolescents for its theme of angst, alienation and as a critique......"),
    Books.init(bookName: "The Half -Blood Prince ",
    author: Author.init(authorName: "J.K Rowling"), price: 200, bookCover: UIImage(named: "book10"), overview: "The Catcher in the Rye is a novel by J. D. Salinger, partially published in serial form in 1945–1946 and as a novel in 1951. It was originally intended for adu lts but is often read by adolescents for its theme of angst, alienation and as a critique......"),
    Books.init(bookName: "Order of the PHOENIX",
    author: Author.init(authorName: "J.K Rowling"), price: 200, bookCover: UIImage(named: "book11"), overview: "The Catcher in the Rye is a novel by J. D. Salinger, partially published in serial form in 1945–1946 and as a novel in 1951. It was originally intended for adu lts but is often read by adolescents for its theme of angst, alienation and as a critique......"),
    Books.init(bookName: "Chamber of Secrets",
    author:  Author.init(authorName: "J.K Rowling"), price: 200, bookCover: UIImage(named: "book12"), overview: "The Catcher in the Rye is a novel by J. D. Salinger, partially published in serial form in 1945–1946 and as a novel in 1951. It was originally intended for adu lts but is often read by adolescents for its theme of angst, alienation and as a critique......")
    
    



]

