//
//  ViewController.swift
//  Protocols
//
//  Created by Sinuhé Ruedas on 06/10/21.
//

import UIKit

class ViewController: UIViewController, ViewControllerProtocol {
    

//MARK: PROTOCOL PROPERTIES
    var inputData: [String]?
    
//MARK: PRIVATE PROPERTIES
    override func viewDidLoad() {
        super.viewDidLoad()
        inputData = provideData()
        order(data: inputData ?? [])
    }

//MARK: PROTOCOL METHODS

    func order(data: [String]) -> [String] {
        var newData: [String] = data
        return newData.sorted()
    }

//MARK: PRIVATE METHODS
    private func provideData() -> [String] {
        return ["Ana", "Leonardo", "George", "Maria"]
    }
}


