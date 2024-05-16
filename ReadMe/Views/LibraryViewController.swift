import UIKit

class LibraryViewController: UITableViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    
  }
  
  //MARK: - DataSource
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    50
  }

  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath)
    
    let book = Book(title: "Title \(indexPath)",
                    author: "Author \(indexPath)",
                    image: UIImage(systemName: "\(indexPath.row).square.fill") ?? UIImage())
    cell.textLabel?.text = book.title
    cell.imageView?.image = book.image
    return cell
  }
  
}

