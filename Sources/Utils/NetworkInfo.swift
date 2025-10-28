import Foundation

/// Simple utility to detect current Bitcoin network (mainnet or testnet)
public enum NetworkInfo {
    public static var isTestnet: Bool {
        #if DEBUG
        return true
        #else
        return false
        #endif
    }

    public static var networkName: String {
        return isTestnet ? "testnet" : "mainnet"
    }
}
