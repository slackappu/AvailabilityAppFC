
import SwiftUI

func fetchCSVData() {
    
    // just so i remember the url for getting csv from the sheet
    let url = URL(string: "https://docs.google.com/spreadsheets/u/1/d/e/2PACX-1vSzVBR1GS8ZPolMLL2mrJfZMqS5hn6b8lYsK41cG9-VYIhIt7BtQ58ueEyHtloUobn6J4gyhyNAsXW-/pub?output=csv&gid=0")!
    URLSession.shared.dataTask(with: url) { data, response, error in
        guard let data = data else { return }
        print(data)
    }
}
