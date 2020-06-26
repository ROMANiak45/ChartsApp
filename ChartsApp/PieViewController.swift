//
//  PieViewController.swift
//  ChartsApp
//
//  Created by Roman Croitor on 26/06/2020.
//  Copyright © 2020 Roman Croitor. All rights reserved.
//

import UIKit
import Charts

class PieViewController: UIViewController, ChartViewDelegate {
    
    let pieChart = PieChartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pieChart.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
    }
}
