// ********************** NotamAPI *********************************
// * Copyright © Cenith Innovations - All Rights Reserved
// * Created on 12/17/20, for 
// * Matthew Elmore <matt@cenithinnovations.com>
// * Unauthorized copying of this file is strictly prohibited
// ********************** NotamAPI *********************************


import Foundation
import Combine

@available(OSX 10.15, *)
/// Classy way to get the NOTAMs... Thanks ATIS. I edited it so the architecture matched the other APIs.
public class NotamAPI: ObservableObject {
    
    /// New School way of getting the NOTAMs
    @Published public var store: NotamList = [:]
    
    /// Goes out and grabs the NOTAMs for the ICAOs listed.
    /// - Parameter icaos: An array of ICAOs.
    public func getNotams(icaos: [String]) {
        let stations = icaos.map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
        let url = URL(string: "https://www.notams.faa.gov/dinsQueryWeb/queryRetrievalMapAction.do")!
        var request = URLRequest(url: url)
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
        let stationData = (stations.reduce("") {$0 + " " + $1 }).trimmingCharacters(in: .whitespacesAndNewlines)
        let postData = "Report=Report&actionType=notamRetrievalByICAOs&retrieveLocId=\(stationData)"
        request.httpBody = postData.data(using: .utf8)
        let session = URLSession(configuration: .ephemeral)
        let task = session.dataTask(with: request) { (data, response, error) in
            guard let data = data, error == nil else {
                //We can safely force-unwrap the error because we test for non-nil above
                print("Data not found, error encountered: \(error!)")
                return
            }
            if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode != 200 {
                print("Recieved non-200 response, something is ill-formed with the POST request")
                return
            }
            let responseString = String(decoding: data, as: UTF8.self)
            let currentNotams = NotamParser(htmlData: responseString).notams
            DispatchQueue.main.async {
                self.store = currentNotams
            }
        }
        task.resume()
    }
}


