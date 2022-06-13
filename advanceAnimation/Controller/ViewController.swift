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
    
    let yellowView: UIView = {
       let view = UIView()
        view.backgroundColor = UIColor.init(hexString: "FDE00D")
        view.layer.cornerRadius = 20
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
        print("hii")
        UIView.animate(withDuration: 0.5) {
            self.yellowView.transform = self.yellowView.transform.translatedBy(x: -15, y: -40)
            self.fronView.bringSubviewToFront(self.tittleLabel)
            self.tittleLabel.transform = self.tittleLabel.transform.translatedBy(x: -20, y: 40)
        } completion: { isComp in
            print("")
        }

    }
    
    func setupViews() {
        view.addSubview(topView)
        view.addSubview(fronView)
        topView.addSubview(tittleLabel)
        fronView.addSubview(playButton)
        fronView.addSubview(yellowView)
    }
    
    func setupConstraint() {
        self.topView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: 80)
        self.tittleLabel.frame = CGRect(x: (view.frame.size.width/2 - 40), y: 40, width: 80, height: 40)
        self.fronView.frame = CGRect(x: 30, y: 120, width: view.frame.size.width - 60, height: 550)
        
        //play button
        self.playButton.layer.cornerRadius = 25
        self.playButton.frame = CGRect(x: fronView.bounds.minX + 30, y: fronView.bounds.maxY - 70, width: fronView.bounds.width - 60, height: 50)
        
        //yellowView
        self.yellowView.frame = CGRect(x: fronView.bounds.minX + 15, y: fronView.bounds.minY + 20, width: 100, height: 100)
    }
}

// MARK:- Autolayout

extension ViewController {
    
}

