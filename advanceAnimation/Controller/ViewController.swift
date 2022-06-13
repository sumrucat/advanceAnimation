//
//  ViewController.swift
//  advanceAnimation
//
//  Created by Apple on 13/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    
// MARK:- creating views

    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.alwaysBounceVertical = false
        scrollView.bounces = false
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()

    let scrollViewContainer: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.alignment = .center
        view.spacing = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let redView: UIView = {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: 500).isActive = true
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let blueView: UIView = {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: 500).isActive = true
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

// MARK:- LifeCycle Mehods

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        scrollviewSetup()
        containerViewSetup()
        viewsSetup()
    }

}

// MARK:- Autolayout

extension ViewController {
    
    func setupViews() {
        view.addSubview(scrollView)
        scrollView.addSubview(scrollViewContainer)
        scrollViewContainer.addArrangedSubview(redView)
        scrollViewContainer.addArrangedSubview(blueView)
    }
    
    func scrollviewSetup() {
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    func containerViewSetup() {
        scrollViewContainer.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        scrollViewContainer.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        scrollViewContainer.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 60).isActive = true
        scrollViewContainer.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        // this is important for scrolling
        scrollViewContainer.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
    }
    
    func viewsSetup() {
        redView.widthAnchor.constraint(equalTo: scrollViewContainer.widthAnchor, constant: -60).isActive = true
        blueView.widthAnchor.constraint(equalTo: scrollViewContainer.widthAnchor, constant: -60).isActive = true
        
    }
}

