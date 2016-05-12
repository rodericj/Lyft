# Lyft

[![CI Status](http://img.shields.io/travis/Genady Okrain/Lyft.svg?style=flat)](https://travis-ci.org/Genady Okrain/Lyft)
[![Version](https://img.shields.io/cocoapods/v/Lyft.svg?style=flat)](http://cocoapods.org/pods/Lyft)
[![License](https://img.shields.io/cocoapods/l/Lyft.svg?style=flat)](http://cocoapods.org/pods/Lyft)
[![Platform](https://img.shields.io/cocoapods/p/Lyft.svg?style=flat)](http://cocoapods.org/pods/Lyft)
## Requirements
Please signup and read: https://developer.lyft.com

## Installation

Lyft is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "Lyft"
```

## Usage
### API Keys
```swift
Lyft.set(clientId: "clientId", clientSecret: "clientSecret")
```

### Deeplinking
```swift
Lyft.openLyftRide(rideType: .Line, destination: Address(lat: 37.7763592, lng: -122.4242038))
```
Don't forget to update Info.plist to support lyft://

### Authentication
#### Client Credentials (2-legged) flow for public endpoints
```swift
Lyft.publicLogin { success, error in

}
```

### 3-Legged flow for accessing user-specific endpoints
```swift
Lyft.userLogin(scope: "public") { success, error in

}
```

You will need to setup a redirect too:
```swift
func application(app: UIApplication, openURL url: NSURL, options: [String : AnyObject]) -> Bool {
  return Lyft.openURL(url)
}
```

### Availability
```swift
Lyft.requestRideTypes(rideTypesQuery: RideTypesQuery(lat: 37.7833, lng: -122.4167)) { result, response, error in

}

Lyft.requestETA(etaQuery: ETAQuery(lat: 37.7833, lng: -122.4167)) { result, response, error in

}

Lyft.requestCost(costQuery: CostQuery(startLat: 37.7833, startLng: -122.4167, endLat: 37.7972, endLng: -122.4533)) { result, response, error in

}

Lyft.requestNearbyDrivers(nearbyDriversQuery: NearbyDriversQuery(lat: 37.7789, lng: -122.45690)) { result, response, error in

}
```

### Rides
```swift 
Lyft.requestRide(requestRideQuery: RequestRideQuery(originLat: 34.305658, originLng: -118.8893667, originAddress: "123 Main St, Anytown, CA", destinationLat: 36.9442175, destinationLng: -123.8679133, destinationAddress: "123 Main St, Anytown, CA", rideType: .Lyft)) { result, response, error in

}

Lyft.requestRideDetails(rideId: "123456789") { result, response, error in

}

Lyft.cancelRide(rideId: "123456789") { result, response, error in

}

Lyft.rateAndTipRide(rideId: "123456789", rateAndTipQuery: RateAndTipQuery(rating: 5, tipAmount: 100, tipCurrency: "USA", feedback: "great ride!")  { result, response, error in

}

Lyft.requestRideReceipt(rideId: "123456789") { result, response, error in

}

Lyft.requestRidesHistory(ridesHistoryQuery: RidesHistoryQuery(startTime: "2015-12-01T21:04:22Z", endTime: "2015-12-04T21:04:22Z", limit: "10")) { result, response, error in

}
```

## Author

Genady Okrain, genady@okrain.com

## License

Lyft is available under the MIT license. See the LICENSE file for more info.
