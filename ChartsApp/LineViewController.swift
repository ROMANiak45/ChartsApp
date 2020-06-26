//
//  LineViewController.swift
//  ChartsApp
//
//  Created by Roman Croitor on 26/06/2020.
//  Copyright © 2020 Roman Croitor. All rights reserved.
//

import UIKit
import Charts

class LineViewController: UIViewController, ChartViewDelegate {
    
    let lineChart = LineChartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lineChart.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        lineChart.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.width)
        lineChart.center = view.center
        view.addSubview(lineChart)
        
        var entries = [ChartDataEntry]()
        for number in 0..<30 {
            entries.append(ChartDataEntry(x: Double(number), y: Double.random(in: 0.0...Double(number))))
        }
        let set = LineChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.joyful()
        let lineChartData = LineChartData(dataSet: set)
        lineChart.data = lineChartData
    }
}
