# GoogleMobileAdsCell

Usage as section header:

```swift
let bannerViewHeight = GADBannerView(adSize: kGADAdSizeBanner).frame.size.height

override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
         return bannerViewHeight + 15
}

override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
 
         let cell = AdCell(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: bannerViewHeight))
                            
         let bannerView = AdCell.cellBannerView(rootVC: self, frame:cell.bounds)
         bannerView.translatesAutoresizingMaskIntoConstraints = false
         cell.addSubview(bannerView)
                            
         bannerView.centerXAnchor.constraint(equalTo: cell.centerXAnchor).isActive = true
         bannerView.centerYAnchor.constraint(equalTo: cell.centerYAnchor, constant: -3).isActive = true

         let request = GADRequest()
         bannerView.load(request)

         return cell
    }
