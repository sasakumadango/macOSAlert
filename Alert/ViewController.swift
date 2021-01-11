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
        let userName = NSUserName()
        let fullUserName = NSFullUserName()
        print(userName)
        print(fullUserName)
        
    }
    
    override var representedObject: Any? {
        didSet {
        }
    }
    
    @IBAction func tappedDeploy(_ sender: NSButton) {
        let alert = NSAlert()
        alert.messageText = "ようこそ、\(NSFullUserName()) さん"
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
    
    private func shell(_ args: String) -> String {
        var outstr = ""
        let task = Process()
        task.launchPath = "/bin/sh"
        task.arguments = ["-c", args]
        let pipe = Pipe()
        task.standardOutput = pipe
        task.launch()
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        if let output = String(data: data, encoding: .utf8) {
            outstr = output as String
        }
        task.waitUntilExit()
        return outstr
    }
}

