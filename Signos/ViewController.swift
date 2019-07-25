//
//  ViewController.swift
//  Signos
//
//  Created by Ytallo on 09/07/19.
//  Copyright © 2019 CursoiOS. All rights reserved.
//
import UIKit

class ViewController: UITableViewController {

    var signos: [String] = []
    var significadoSignos: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //configura signos
        signos.append("Áries")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Câncer")
        signos.append("Leão")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escorpião")
        signos.append("Sagitário")
        signos.append("Capricórnio")
        signos.append("Aquário")
        signos.append("Peixes")
        
        //configura significados
        significadoSignos.append("O ariano é uma pessoa cheia de energia e entusiasmo. Pioneiro e aventureiro, lhe encantam as metas, a liberdade e as idéias novas.")
        significadoSignos.append("Zeloso e possessivo, pode tender a ser inflexível e ressentido. As vezes pecam de ser cobiçosos e de permitir-se tudo.")
        significadoSignos.append("Versátil, curioso, divertido e quer experimentar tudo o que existe no mundo, então a sua companhia nunca é chata ou entediante.")
        significadoSignos.append("Tenaz, altamente criativo, leal, emocional, simpático, persuasivo.")
        significadoSignos.append("Criativo, apaixonado, generoso, caloroso, alegre, bem-humorado.")
        significadoSignos.append("Fiel, analítico, gentil, trabalhador, prático.")
        significadoSignos.append("Cooperativo, diplomático, gracioso, justo, social.")
        significadoSignos.append("Versátil, corajoso, apaixonado, teimoso, amigo verdadeiro.")
        significadoSignos.append("Generoso, idealista, grande senso de humor.")
        significadoSignos.append("Responsável, disciplinado, autocontrole, bom gerente.")
        significadoSignos.append("Progressivo, original, independente, humanitário.")
        significadoSignos.append("Compassivo, artístico, intuitivo, gentil, sábio, musical.")
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        
        celula.textLabel?.text = signos[indexPath.row]
        
        return celula
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alertaController = UIAlertController(title: "Significado do signo", message: significadoSignos[indexPath.row], preferredStyle: .alert)
        let acaoConfirmar = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alertaController.addAction(acaoConfirmar)
        present(alertaController, animated: true, completion: nil)
    }
    
}
