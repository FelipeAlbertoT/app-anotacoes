//
//  ViewController.swift
//  Minhas anotacoes
//
//  Created by Felipe Treichel on 05/03/18.
//  Copyright © 2018 Felipe Treichel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textAnotacao: UITextView!
    let chave = "anotacao"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textAnotacao.text = recuperarAnotacao()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func recuperarAnotacao() -> String {
        if let anotacaoSalva = UserDefaults.standard.object(forKey: chave) {
            return anotacaoSalva as! String
        }
        
        return ""
    }
    
    @IBAction func salvarAnotacao(_ sender: Any) {
        if let anotacao = textAnotacao.text {
            UserDefaults.standard.set(anotacao, forKey: chave)
        }
    }
    
}

