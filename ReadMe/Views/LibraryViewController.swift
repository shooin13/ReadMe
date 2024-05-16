import UIKit

final class LibraryViewController: UITableViewController {

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

