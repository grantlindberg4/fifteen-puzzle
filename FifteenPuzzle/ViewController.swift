//
//  ViewController.swift
//  FifteenPuzzle
//
//  Created by Lindberg on 2/20/18.
//  Copyright © 2018 Lindberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBOutlet weak var boardView: BoardView!
    @IBAction func tileSelected(_ sender: UIButton) {
        print("tileSelected")
    }
    
    @IBAction func shuffleTiles(_ sender: AnyObject) {
        print("shuffleTiles")
    }
}

