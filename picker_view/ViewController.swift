//
//  ViewController.swift
//  picker_view
//
//  Created by 이태윤 on 2023/07/06.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let MAX_ARRAY_NUM = 7
    let PICKER_VIEW_COLUMN = 1
    var imageFileName = ["1.jpeg", "2.jpeg", "3.jpeg", "4.jpeg", "5.jpeg", "6.jpeg", "7.jpeg"]
    let PICKER_VIEW_HEIGHT : CGFloat = 80
    var imagearray = [UIImage?]()
    @IBOutlet var picker_view: UIPickerView!
    @IBOutlet var label: UILabel!
    @IBOutlet var image_view: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for i in 0..<MAX_ARRAY_NUM {
            let image = UIImage(named: imageFileName[i])
            imagearray.append(image)
        }
        label.text = imageFileName[0]
        image_view.image = imagearray[0]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return PICKER_VIEW_HEIGHT
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageview = UIImageView(image: imagearray[row])
        imageview.frame = CGRect(x:0, y:0, width:100, height:150)
        return imageview
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = imageFileName[row]
        image_view.image = imagearray[row]
    }
    
}

