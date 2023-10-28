//
//  ViewController.swift
//  Arton2
//
//  Created by Michael Walter on 26.10.23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var antwort: UILabel!
    @IBOutlet weak var gut: UIButton!
    @IBOutlet weak var schlecht: UIButton!
    
    var Answerlist: [String] = ["RICHTIGE ANTWORT","VRESCH", "Hast schon mal besser gelogen"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        antwort.text = "";
    }

    func GetRandomAnswer() -> String {
        
        let rint = Int.random(in: 0..<Answerlist.count)
        return Answerlist[rint]
    }
    
    func ShowAnswer() {
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(0)) {
            self.antwort.text = "";
        }
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(3)) {
            self.antwort.text = self.GetRandomAnswer()
        }
    }
    
    @IBAction func schlechttap(_ sender: Any) {
        ShowAnswer()
    }
    
    @IBAction func guttap(_ sender: Any) {
        ShowAnswer()
    }
}
