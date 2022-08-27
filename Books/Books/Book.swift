

import Foundation
import UIKit

class BookModel   // MODEL CLASS
{
    
    public var  bookId : Int
    public var  bookTitle : String
    public var  bookPrice : Double
    public var bookAuthor : String
    public var bookPicName : String
    
    public init(id : Int , title : String , price : Double , author : String , pic : String)
    {
        self.bookId = id
        self.bookTitle = title
        self.bookPrice = price
        self.bookAuthor = author
        self.bookPicName = pic
    }
}


class BookController
{
    private var Books  = [BookModel]()
    
    public init()
    {
        
        Books.append(BookModel(id: 1, title: "How to program with java", price: 20.0, author: "alin grek", pic: "1.png"))
        Books.append(BookModel(id: 2, title: "Paython 3", price: 25.0, author: "noha ali", pic: "2.png"))
        Books.append(BookModel(id: 3, title: "c#", price: 30.0, author: "Mashail alakla", pic: "3.png"))
        Books.append(BookModel(id: 4, title: "c++", price: 30.0, author: "esraa hamad", pic: "4.png"))
        Books.append(BookModel(id: 5, title: "Html", price: 10.0, author: "nouf etabbi", pic: "5.png"))
        Books.append(BookModel(id: 6, title: "CSS", price: 10.0, author: "aseel mahmoud", pic: "6.png"))
        Books.append(BookModel(id: 7, title: "JavaScript", price: 10.0, author: "soha mohsen", pic: "7.png"))
        Books.append(BookModel(id: 8, title: "Swift 5", price: 25.0, author: "alin grek", pic: "8.png"))
        Books.append(BookModel(id: 9, title: "Algorithmes", price: 20.0, author: "Khalid saleh", pic: "9.png"))
        Books.append(BookModel(id: 10, title: "Vb.net", price: 30.0, author: "leen assad", pic: "10.png"))
    }
    
    func  searchBook(title : String) -> BookModel
    {
        for item in Books
        {
            if item.bookTitle.contains(title)
            {
                return item
            }
        }
        return BookModel(id: -1, title: "", price: 0.0, author: "", pic: "")
    
    }
    
    func count() -> Int
    {
       return self.Books.count
    }
    
    func bookList () -> [BookModel]
    {
        return self.Books
    }
    

}
