//
//  LLookupViewController.swift
//  Weather
//
//  Created by Rahul Garg on 10/03/22.
//

import UIKit

final class LLookupViewController: UIViewController {
    //MARK: - IBOutlets
    @IBOutlet private var cityTextField: UITextField! {
        didSet {
            cityTextField.delegate = self
        }
    }
    @IBOutlet private var lookupButton: UIButton! {
        didSet {
            lookupButton.layer.cornerRadius = 8
            lookupButton.layer.borderColor = UIColor.secondaryLabel.cgColor
            lookupButton.layer.borderWidth = 1
            lookupButton.clipsToBounds = true
        }
    }

    private var viewModel: LLookupViewModel!
    
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        viewModel = LLookupViewModel()
        
        initNavigationBar()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        view.endEditing(true)
    }
    
    
    //MARK: - Private Helpers
    private func initNavigationBar() {
        title = View.Lookup.title
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.view.backgroundColor = .white
    }
    
    private func showAlert(title: String?, message: String?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    private func showForecastListView() {
        let vc = LForecastListViewController.loadFromNib()
        vc.viewModel = LForecastListViewModel(data: viewModel?.model)
        navigationController?.pushViewController(vc, animated: true)
    }
    

    //MARK: - @IBAction
    @IBAction private func didTapLookup(_ sender: UIButton) {
        if let city = cityTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines), !city.isEmpty {
            sender.isUserInteractionEnabled = false
            
            viewModel?.fetchWeatherData(city: city, completion: { [weak self] success, error in
                
                DispatchQueue.main.async {
                    if let error = self?.viewModel?.error {
                        let message: String
                        if let error = error.message, !error.isEmpty {
                            message = error
                        } else {
                            message = HTTPErrorMessage.internalError
                        }
                        
                        self?.showAlert(title: nil, message: message)
                    } else if success {
                        self?.showForecastListView()
                    }
                    
                    sender.isUserInteractionEnabled = true
                }
            })
        } else {
            showAlert(title: "Please enter a valid city name", message: nil)
        }
    }
}

//MARK: - UITextFieldDelegate
extension LLookupViewController: UITextFieldDelegate {
    
}
