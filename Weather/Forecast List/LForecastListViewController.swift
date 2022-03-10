//
//  LForecastListViewController.swift
//  Weather
//
//  Created by Rahul Garg on 10/03/22.
//

import UIKit

final class LForecastListViewController: UIViewController {
    //MARK: - IBOutlets
    @IBOutlet private var tableView: UITableView! {
        didSet {
            tableView.tableFooterView = UIView()
            tableView.keyboardDismissMode = .onDrag
            
            tableView.register(cellType: LForecaseListCell.self)
            
            tableView.delegate = self
            tableView.dataSource = self
        }
    }
    
    var viewModel: LForecastListViewModel?
    
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initNavigationBar()
        
        tableView.reloadData()
    }
    
    
    //MARK: - Private Helpers
    private func initNavigationBar() {
        title = viewModel?.country ?? View.ForecastList.title
    }
    
    private func showForecastDetailsView(forecast: LForecastDayModel?) {
        let vc = LForecastDetailsViewController.loadFromNib()
        vc.viewModel = LForecastDetailsViewModel(data: forecast)
        navigationController?.pushViewController(vc, animated: true)
    }
}

//MARK: - UITableViewDelegate, UITableViewDataSource
extension LForecastListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.forecastDayCount ?? 0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(with: LForecaseListCell.self, for: indexPath)
        cell.setData(model: viewModel?.forecaseDayObject(at: indexPath.row))
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        showForecastDetailsView(forecast: viewModel?.forecaseDayObject(at: indexPath.row))
    }
}
