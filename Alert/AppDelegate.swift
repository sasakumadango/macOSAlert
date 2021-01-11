// 
//  AppDelegate.swift
//  Alert
//
//  Created by Yuta S. on 2021/01/05.
//  Copyright © 2021 Yuta S. All rights reserved.
//
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // アプリ起動時に最前面に表示
        NSApplication.shared.activate(ignoringOtherApps: true)
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    
    func applicationShouldHandleReopen(_ sender: NSApplication, hasVisibleWindows flag: Bool) -> Bool {
        if (!flag) {
            for openWindow in sender.windows {
                openWindow.makeKeyAndOrderFront(self)
            }
        }
        return true
    }
    
    
}

