//
//  ViewController.swift
//  advanceAnimation
//
//  Created by Apple on 13/06/22.
//

import UIKit

class ViewController: UIViewController {
    
// MARK:- creating views

    let topView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let tittleLabel: UILabel = {
        let label = UILabel()
        label.text = "PLAY"
        label.textAlignment = .center
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    
    let fronView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.init(hexString: "FB8718")
        view.layer.cornerRadius = 40
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let playButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.init(hexString: "84C821")
        button.setTitle("", for: .normal)
        button.layer.cornerRadius = button.frame.size.height/2
        button.titleLabel?.textAlignment = .center
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(playButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()


// MARK:- LifeCycle Mehods

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setupConstraint()
    }
    
    @objc func playButtonTapped() {
    }
    
    func setupViews() {
        view.addSubview(topView)
        view.addSubview(fronView)
        topView.addSubview(tittleLabel)
        fronView.addSubview(playButton)
    }
    
    func setupConstraint() {
        self.topView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: 80)
        self.tittleLabel.frame = CGRect(x: (view.frame.size.width/2 - 40), y: 40, width: 80, height: 40)
        self.fronView.frame = CGRect(x: 30, y: 80, width: view.frame.size.width - 60, height: 550)
        
        //play button
        self.playButton.layer.cornerRadius = 25
        self.playButton.frame = CGRect(x: fronView.bounds.minX + 30, y: fronView.bounds.maxY - 70, width: fronView.bounds.width - 60, height: 50)
    }
}

// MARK:- Autolayout

extension ViewController {
    
}

