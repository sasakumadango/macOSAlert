// 
//  ViewController.swift
//  macOSAlert
//
//  Created by Yuta S. on 2021/01/05.
//  Copyright © 2021 Yuta S. All rights reserved.
//
//

import Cocoa

class ViewController: NSViewController, NSAlertDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override var representedObject: Any? {
        didSet {
        }
    }
    
    @IBAction func tappedDeploy(_ sender: NSButton) {
        let alert = NSAlert()
        alert.messageText = "タイトル"
        alert.informativeText = "メッセージ"
        alert.icon = NSImage(named: "")
        alert.addButton(withTitle: "OK")
        alert.addButton(withTitle: "Cancel")
        let textView = NSTextView(frame: NSRect(x: 0, y: 0, width: 280, height: 150))
        textView.string = "自由入力"
        alert.accessoryView = textView
        let response = alert.runModal()
        if case .alertFirstButtonReturn = response {
            print(textView.string)
        }
    }
}

