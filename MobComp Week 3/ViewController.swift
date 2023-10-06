//
//  ViewController.swift
//  MobComp Week 3
//
//  Created by MacBook Pro on 29/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var proses: UILabel!
    @IBOutlet weak var hasil: UILabel!
    
    var proseshitung:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ca()
        // Do any additional setup after loading the view.
    }
    
    func ca()
    {
        proseshitung = ""
        proses.text = ""
        hasil.text = ""
    }
    
    func ringkas(value : String){
        proseshitung = proseshitung + value
        proses.text = proseshitung
    }
    
    func formatresult(result:Double) -> String
    {
        if (result.truncatingRemainder(dividingBy: 1)==0)
        {
            return String(format: "%.0f", result)
        }
        else
        {
            return String(format: "%.2f", result)
        }
        
    }

    @IBAction func clearall(_ sender: Any) {
        ca()
    }
    
    @IBAction func plusmin(_ sender: Any) {
        
    }
    
    @IBAction func persen(_ sender: Any) {
        
    }
    
    @IBAction func bagi(_ sender: Any) {
        ringkas(value: "/")
    }

    @IBAction func kali(_ sender: Any) {
        ringkas(value: "*")
    }
    
    @IBAction func kurang(_ sender: Any) {
        ringkas(value: "-")
    }
    
    @IBAction func tambah(_ sender: Any) {
        ringkas(value: "+")
    }
    
    @IBAction func equal(_ sender: Any) {
        let expression = NSExpression(format: proseshitung)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultstring = formatresult(result: result)
        hasil.text = resultstring
    }
    
    @IBAction func koma(_ sender: Any) {
        ringkas(value: "/")
    }
    
    @IBAction func nol(_ sender: Any) {
        ringkas(value: "0")
    }
    
    @IBAction func satu(_ sender: Any) {
        ringkas(value: "1")
    }
    
    @IBAction func dua(_ sender: Any) {
        ringkas(value: "2")
    }
    
    @IBAction func tiga(_ sender: Any) {
        ringkas(value: "3")
    }
    
    @IBAction func empat(_ sender: Any) {
        ringkas(value: "4")
    }
    
    @IBAction func lima(_ sender: Any) {
        ringkas(value: "5")
    }
    
    @IBAction func enam(_ sender: Any) {
        ringkas(value: "6")
    }
    
    @IBAction func tujuh(_ sender: Any) {
        ringkas(value: "7")
    }
    
    @IBAction func delapan(_ sender: Any) {
        ringkas(value: "8")
    }
    
    @IBAction func sembilan(_ sender: Any) {
        ringkas(value: "9")
    }
    
    
}

