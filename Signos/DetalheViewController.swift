//
//  DetalheViewController.swift
//  Signos
//
//  Created by Ytallo Gadelha on 12/05/26.
//  Copyright © 2026 CursoiOS. All rights reserved.
//

import Foundation
import UIKit

class DetalheViewController: UIViewController {
    
    @IBOutlet weak var detailLabel: UILabel!
    
    var signo: String!
    var detalheSigno: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configSigno()
    }
    
    func configSigno() {
        self.title = signo
        detailLabel.text = detalheSigno
    }
    
}
