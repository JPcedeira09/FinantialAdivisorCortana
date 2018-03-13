
//
//  ChartTesteViewController.swift
//  FinantialAdivisorCortana
//
//  Created by João Paulo  Tieles on 13/03/18.
//  Copyright © 2018 João Paulo  Tieles. All rights reserved.
//

import UIKit
import RKPieChart

class ADVOverviewReportViewController: UIViewController {

    @IBOutlet weak var chart: UIView!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        let firstItem: RKPieChartItem = RKPieChartItem(ratio: 50, color: UIColor.orange)
        let secondItem: RKPieChartItem = RKPieChartItem(ratio: 30, color: UIColor.gray)
        let thirdItem: RKPieChartItem = RKPieChartItem(ratio: 20, color: UIColor.yellow)
        
        let chartView = RKPieChartView(items: [firstItem, secondItem, thirdItem], centerTitle: "")
        chartView.circleColor = .clear
        chartView.translatesAutoresizingMaskIntoConstraints = false
        chartView.arcWidth = 40
        
        chartView.isIntensityActivated = false
        chartView.style = .butt
        chartView.isTitleViewHidden = true
        chartView.isAnimationActivated = true
        self.chart.addSubview(chartView)
        chartView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        chartView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        chartView.centerXAnchor.constraint(equalTo: self.chart.centerXAnchor).isActive = true
        chartView.centerYAnchor.constraint(equalTo: self.chart.centerYAnchor).isActive = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
