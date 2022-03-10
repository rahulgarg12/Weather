//
//  LLookupViewModel.swift
//  Weather
//
//  Created by Rahul Garg on 10/03/22.
//

import Foundation

final class LLookupViewModel {
    //MARK: - Properties
    var model: LLocationCurrentModel?
    
    var error: LLocationErrorModel? {
        return model?.error
    }
    
    func fetchWeatherData(city: String,
                          completion: @escaping (Bool, Error?) -> ()) {
        
        let queryParams: NSDictionary = [APIKey.key: Value.apiKey,
                                         APIKey.query: city,
                                         APIKey.days: Value.days]
        NetworkHandler().request(urlString: APIList.forecast, method: .get, queryParams: queryParams) { [weak self] (model: LLocationCurrentModel) in
            
            self?.model = model
            
            if let error = model.error {
                completion(false, HTTPError.localizedDescription(error.message ?? HTTPErrorMessage.internalError))
            } else {
                completion(true, nil)
            }
        } errorHandler: { error in
            completion(false, error)
        }
    }
}
