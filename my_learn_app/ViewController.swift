//
//  ViewController.swift
//  my_learn_app
//
//  Created by aldinugroho on 15/06/22.
//

import UIKit

class ViewController: UIViewController {
    var isLoading: Bool = false
    
    var loadingindicator: UIActivityIndicatorView = {
        let result = UIActivityIndicatorView()
        result.color = .red
        result.startAnimating()
        result.translatesAutoresizingMaskIntoConstraints = false
        return result
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setMainView()
        view.addSubview(loadingindicator)
        setLayout()
        onChange()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setMainView()
    }
    
    func onChange() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) { [self] in // Change `2.0` to the desired number of seconds.
           // Code you want to be delayed
            isLoading = false
            if isLoading == false {
                loadingindicator.stopAnimating()
                let newViewController = InitialViewController()
                navigationController?.pushViewController(newViewController, animated: false)
            }
        }
    }
    
    func setMainView() {
        navigationbar()
        view.backgroundColor = #colorLiteral(red: 0.1098039216, green: 0.1411764706, blue: 0.231372549, alpha: 1)
    }
    
    func navigationbar() {
        navigationItem.title = "ViewController"
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    func setLayout () {
        let layout = view.layoutMarginsGuide
        //mainLabel
        loadingindicator.leadingAnchor.constraint(equalTo: layout.leadingAnchor).isActive = true
        loadingindicator.trailingAnchor.constraint(equalTo: layout.trailingAnchor).isActive = true
        loadingindicator.topAnchor.constraint(equalTo: layout.topAnchor).isActive = true
        loadingindicator.bottomAnchor.constraint(equalTo: layout.bottomAnchor).isActive = true
    }

}

