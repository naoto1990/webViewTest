//
//  WebViewController3.swift
//  webViewTest
//
//  Created by Naoto Ohno on 2017/07/11.
//  Copyright © 2017年 Naoto Ohno. All rights reserved.
//

import UIKit

class WebViewController3: UIViewController, UIWebViewDelegate {
    
    @IBOutlet var webView: UIWebView!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        webView.delegate = self
        
        let url = URL(string: "http://gozuk16.hatenablog.com/entry/2015/04/17/114552")
        let urlRequest = URLRequest(url: url!)
        webView.loadRequest(urlRequest)
        
        activityIndicator.isHidden = true
    }
    
    
    //webViewでサイトの読み込みが開始された際に勝手に呼ばれるメソッド
    func webViewDidStartLoad(_ webView: UIWebView) {
        activityIndicator.isHidden = false
        
        activityIndicator.stopAnimating()
    }
    
    
    //webViewでサイトの読み込みが完了した際に勝手に呼ばれるメソッド
    func webViewDidFinishLoad(_ webView: UIWebView) {
        activityIndicator.isHidden = true
        
        activityIndicator.stopAnimating()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}
