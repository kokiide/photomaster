//
//  ViewController.swift
//  PhotoMaster
//
//  Created by Koki Ide on 2017/04/22.
//  Copyright © 2017 kokiide. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet var photoImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //camera button method
    @IBAction func onTappedCameraButton() {
        presentPickerController(sourceType: .camera)
        
    }
    
    @IBAction func onTappedAlbumButton() {
        presentPickerController(sourceType: .photoLibrary)
        
    }
    
    func presentPickerController(sourceType: UIImagePickerControllerSourceType) {
        if UIImagePickerController.isSourceTypeAvailable(sourceType) {
            let picker = UIImagePickerController()
            picker.sourceType = sourceType
            picker.delegate = self
            self.present(picker, animated: true, completion: nil)
        }
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String: Any]){
        self.dismiss(animated: true, completion: nil)
        
        //画像出力
        photoImageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
    }
    
    func drawText(image: UIImage) -> UIImage {
    
    let text = "LifeisTech!/niPhoneアプリ開発コース"
    
    let textFontAttributes = [
    NSFontAttributeName: UIFont(name: "Arial", size: 120)!,
    NSForegroundColorAttributeName: UIColor.red]
    }
    

}

