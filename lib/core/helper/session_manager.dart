import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SessionManager {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static SharedPreferences? _preferences;

  static const _isLOGIN = "is_login";
  static const _userID = "user_id";
  static const _userNAME = "user_name";
  static const _userEMAIL = "email";
  static const _userMobile = "mobile";
  static const _userType = 'user_type';
  static const _token = 'token';
  static const _sessionId = 'session_id';
  static const _deliveryPinCode = 'delivery_pin_code';
  static const _deliveryLocation = 'delivery_location';
  static const _isSkipLogin = 'skip_login';

  static const String accessToken = 'access_token';
  static const String refreshToken = 'refresh_token';
  static const String _notificationToken = 'notification_token';

  static const String rememberMe = 'remember_me';
  static const String loginId = 'login_id';
  static const String password = 'password';
  static const String appVersion = 'app_version';
  static const String _isWelcome = 'is_welcome';


  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static dynamic setUserLoggedIn(bool isLogin) {
    _preferences!.setBool(_isLOGIN, isLogin);
  }

  static bool isLoggedIn() {
    return _preferences!.getBool(_isLOGIN) ?? false;
  }

  static void setSkipLogin(bool isSkip) {
    _preferences!.setBool(_isSkipLogin, isSkip);
  }

  static bool isSkipLogin() {
    return _preferences!.getBool(_isSkipLogin) ?? false;
  }

  static void setDeliveryPinCode(String pinCode) {
    _preferences!.setString(_deliveryPinCode, pinCode);
  }

  static String getDeliveryPinCode() {
    return _preferences!.getString(_deliveryPinCode) ?? '462016';
  }

  static void setDeliveryLocation(String deliveryLocation) {
    _preferences!.setString(_deliveryLocation, deliveryLocation);
  }

  static String? getDeliveryLocation() {
    return _preferences!.getString(_deliveryLocation);
  }

  static void setToken(String token) {
    _preferences!.setString(_token, token);
  }

  static String getToken() {
    return _preferences!.getString(_token) ?? '';
  }

  static void setSessionId(String sessionId) {
    _preferences!.setString(_sessionId, sessionId);
  }

  static String getSessionId() {
    return _preferences!.getString(_sessionId) ?? '';
  }

  static dynamic setUserID(String userId) {
    _preferences!.setString(_userID, userId);
  }

  static dynamic getUserId() {
    return _preferences!.getString(_userID);
  }

  static dynamic setUserName(String userName) {
    _preferences!.setString(_userNAME, userName);
  }

  static dynamic getUserName() {
    return _preferences!.getString(_userNAME) ?? 'Guest';
  }

  static dynamic setUserEmail(String email) {
    _preferences!.setString(_userEMAIL, email);
  }

  static dynamic getUserEmail() {
    return _preferences!.getString(_userEMAIL);
  }

  static dynamic setUserMobile(String mobile) {
    _preferences!.setString(_userMobile, mobile);
  }

  static dynamic getUserMobile() {
    return _preferences!.getString(_userMobile);
  }

  static dynamic setUserType(String userType) {
    _preferences!.setString(_userType, userType);
  }

  static dynamic getUserType() {
    return _preferences!.getString(_userType);
  }

  static void setAccessToken(String token){
    _preferences!.setString(accessToken, token);
  }

  static String getAccessToken(){
    return _preferences!.getString(accessToken) ?? '';
  }

  static void setRefreshToken(String token){
    _preferences!.setString(refreshToken, token);
  }

  static String getRefreshToken(){
    return _preferences!.getString(refreshToken) ?? '';
  }

  static void setNotificationToken(String token) {
    _preferences!.setString(_notificationToken, token);
  }

  static String getNotificationToken() {
    return _preferences!.getString(_notificationToken) ?? '';
  }

  static void setRememberMe(bool isRemember){
    _preferences!.setBool(rememberMe, isRemember);
  }

  static bool isRemember(){
    return _preferences!.getBool(rememberMe) ?? false;
  }

  static void setLoginId(String loginID){
    _preferences!.setString(loginId,loginID);
  }

  static String getLoginId(){
    return _preferences!.getString(loginId) ?? '';
  }

  static void setPassword(String pwd){
    _preferences!.setString(password, pwd);
  }

  static String getPassword(){
    return _preferences!.getString(password) ?? '';
  }

  static void setAppVersion(String version){
    _preferences!.setString(appVersion, version);
  }
  static String getAppVersion(){
    return _preferences!.getString(appVersion) ?? '1.2.7';
  }

  static void setWelcome(bool isWelcome){
    _preferences!.setBool(_isWelcome, isWelcome);
  }

  static bool isWelcome(){
    return _preferences!.getBool(_isWelcome) ?? false;
  }


  static dynamic logout() async {
    await _preferences!.remove(_userEMAIL);
    await  _preferences!.remove(_userMobile);
    await _preferences!.remove(_userNAME);
    await _preferences!.remove(_userID);
    await _preferences!.remove(_isLOGIN);
    await _preferences!.remove(_sessionId);
    await _preferences!.remove(_token);
    await  _preferences!.remove(_isSkipLogin);
    await _preferences!.remove(accessToken);
    await _preferences!.remove(refreshToken);
  }

  static void sessionExpire() async {
    /* await logout();
    Navigator.pushNamedAndRemoveUntil(SizeConfig.navigatorKey.currentContext!,
        LoginScreen.id, (route) => false);*/
  }
  static void tokenExpire() async {
    await logout();

  }

  static void removeRememberMe(){
    _preferences!.remove(rememberMe);
    _preferences!.remove(loginId);
    _preferences!.remove(password);
  }
}
