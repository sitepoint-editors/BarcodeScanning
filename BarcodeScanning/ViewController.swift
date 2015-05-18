//
//  ViewController.swift
//  BarcodeScanning
//
//  Created by Jordan Morgan on 5/16/15.
//  Copyright (c) 2015 Jordan Morgan. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVCaptureMetadataOutputObjectsDelegate
{
    /// Helper property and not directly used. The camera layer's bounds will be set to this.
    @IBOutlet weak var cameraView: UIView!
    /// Will show the type of metadata being displayed.
    @IBOutlet weak var lblDataType: UILabel!
    /// Will show the information from the capture metadata.
    @IBOutlet weak var lblDataInfo: UILabel!
    
    //MARK: Properties
    /// Runs the capture session.
    let captureSession = AVCaptureSession()
    /// The device used as input for the capture session.
    var captureDevice:AVCaptureDevice?
    /// The UI layer to display the feed from the input source, in our case, the camera.
    var captureLayer:AVCaptureVideoPreviewLayer?
    
    //MARK: View lifecycle
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool)
    {
        super.viewDidAppear(animated)
    }
    
    //MARK: Session Startup
    /**
    Begins the capture session.
    */
    private func setupCaptureSession()
    {
    
    }
    
    /**
    Handles setting up the UI to show the camera feed.
    
    :param: completion Completion handler to invoke if setting up the feed was successful.
    */
    private func setupPreviewLayer(completion:() -> ())
    {
        
    }
    
    //MARK: Metadata capture
    /**
    Handles identifying what kind of data output we want from the session, in our case, metadata and the available types of metadata.
    */
    private func addMetaDataCaptureOutToSession()
    {
        
    }
    
    //MARK: Delegate Methods
    func captureOutput(captureOutput: AVCaptureOutput!, didOutputMetadataObjects metadataObjects: [AnyObject]!, fromConnection connection: AVCaptureConnection!)
    {
        
    }
    
    //MARK: Utility Functions
    /**
    Shows any error that may occur via an alert view.
    
    :param: error The error message.
    */
    private func showError(error:String)
    {
        let alertController = UIAlertController(title: "Error", message: error, preferredStyle: .Alert)
        let dismiss:UIAlertAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Destructive, handler:{(alert:UIAlertAction!) in
            alertController.dismissViewControllerAnimated(true, completion: nil)
        })
        alertController.addAction(dismiss)
        self.presentViewController(alertController, animated: true, completion: nil)
    }

}

