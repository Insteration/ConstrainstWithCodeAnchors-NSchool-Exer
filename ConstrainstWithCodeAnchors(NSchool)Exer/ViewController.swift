//
//  ViewController.swift
//  ConstrainstWithCodeAnchors(NSchool)Exer
//
//  Created by Art Karma on 5/13/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let blueView: UIView = {
        let myView = UIView()
        myView.backgroundColor = .blue
        myView.translatesAutoresizingMaskIntoConstraints = false
        return myView
    }()
    
    let redView: UIView = {
        let myView = UIView()
        myView.backgroundColor = .red
        myView.translatesAutoresizingMaskIntoConstraints = false
        return myView
    }()
    
    let greenView: UIView = {
        let myView = UIView()
        myView.backgroundColor = .green
        myView.translatesAutoresizingMaskIntoConstraints = false
        return myView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(blueView)
        view.addSubview(redView)
        view.addSubview(greenView)
        
//        x()
//        y()
//        z()
        createRedViewConstraint()
        createViewBlueConstraint()
        createGreenViewConstraint()
    }
    
    func x() {
        redView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        redView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        redView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        redView.heightAnchor.constraint(equalToConstant: 100).isActive = true

    }
    
    func y() {
        blueView.leftAnchor.constraint(equalTo: redView.rightAnchor, constant: -10).isActive = true
        blueView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        blueView.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    func z() {
        greenView.rightAnchor.constraint(equalTo: redView.leftAnchor, constant: 10).isActive = true
        greenView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        greenView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        greenView.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    func createViewBlueConstraint() {
        blueView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
        blueView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        blueView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1/4).isActive = true
        blueView.heightAnchor.constraint(equalTo: blueView.widthAnchor).isActive = true
        
    }
    
    func createRedViewConstraint() {
        
        redView.bottomAnchor.constraint(equalTo: self.blueView.topAnchor, constant: -50).isActive = true
        redView.widthAnchor.constraint(equalTo: self.blueView.widthAnchor).isActive = true
        redView.heightAnchor.constraint(equalTo: self.blueView.heightAnchor).isActive = true
        
        redView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 20).isActive = true
    }
    
    func createGreenViewConstraint() {
        
        greenView.topAnchor.constraint(equalTo: self.blueView.bottomAnchor, constant: 50).isActive = true
        greenView.widthAnchor.constraint(equalTo: self.blueView.widthAnchor).isActive = true
        greenView.heightAnchor.constraint(equalTo: self.blueView.heightAnchor).isActive = true
        
        greenView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -20).isActive = true
        
    }

}

