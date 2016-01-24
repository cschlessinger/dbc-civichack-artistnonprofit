//
//  UserViewController.swift
//  DevBootcampHackathon
//
//  Created by Lucas Farah on 1/23/16.
//  Copyright © 2016 Lucas Farah. All rights reserved.
//

import UIKit

class UserViewController: UIViewController,ImagePickerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  func wrapperDidPress(images: [UIImage])
  {
//    self.dismissViewControllerAnimated(true, completion: nil)
  }
  func doneButtonDidPress(images: [UIImage])
  {
    self.dismissViewControllerAnimated(true, completion: nil)
    
  }
  func cancelButtonDidPress()
  {
    self.dismissViewControllerAnimated(true, completion: nil)
    
  }
  
  @IBAction func butCamera(sender: AnyObject)
  {
    let imagePickerController = ImagePickerController()
    imagePickerController.delegate = self
    presentViewController(imagePickerController, animated: true, completion: nil)
  }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
