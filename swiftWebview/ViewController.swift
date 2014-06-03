//
//  ViewController.swift
//  swiftWebview
//
//  Created by Yuki Hamada on 2014/06/03.
//  Copyright (c) 2014年 Yuki Hamada. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate, UITextFieldDelegate {
    @IBOutlet var webview : UIWebView
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let requestURL = NSURL(string: "http://apple.com/")
        let request = NSURLRequest(URL: requestURL)
        webview.loadRequest(request)
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        if UIApplication.sharedApplication().networkActivityIndicatorVisible {
            UIApplication.sharedApplication().networkActivityIndicatorVisible = false
        }
    }
    
    
    func webViewDidStartLoad(webView: UIWebView) {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = true
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = false
    }
}

