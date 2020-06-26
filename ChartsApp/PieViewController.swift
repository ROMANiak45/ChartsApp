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
        pieChart.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.width)
        pieChart.center = view.center
        view.addSubview(pieChart)
        
        var entries = [ChartDataEntry]()
        for number in 2..<12 {
            entries.append(ChartDataEntry(x: Double(number), y: Double.random(in: 1.0...Double(number))))
        }
        let set = PieChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.liberty()
        let pieChartData = PieChartData(dataSet: set)
        pieChart.data = pieChartData
    }
}
