//
//  ViewControllerProtocol.swift
//  Protocols
//
//  Created by Sinuhé Ruedas on 06/10/21.
//

import Foundation

//MARK: - PROTOCOL

protocol ViewControllerProtocol {
    var inputData: [String]? { get set }
    func order(data: [String]) -> [String]
}
