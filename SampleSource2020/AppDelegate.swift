//
//  AppDelegate.swift
//  SampleSource2020
//
//  Created by 長内幸太郎 on 2020/05/01.
//

// AppDelegate　最初からあるファイル
// アプリ全体のライフサイクルを管理する
// アプリが動いている間、1個だけ動いてる

// 参考　https://qiita.com/KenNagami/items/766d5f95940c76a8c3cd

// Xcode11でアプリを作るとこの中身がガラッと変わるので注意！
// まずはXcode10でアプリを作った方で覚えよう（このアプリはXcode10で作った）

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    /// アプリ起動時に呼ばれる
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    /// アプリがバックからフォアグラウンドに来た時に呼ばれる
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    /// アプリがバックに行った時に呼ばれる
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    /// アプリがバックグランドの状態でアプリアイコンを押したときに呼ばれる
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    /// アプリがアクティブになった
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    /// アプリが終了する時呼ばれる
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

