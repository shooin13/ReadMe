import UIKit

final class DetailViewController: UIViewController {
  
  private let book: Book
  
  @IBOutlet private var titleLabel: UILabel?
  @IBOutlet private var authorLabel: UILabel?
  @IBOutlet private var imageView: UIImageView?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    imageView?.image = book.image
    titleLabel?.text = book.title
    authorLabel?.text = book.author
  }
  
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented or was implemented incorrectly")
  }
  
  init?(coder: NSCoder, book: Book) {
    self.book = book
    super.init(coder: coder)
  }

}
