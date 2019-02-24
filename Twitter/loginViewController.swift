//
//  loginViewController.swift
//  Twitter
//
//  Created by Hailey Cassidy on 2/23/19.
//  Copyright © 2019 Dan. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButton(_ sender: Any) {
        let url = "https://api.twitter.com/oauth/request_token"
        TwitterAPICaller.client?.login(url: url, success: {
            self.performSegue(withIdentifier: "LoginToHome", sender: self)
        }, failure: { (Error) in
            print("colud not log in")
        })
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
