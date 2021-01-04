//
//  KustomerSDK.swift
import KustomerChat

@objc(KustomerSDK)
class KustomerSDK: NSObject {

 @objc(identify:)
 func identify(jwt: String) -> Void {
   DispatchQueue.main.async {
    Kustomer.identifyCurrentCustomer(jwt: jwt, { result in
      switch result {
      case .success:
        print("Success")
      case .failure(let error):
        print(error.localizedDescription)
      }
    })
   }
 }
    
 @objc(presentSupport)
 func presentSupport() -> Void {
   DispatchQueue.main.async {
    Kustomer.show()
   }
 }
    
 @objc(openNewConversation)
 func openNewConversation() -> Void {
   DispatchQueue.main.async {
    Kustomer.openNewChat()
   }
 }
    
 @objc(openConversationsCount)
 func openConversationsCount() -> Int {
    return Kustomer.openConversationCount()
 }
    
 @objc(logout)
 func logout() -> Void {
   DispatchQueue.main.async {
    Kustomer.logOut({ error in
        if error != nil {
          print("there was a problem \(error?.localizedDescription ?? "")")
        }
      })
   }
 }
    
//@objc(describeCustomer:)
//    func describeCustomer(custom: [String]) -> Void {
//    Kustomer.chatProvider.describeCurrentCustomer(custom) { result in
//      switch result {
//        case .success:
//          print("ok")
//        case .failure(let error):
//          print(error)
//      }
//    }
// }
    
}
