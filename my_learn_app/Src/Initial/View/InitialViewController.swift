//
//  InitialViewController.swift
//  my_learn_app
//
//  Created by aldinugroho on 15/06/22.
//

import UIKit

class InitialViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setMainView()
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        navigationController?.setNavigationBarHidden(false, animated: false)
//    }
//
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        navigationController?.setNavigationBarHidden(false, animated: false)
//    }
    
    func setMainView() {
        navigationconfig()
        view.backgroundColor = #colorLiteral(red: 0.1098039216, green: 0.1411764706, blue: 0.231372549, alpha: 1)
    }
    
    func navigationconfig() {
        navigationItem.title = "InitialViewController"
        navigationItem.hidesBackButton = true
        navigationController?.setNavigationBarHidden(false, animated: false)
        navigationController?.viewControllers = [self];
    }
    
}

