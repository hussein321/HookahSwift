//
//  ViewController.swift
//  HookahSwiftExample
//
//  Created by Hussein Alshlash on 30.03.2021.
//

import UIKit
import HookahSwift
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    

    @IBAction func showHookah(_ sender: UIButton) {
        let vc = HookahSwift(nibName: "HookahSwift", bundle: nil)
        self.present(vc, animated: true, completion: nil);
    }
    

}

