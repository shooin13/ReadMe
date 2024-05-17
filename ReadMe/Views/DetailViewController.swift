import UIKit

final class DetailViewController: UIViewController {
  
  
  @IBOutlet private var titleLabel: UILabel?
  @IBOutlet private var authorLabel: UILabel?
  @IBOutlet private var imageView: UIImageView?
  
  private let book: Book
  
  @IBAction private func updateImage() {
    let imagePicker = UIImagePickerController()
    imagePicker.delegate = self
    imagePicker.sourceType = UIImagePickerController.isSourceTypeAvailable(.camera) ? .camera : .photoLibrary
    imagePicker.allowsEditing = true
    present(imagePicker, animated: true)
  }
  
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

extension DetailViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
  func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
    guard let selectedImage = info[.editedImage] as? UIImage else { return }
    imageView?.image = selectedImage
    Library.saveImage(selectedImage, forBook: book)
    dismiss(animated: true)
  }
}
