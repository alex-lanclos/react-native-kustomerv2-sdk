package com.alexlanclos.rnkustomersdk

import com.facebook.react.bridge.*
import com.kustomer.core.models.KusResult
import com.kustomer.ui.Kustomer

class KustomerSDKModule(reactContext: ReactApplicationContext) :
        ReactContextBaseJavaModule(reactContext) {

    override fun getName(): String {
        return "KustomerSDK"
    }

    @ReactMethod
    fun identify(hash: String) {
        Kustomer.getInstance().logIn(hash) {
            when (it) {
                is KusResult.Success -> it.data
                is KusResult.Error -> it.exception.localizedMessage
            }
        }
    }

    @ReactMethod
    fun presentSupport() {
        Kustomer.getInstance().open()
    }

    @ReactMethod
    fun openNewConversation() {
        Kustomer.getInstance().openNewConversation()
    }

    @ReactMethod
    fun openConversationsCount(promise: Promise) {
        promise.resolve(Kustomer.getInstance().observeActiveConversationIds())
    }

    @ReactMethod
    fun logout() {
        Kustomer.getInstance().logOut()
    }

    // @ReactMethod
    // suspend fun describeCustomer(data: ReadableMap) {
    //     val attributes = KusCustomerDescribeAttributes(
    //             emails = listOf(KusEmail(data.getString("email").toString())),
    //             phones = listOf(KusPhone(data.getString("phone").toString()))
    //     )

    //     val result = Kustomer.getInstance().describeCustomer(attributes)
    // }
}
