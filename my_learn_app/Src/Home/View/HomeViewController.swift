//
//  HomeViewController.swift
//  my_learn_app
//
//  Created by aldinugroho on 16/06/22.
//

import UIKit

class HomeViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setMainView()
    }
    
    func setMainView() {
        navigationconfig()
        view.backgroundColor = #colorLiteral(red: 0.1098039216, green: 0.1411764706, blue: 0.231372549, alpha: 1)
    }
    
    func navigationconfig() {
        navigationItem.title = "HomeViewController"
        navigationItem.hidesBackButton = true
        navigationController?.setNavigationBarHidden(false, animated: false)
        navigationController?.viewControllers = [self];
    }
    
}
