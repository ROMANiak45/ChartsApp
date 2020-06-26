//
//  ViewController.swift
//  ChartsApp
//
//  Created by Roman Croitor on 26/06/2020.
//  Copyright © 2020 Roman Croitor. All rights reserved.
//

import UIKit
import Charts

class BarViewController: UIViewController, ChartViewDelegate {
    
    let barChart = BarChartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        barChart.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        barChart.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.width)
        barChart.center = view.center
        view.addSubview(barChart)
        
        var entries = [BarChartDataEntry]()
        for number in 0..<30 {
            entries.append(BarChartDataEntry(x: Double(number), y:Double.random(in: 0.0...Double(number))))
        }
        let set = BarChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.colorful()
        let barChartData = BarChartData(dataSet: set)
        barChart.data = barChartData
    }
}

