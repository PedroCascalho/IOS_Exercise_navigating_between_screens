//
//  TelaXViewController.swift
//  NavegandoEntreTelas
//
//  Created by Usuário Convidado on 25/04/23.
//

import UIKit

class TelaXViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func abrirVerdeScene(_ sender: Any) {
        performSegue(withIdentifier: "TelaXParaTelaVerdeSegue", sender: nil)
    }
    
    @IBAction func abrirVermelhoScene(_ sender: Any) {
        performSegue(withIdentifier: "TelaXParaTelaVermelhaSegue", sender: nil)
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "TelaXParaTelaVermelhaSegue"{
            let t = segue.destination as! TelaVermelhaViewController
            t.textodoLabel = "Boa noite, passando uma frase da tela x para a tela vermelha"
        }
     }
    

}
