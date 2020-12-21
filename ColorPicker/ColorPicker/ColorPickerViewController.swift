//
//  ViewController.swift
//  ColorPicker
//
//  Created by Lingyi Zhan on 12/21/20.
//  Copyright © 2020 Lingyi Zhan. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var wholeView: UIView!
    
    @IBOutlet weak var colorPickerView: UIPickerView!
    
    @IBOutlet weak var colorLable: UILabel!
    
//    var colorPicker = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]
    
    var colorPicker = [ColorPicker(name: "red", uiColor: UIColor.red), ColorPicker(name: "orange", uiColor: UIColor.orange), ColorPicker(name: "yellow", uiColor: UIColor.yellow), ColorPicker(name: "green", uiColor: UIColor.green), ColorPicker(name: "blue", uiColor: UIColor.blue), ColorPicker(name: "purple", uiColor: UIColor.purple), ColorPicker(name: "brown", uiColor: UIColor.brown)]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        colorPickerView.delegate = self
        colorPickerView.dataSource = self
        colorLable.text = colorPicker[selectedRow(inComponent: 0)].name
        wholeView.backgroundColor = colorPicker[selectedRow(inComponent: 0)].uiColor
        
        
    }
    
    func selectedRow(inComponent component: Int) -> Int {
        let selected = component
        return selected
    }

    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colorPicker.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        wholeView.backgroundColor = colorPicker[row].uiColor
        return colorLable.text = colorPicker[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        wholeView.backgroundColor = colorPicker[row].uiColor
        return colorPicker[row].name
    }
    
    


}

/*
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "colorsCell", for: indexPath)
         
         cell.textLabel?.text = colors[indexPath.row]
         
         
 //        cell.backgroundColor = UIColor.init(named: colors[indexPath.row])

         
         return cell
     }


 }


 */

