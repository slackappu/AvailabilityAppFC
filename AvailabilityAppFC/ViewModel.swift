
import SwiftUI

func fetchCSVData() {
    
    // just so i remember the url for getting csv from the sheet
    let url = URL(string: "https://docs.google.com/spreadsheets/u/1/d/e/2PACX-1vSzVBR1GS8ZPolMLL2mrJfZMqS5hn6b8lYsK41cG9-VYIhIt7BtQ58ueEyHtloUobn6J4gyhyNAsXW-/pub?output=csv&gid=0")!
    URLSession.shared.dataTask(with: url) { data, response, error in
        guard let data = data else { return }
        print(data)
    }
}




// Marks - chris.marks@d214.org

// Wiggin - daniel.wiggin@d214.org

// Hirschauer - brian.hirschauer@d214.org

// Heintzelman - jonathan.heintzelman@d214.org

// Spiering - kristen.spiering@d214.org

// Manthey - kent.manthey@d214.org

// Olsen - mikayla.olsen@d214.org

// Justeau - annelaure.champetier@d214.org

// Cassidy - chris.cassidy1@d214.org

// Michelin - matthew.micheli@d214.org

// Ballarini - jackie.ballarin@d214.org

// Kiepura - chris.kiepura@d214.org

// Pataky - kelley.pataky@d214.org

// Connell - britt.connell@d214.org

// Carlisle - timothy.carlisle@d214.org

// Decaluwe - nyssa.decaluwe@d214.org

// Finlayson - andy.finlayson@d214.org

// Moehrlin - gregory.moehrli@d214.org

// Burns - jaime.burns@d214.org

// Wold - shannon.wold@d214.org

// Ludois - courtney.ludois@d214.org

// Doherty - smitha.doherty@d214.org

// Poulos - zachary.poulos@d214.org

// Dubinski - stacy.dubinski@d214.org

// Wilk - celina.wilk@d214.org

// Blazek - jodi.blazek@d214.org

// Johnson - eric.johnson@d214.org

// Morley - niki.morley@d214.org

// Brownley - walter.brownley@d214.org

// Silver - samuel.silver@d214.org

// Skarb - keri.skarb@d214.org

// Bravo - cristina.bravo@d214.org

// Caccamo - alyssa.caccamo@d214.org

// Barry - dawn.barry@d214.org

// Yalda - heather.yalda@d214.org

// Kalchbrenner - amanda.kalchbrenner@d214.org

// Treutler - erin.treutler@d214.org





