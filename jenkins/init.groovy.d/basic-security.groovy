#!groovy

import jenkins.model.*
import hudson.security.*

def instance = Jenkins.getInstance()

// 设置管理员用户
def adminUsername = "admin"
def adminPassword = "nc158818"  // 修改为你希望的密码

def hudsonRealm = new HudsonPrivateSecurityRealm(false)
hudsonRealm.createAccount(adminUsername, adminPassword)
instance.setSecurityRealm(hudsonRealm)

// 授权策略
def strategy = new FullControlOnceLoggedInAuthorizationStrategy()
strategy.setAllowAnonymousRead(false)
instance.setAuthorizationStrategy(strategy)

instance.save()
