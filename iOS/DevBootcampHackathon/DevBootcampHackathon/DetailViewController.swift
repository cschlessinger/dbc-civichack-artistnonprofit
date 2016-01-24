//
//  DetailViewController.swift
//  DevBootcampHackathon
//
//  Created by Lucas Farah on 1/23/16.
//  Copyright © 2016 Lucas Farah. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

  @IBOutlet weak var sliderNeuroticism: UISlider!
  @IBOutlet weak var sliderAgreebleness: UISlider!
  @IBOutlet weak var sliderConscientiousness: UISlider!
  @IBOutlet weak var sliderOpenness: UISlider!
  @IBOutlet weak var sliderExtraversion: UISlider!
  
  @IBOutlet weak var label1: UILabel!
  @IBOutlet weak var label2: UILabel!
  @IBOutlet weak var label3: UILabel!
  @IBOutlet weak var label4: UILabel!
  @IBOutlet weak var label5: UILabel!
  
  
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  @IBAction func butBig5(sender: AnyObject) {
    
    self.sliderNeuroticism.hidden = false
    self.sliderExtraversion.hidden = false
    self.sliderConscientiousness.hidden = false
    self.sliderAgreebleness.hidden = false
    self.sliderOpenness.hidden = false
    
    UIView.animateWithDuration(0.1, animations: { () -> Void in
      self.sliderOpenness.setValue(0, animated: true)
      
      }) { (bol) -> Void in
        UIView.animateWithDuration(2, animations: { () -> Void in
          self.sliderOpenness.setValue(0.2, animated: true)
          }, completion: nil)
    }
    
    UIView.animateWithDuration(0.1, animations: { () -> Void in
      self.sliderNeuroticism.setValue(0, animated: true)
      
      }) { (bol) -> Void in
        UIView.animateWithDuration(2, animations: { () -> Void in
          self.sliderNeuroticism.setValue(0.75, animated: true)
          }, completion: nil)
    }
    
    UIView.animateWithDuration(0.1, animations: { () -> Void in
      self.sliderAgreebleness.setValue(0, animated: true)
      
      }) { (bol) -> Void in
        UIView.animateWithDuration(2, animations: { () -> Void in
          self.sliderAgreebleness.setValue(0.9, animated: true)
          }, completion: nil)
    }
    
    UIView.animateWithDuration(0.1, animations: { () -> Void in
      self.sliderConscientiousness.setValue(0, animated: true)
      
      }) { (bol) -> Void in
        UIView.animateWithDuration(2, animations: { () -> Void in
          self.sliderConscientiousness.setValue(0.1, animated: true)
          }, completion: nil)
    }
    
    UIView.animateWithDuration(0.1, animations: { () -> Void in
      self.sliderExtraversion.setValue(0, animated: true)
      
      }) { (bol) -> Void in
        UIView.animateWithDuration(2, animations: { () -> Void in
          self.sliderExtraversion.setValue(0.4, animated: true)
          }, completion: nil)
    }
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
