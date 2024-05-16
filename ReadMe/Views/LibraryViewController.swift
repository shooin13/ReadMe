import UIKit

final class LibraryViewController: UITableViewController {

  
  @IBSegueAction private func showDetailView(_ coder: NSCoder) -> DetailViewController? {
    guard let indexPath = tableView.indexPathForSelectedRow else { fatalError("Nothing was selected")}
    let book = Library.books[indexPath.row]
    return DetailViewController(coder: coder, book: book)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  //MARK: - DataSource
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    Library.books.count
  }

  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath)
    
    let book = Library.books[indexPath.row]
    cell.textLabel?.text = book.title
    cell.imageView?.image = book.image
    return cell
  }
  
}

