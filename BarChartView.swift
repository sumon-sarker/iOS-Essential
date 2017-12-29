//
//  SupervisorDashboardController.swift
//  ChatBoard
//
//  Created by Sumon on 28/12/2017.
//  Copyright © 2017 Sumon Sarker. All rights reserved.
//

import UIKit
import Charts

class SupervisorDashboardController: UIViewController {
    
    @IBOutlet weak var ChatBoardChart: BarChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Do any additional Chart setup after loading the view.
        let months = [1,2,3,4,5,6]
        let TicketOpened = [2.0, 4.0, 2.0, 3.0, 5.0, 2.0]
        let TicketClosed = [1.0, 8.0, 1.0, 6.0, 2.0, 7.0]
        setLineChart(dataPoints: months, OpenedTicket: TicketOpened, ClosedTicket: TicketClosed)
    }

    func setLineChart(dataPoints: [Int], OpenedTicket: [Double], ClosedTicket: [Double]) {
        
        var TicketOpened: [BarChartDataEntry] = []
        var TicketClosed: [BarChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let Opened = BarChartDataEntry(x: Double(i)+1, y: OpenedTicket[i]+0)
            let Closed = BarChartDataEntry(x: Double(i)+1, y: ClosedTicket[i]+0)
            
            TicketOpened.append(Opened)
            TicketClosed.append(Closed)
        }
        
        let ChartDataSet1 = BarChartDataSet(values: TicketOpened, label: "Ticket Opened")
        let ChartDataSet2 = BarChartDataSet(values: TicketClosed, label: "Ticket Closed")
        
        ChartDataSet1.colors =  [UIColor(red: 0, green: 255, blue: 0, alpha: 1)]
        ChartDataSet2.colors =  [UIColor(red: 255, green: 0, blue: 0, alpha: 1)]
        
        let ChartDataSets : [BarChartDataSet] = [ChartDataSet1,ChartDataSet2]
        
        let ChartData = BarChartData(dataSets: ChartDataSets)

        ChatBoardChart.chartDescription?.text = ""
        ChatBoardChart.animate(xAxisDuration: 2.0, yAxisDuration: 3.0)
        ChatBoardChart.rightAxis.drawGridLinesEnabled   = false
        ChatBoardChart.rightAxis.drawAxisLineEnabled    = false
        ChatBoardChart.rightAxis.drawLabelsEnabled      = false
        
        ChatBoardChart.leftAxis.drawGridLinesEnabled    = false
        ChatBoardChart.leftAxis.drawAxisLineEnabled     = false
        ChatBoardChart.leftAxis.drawLabelsEnabled       = false
        
        ChatBoardChart.data = ChartData
    }

}
