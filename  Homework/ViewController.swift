//
//  ViewController.swift
//   Homework
//
//  Created by Александр Севастьянов on 12.03.2023.
//

import UIKit

class ViewController: UIViewController {

    var sumClick = 0
    
    @IBOutlet weak var scoreView: UILabel!
    
    //Кнопка с подсчетом нажатий на нее
    @IBAction func clickerButtonView(_ sender: Any) {
        print("Push button \(sumClick)")
        sumClick += 1
        scoreView.text = "Значение счетчика: \(sumClick)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        scoreView.text = "0" //Отображение label при запуске приложения
    }
    
}
