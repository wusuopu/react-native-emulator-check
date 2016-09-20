package com.github.wusuopu.RNEmulatorCheck;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by lcj on 9/20/16.
 */
public class RNEmulatorCheckModule extends ReactContextBaseJavaModule {
    public RNEmulatorCheckModule(ReactApplicationContext reactContext) {
        super(reactContext);
    }

    @Override
    public String getName() {
        return "RNEmulatorCheck";
    }

    @Override
    public Map<String, Object> getConstants() {
        final Map<String, Object> constants = new HashMap<>();
        constants.put("isEmulator", false);
        return constants;
    }
}
