import UIKit
import GoogleMobileAds

class AdCell: UITableViewCell {
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.backgroundColor = .clear
    }
    
    class func cellBannerView(rootVC: UIViewController, frame: CGRect) -> GADBannerView {

           let bannerView = GADBannerView()

           bannerView.frame = frame

           bannerView.rootViewController = rootVC

           bannerView.adUnitID = "adUnitID"

        bannerView.adSize = GADCurrentOrientationAnchoredAdaptiveBannerAdSizeWithWidth(frame.size.width)

           return bannerView

       }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
