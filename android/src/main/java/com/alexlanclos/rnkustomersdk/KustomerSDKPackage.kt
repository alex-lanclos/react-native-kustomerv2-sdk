package com.alexlanclos.rnkustomersdk

import com.facebook.react.ReactPackage
import com.facebook.react.bridge.NativeModule
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.ViewManager

class KustomerSDKPackage : ReactPackage {

    override fun createViewManagers(reactContext: ReactApplicationContext): List<ViewManager<*, *>> {
        return emptyList()
    }

    override fun createNativeModules(reactContext: ReactApplicationContext):
      MutableList<NativeModule> {
        return mutableListOf(
            KustomerSDKModule(reactContext)
        )
    }
}
