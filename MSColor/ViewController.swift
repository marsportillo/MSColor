//
//  ViewController.swift
//  MSColor
//
//  Created by marco sportillo on 22/09/2016.
//  Copyright © 2016 msportillo.me. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(MSColor.init(hexInt: 0xff00ff))
        print(MSColor.init(hexIntRaw: "ffff"))
        // Do any additional setup after loading the view, typically from a nib.
        
        self.demoColor.backgroundColor = MSColor.init(hexIntRawWithDash: "#ff")
    }
    @IBOutlet weak var demoColor: UIImageView!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

