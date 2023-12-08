//
//  ViewController.swift
//  NSTextAttachment
//
//  Created by Bas van der Hoek on 30/11/2021.
//

import Cocoa

class ImageAttachmentCell: NSTextAttachmentCell {
//  override func cellFrame(for textContainer: NSTextContainer, proposedLineFragment lineFrag: NSRect, glyphPosition position: NSPoint, characterIndex charIndex: Int) -> NSRect {
//    NSRect(x: 0, y: 0, width: 16, height: 16)
//  }
  
}

class ViewController: NSViewController {

  @IBOutlet var textView: NSTextView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let attachment = NSTextAttachment()
    textView.textStorage?.replaceCharacters(in: NSMakeRange(0, 0), with: "Hello, world")
    let image = NSImage(contentsOfFile: "/Users/bas/zilverline/markdone-swift/unittest/bzhoek16.png")
    print("\(image?.size)")
    attachment.attachmentCell = ImageAttachmentCell(imageCell: image)
    let attachmentString = NSAttributedString(attachment: attachment)
    textView.textStorage?.insert(attachmentString, at: 1)
  }

  override var representedObject: Any? {
    didSet {
    // Update the view, if already loaded.
    }
  }


}

