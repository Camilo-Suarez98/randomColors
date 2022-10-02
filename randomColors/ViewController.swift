//
//  ViewController.swift
//  randomColors
//
//  Created by Camilo on 9/30/22.
//

import UIKit

class ViewController: UIViewController {
    
    private let square1: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .blue
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 125
        image.layer.borderWidth = 15
        image.layer.borderColor = .init(red: 230, green: 200, blue: 150, alpha: 0.4)
        image.frame = CGRect(
            x: 0,
            y: 0,
            width: 250,
            height: 250
        )
        return image
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .init(
            red: 0,
            green: 0,
            blue: 200,
            alpha: 0.5
        )
        button.setTitle("Random Color", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor

        return button
    }()
    
    let colors: [UIColor] = [
        .blue,
        .cyan,
        .gray,
        .red,
        .purple,
        .orange,
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
//         Do any additional setup after loading the view.
        view.backgroundColor = .systemBlue
        view.addSubview(square1)
        square1.center = view.center
        
        view.addSubview(button)
        button.addTarget(self, action: #selector(pressButton), for: .touchUpInside)
    }
    
    @objc func pressButton () {
        square1.backgroundColor = colors.randomElement()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        button.frame = CGRect(
            x: 25,
            y: view.frame.size.height - 150 - view.safeAreaInsets.bottom,
            width: view.frame.size.width - 50,
            height: 60
        )
    }
}

