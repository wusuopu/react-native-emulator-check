import { NativeModules } from 'react-native'

const RNEmulatorCheck = NativeModules.RNEmulatorCheck

export default {
  isEmulator() {
    return RNEmulatorCheck.isEmulator
  }
}
