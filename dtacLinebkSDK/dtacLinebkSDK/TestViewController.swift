//
//  TestViewController.swift
//  dtacLinebkSDK
//
//  Created by mac_riverpark on 29/10/2564 BE.
//

import UIKit

public final class TestViewController: UIViewController {

    public override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    public class func show() {
        let alertStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let alertVC = alertStoryboard.instantiateViewController(withIdentifier: "TestViewController") as! TestViewController
        let keyWindow = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            if let viewController = keyWindow?.rootViewController  {
                viewController.present(alertVC, animated: false, completion: {
                   
                })
                
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
