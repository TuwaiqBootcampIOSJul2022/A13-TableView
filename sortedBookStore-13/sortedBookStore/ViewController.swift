//
//  ViewController.swift
//  sortedBookStore
//
//  Created by AlenaziHazal on 28/01/1444 AH.
//

import UIKit

class ViewController: UIViewController {
    struct Product{
        //outside and inside
        var name:String
        //outside
        var author:String
        //inside top title
        var discrp:String
        //outside
        var price:Int
        //outside
        var category:String
        //outside and inside
        var image:String
        //inside body
        var shortSummry:String
    }
    var book1 = Product.init(name: "How to talk to anyone", author: "Larry King", discrp:"Speaking skills", price: 80, category: "Learning", image: "HowToTalk", shortSummry:"“What is that magic quality that makes some people instantly loved and respected? Everyone wants to be their friend (or, if single, their lover). In business, they rise swiftly to the top of the corporate ladder. What is their “Midas touch?”")
    var book2 = Product.init(name: "Art Of War", author:"SUN TZU", discrp: "ledearship", price: 90, category: "Strategy", image: "ArtOfWar", shortSummry:"Know when to fight and when not to fight: avoid what is strong and strike at what is weak. Know how to deceive the enemy: appear weak when you are strong, and strong when you are weak. Know your strengths and weaknesses: if you know the enemy and know yourself, you need not fear the result of a hundred battles.")
    var book3 = Product.init(name: "asda", author: "adsad", discrp: "asdasd", price: 90, category: "sdaads", image: "asdas", shortSummry: "asaa")
//    let allBooks = [book1 , book2 , book3]
    var books:Array<Product> = [Product.init(name: "Art Of War", author:"SUN TZU", discrp: "ledearship", price: 90, category: "Strategy", image: "ArtOfWar", shortSummry:"Know when to fight and when not to fight: avoid what is strong and strike at what is weak. Know how to deceive the enemy: appear weak when you are strong, and strong when you are weak. Know your strengths and weaknesses: if you know the enemy and know yourself, you need not fear the result of a hundred battles."),Product.init(name: "How to talk to anyone", author: "Larry King", discrp:"Speaking skills", price: 80, category: "Learning", image: "HowToTalk", shortSummry:"“What is that magic quality that makes some people instantly loved and respected? Everyone wants to be their friend (or, if single, their lover). In business, they rise swiftly to the top of the corporate ladder. What is their “Midas touch?”"),Product.init(name: "MyStruggle", author: "Adlof Hitler", discrp:"Think like tyrant", price: 120, category: "History", image: "MyStruggle", shortSummry:"It treats the world of Hitler's youth, the First World War, and the “betrayal” of Germany's collapse in 1918; it also expresses Hitler's racist ideology, identifying the Aryan as the “genius” race and the Jew as the “parasite,” and declares the need for Germans to seek living space (Lebensraum) in the East at the"),Product.init(name: "Human, All to human", author: "Larry King", discrp: "MindSet", price: 40, category: "Learning", image: "PowerfullPrayers", shortSummry: "The book is Nietzsche's first in the aphoristic style that would come to dominate his writings, discussing a variety of concepts in short paragraphs or sayings. Reflecting an admiration of Voltaire as a free thinker, but also a break in his friendship with composer Richard Wagner two years earlier, Nietzsche dedicated the original 1878 edition of Human, All Too Human 'to the memory of Voltaire on the celebration of the anniversary of his death, May 30, 1778'. Instead of a preface, the first part originally included a quotation from Descartes's Discourse on the Method. Nietzsche later republished all three parts as a two-volume edition in 1886, adding a preface to each volume, and removing the Descartes quotation as well as the dedication to Voltaire."),Product.init(name: "مرتفعات وذرنق", author: "إميلي برونتي", discrp: "خرافية", price: 50, category: "خيالية", image: "مرتفعات وذرنق", shortSummry: "تبدأ القصة بالسيد لوكوود الساكن جديد في ثراشكروس جرانج، وهو بيت كبير في مروج يوركشير، والذي استأجره من السيد هيثكليف، وهو مكان قريب من مرتفعات ويذرينغ. في أول يوم يقضي السيد لوكوود ليلته في بيت هيثكليف، يقابل كاثي زوجة ابن هثكلف وبنت كاثرين حبيبة هثكلف ويشاهد حلما مريعا : شبح كاثرين ايرنشو، يترجاه أن يسمح له بالدخول. يسأل السيد لووكود مدبرة المنزل السيدة نيللي دين، وهنا تبدأ أحداث القصة عن الثلاثين سنة الماضية على لسان المربية التي عاشرت هذه العائلة ورأت أجيالها المتعاقبة وعرفت طباعهم وكانت قريبة جدا منهم."),Product.init(name: "Fire and Blood", author: "George R. R. Martin", discrp: "History", price: 190, category: "Fantasy", image: "FireAndBlood", shortSummry: "Fire & Blood is a fantasy book by American writer George R. R. Martin. It tells the history of House Targaryen, a family from his series A Song of Ice and Fire. Although originally planned for publication after the completion of the series, Martin has revealed his intent to publish the history in two volumes as the material had grown too large. The first volume was released on November 20, 2018."),Product.init(name: "Good and Evil", author: "", discrp: "Learning", price: 200, category: "MindSet", image: "Good and Evil", shortSummry: "Beyond Good and Evil: Prelude to a Philosophy of the Future is a book by philosopher Friedrich Nietzsche, first published in 1886. It draws on and expands the ideas of his previous work, Thus Spoke Zarathustra, but with a more critical and polemical approach. In Beyond Good and Evil, Nietzsche accuses past philosophers of lacking critical sense and blindly accepting dogmatic premises in their consideration of morality. Specifically, he accuses them of founding grand metaphysical systems upon the faith that the good man is the opposite of the evil man, rather than just a different expression of the same basic impulses that find more direct expression in the evil man. The work moves into the realm beyond good and evil in the sense of leaving behind the traditional morality which Nietzsche subjects to a destructive critique in favour of what he regards as an affirmative approach that fearlessly confronts the perspectival nature of knowledge and the perilous condition of the modern individual."),Product.init(name: "Götzen-Dämmerung", author: "فريدريك", discrp: "فلسفي", price: 5, category: "فلسفة", image: "الاصنام", shortSummry: "ينتقد نيتشه الثقافة الألمانية في ذلك الوقت باعتبارها غير متطورة ومنحطة وعدمية، ويطلق سهامًا معارضة لبعض الشخصيات الثقافية الفرنسية والبريطانية والإيطالية التي تمثل ميولًا مماثلة. على النقيض من كل هؤلاء الممثلين المزعومين للانحطاط الثقافي، نيتشه يصفق لقيصر ونابليون وغوته وثوسيديدس والسفطائيين باعتبارهم أنواعًا أكثر صحة وأقوى. يذكر الكتاب تحويل جميع القيم كمشروع نيتشه الأخير والأكثر أهمية، ويعطي نظرة إلى العصور القديمة حيث يكون للرومان الأسبقية على الإغريق القدماء، وإن كان ذلك فقط في مجال الأدب"),Product.init(name: "Ecce Homo: How One Becomes What One", author: "Friedrich Nietzsche", discrp: "philosophy", price: 56, category: "MindSet", image: "Ecce Homo: How One Becomes What One", shortSummry: "In late 1888, only weeks before his final collapse into madness, Nietzsche (1844-1900) set out to compose his autobiography, and Ecce Homo remains one of the most intriguing yet bizarre examples of the genre ever written. In this extraordinary work Nietzsche traces his life, work and development as a philosopher, examines the heroes he has identified with, struggled against and then overcome - Schopenhauer, Wagner, Socrates, Christ - and predicts the cataclysmic impact of his 'forthcoming revelation of all values'. Both self-celebrating and self-mocking, penetrating and strange, Ecce Homo gives the final, definitive expression to Nietzsche's main beliefs and is in every way his last testament"),Product.init(name: "The Guns of August: The Pulitzer Prize-Winning Classic About the Outbreak of World War I", author: "Barbara W. Tuchman", discrp: "WW1", price: 87, category: "", image: "The Guns of August: The Pulitzer Prize-Winning Classic About the Outbreak of World War I", shortSummry: "In this landmark account, renowned historian Barbara W. Tuchman re-creates the first month of World War I: thirty days in the summer of 1914 that determined the course of the conflict, the century, and ultimately our present world. Beginning with the funeral of Edward VII, Tuchman traces each step that led to the inevitable clash. And inevitable it was, with all sides plotting their war for a generation. Dizzyingly comprehensive and spectacularly portrayed with her famous talent for evoking the characters of the war’s key players, Tuchman’s magnum opus is a classic for the ages. ")]
    


    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableViewinMain: UITableView!
    var filterData:[Product]!
    var sendimagefrom = ""
    var sendSummaryfrom = ""
    var sendNamefrom = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        filterData = books
        tableViewinMain.dataSource = self
        tableViewinMain.delegate = self
        tableViewinMain.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "Cells")
        searchBar.delegate = self
        view.backgroundColor = .lightGray
//        sortTable()
    }
    @IBAction func sortedSegment(_ sender: UISegmentedControl) {
        let selecteSender = sender.selectedSegmentIndex
        
        switch selecteSender {
        case 0:
            filterData.sort(by: {$0.price < $1.price})
        case 1:
            filterData.sort(by: {$0.price > $1.price})
        default:
            break
        }
        tableViewinMain.reloadData()
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filterData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cells", for: indexPath) as! TableViewCell
        cell.cellImage.image = UIImage(named: "\(filterData[indexPath.row].image)")
        cell.cellPrice.text = "Price: \(filterData[indexPath.row].price)"
        cell.cellname.text = "Name: \(filterData[indexPath.row].name)"
        cell.cellInterest.text = "Interest: \(filterData[indexPath.row].category)"
        cell.celltitle.text = "Author: \(filterData[indexPath.row].author)"
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResult"{
            if let send = segue.destination as? secondViewController {
                send.sendimage = sendimagefrom
                send.sendName = sendNamefrom
                send.sendSummry = sendSummaryfrom
            }
        }
    }
    
//    func sortTheBooks(book1: Product , book2: Product)-> Bool{
//        if book1.price  < book2.price {
//            return true
//        }else{
//            return false
//        }
//
//    }
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        sendimagefrom = filterData[indexPath.row].image
        sendNamefrom = filterData[indexPath.row].name
        sendSummaryfrom = filterData[indexPath.row].shortSummry
        performSegue(withIdentifier: "showResult", sender: nil)
        
    }
    
}
extension ViewController: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filterData = []
        
        if searchText == ""{
            filterData = books
        }
        
        for search in books{
        if search.name.uppercased().contains(searchText.uppercased())
            {
                filterData.append(search)
            }
        }
        tableViewinMain.reloadData()
    }
}
