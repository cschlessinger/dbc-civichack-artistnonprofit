//
//  DetailViewController.swift
//  DevBootcampHackathon
//
//  Created by Lucas Farah on 1/23/16.
//  Copyright © 2016 Lucas Farah. All rights reserved.
//

import UIKit
import MapKit
class DetailViewController: UIViewController,ImagePickerDelegate {

  @IBOutlet weak var lblMap: UILabel!
  @IBOutlet weak var map: MKMapView!
  
  
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
  
  
  @IBOutlet weak var lblAbout: UILabel!
  @IBOutlet weak var txtDescription: UITextView!
  @IBOutlet weak var imgvCalendar: UIImageView!
  
  @IBOutlet weak var lblCalendar: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      
      self.label1.hidden = false
      self.label2.hidden = false
      self.label3.hidden = false
      self.label4.hidden = false
      self.label5.hidden = false
      

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

  
  @IBOutlet weak var butAddress: UIButton!
  
  @IBAction func butAddress(sender: AnyObject)
  {
    self.map.hidden = false
    print("lala")
    self.label1.hidden = true
    self.label2.hidden = true
    self.label3.hidden = true
    self.label4.hidden = true
    self.label5.hidden = true
    lblAbout.hidden = true
    lblCalendar.hidden = true
    imgvCalendar.hidden = true
    txtDescription.hidden = true

    // Drop a pin

    
    let startCoord = CLLocationCoordinate2DMake(37.727935, -122.453351)
    let adjustedRegion = self.map.regionThatFits(MKCoordinateRegionMakeWithDistance(startCoord, 1000, 1000))
    self.map.setRegion(adjustedRegion, animated: true)
    
    let dropPin = MKPointAnnotation()
    dropPin.coordinate = startCoord
    dropPin.title = "175 Phelan Avenue - San Francisco - CA"
    self.map.addAnnotation(dropPin)


  }
  
  
  
  
  
  
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
   
  }
  
  @IBAction func butInfo(sender: AnyObject) {
    
    self.label1.hidden = true
    self.label2.hidden = true
    self.label3.hidden = true
    self.label4.hidden = true
    self.label5.hidden = true
    self.map.hidden = true

    
    self.sliderNeuroticism.hidden = true
    self.sliderExtraversion.hidden = true
    self.sliderConscientiousness.hidden = true
    self.sliderAgreebleness.hidden = true
    self.sliderOpenness.hidden = true
    
    
    lblAbout.hidden = false
    lblCalendar.hidden = false
    imgvCalendar.hidden = false
    txtDescription.hidden = false
    
  }
  @IBAction func butBig5(sender: AnyObject) {
    
    lblAbout.hidden = true
    lblCalendar.hidden = true
    imgvCalendar.hidden = true
    txtDescription.hidden = true
    self.map.hidden = true

    
    self.label1.hidden = false
    self.label2.hidden = false
    self.label3.hidden = false
    self.label4.hidden = false
    self.label5.hidden = false

    
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

  
  func wrapperDidPress(images: [UIImage])
  {
    self.dismissViewControllerAnimated(true, completion: nil)
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
