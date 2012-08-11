.class Lcom/android/server/WifiService$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 919
    iput-object p1, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private shouldDeviceStayAwake(II)Z
    .locals 1
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    .line 1050
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldWifiStayAwake(II)Z
    .locals 4
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    const/4 v1, 0x1

    .line 1015
    iget-object v2, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sleep_policy"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1022
    .local v0, wifiSleepPolicy:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1031
    :cond_0
    :goto_0
    return v1

    .line 1025
    :cond_1
    if-ne v0, v1, :cond_2

    if-nez p2, :cond_0

    .line 1031
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService$3;->shouldDeviceStayAwake(II)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 922
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 924
    .local v1, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_idle_ms"

    const-wide/32 v13, 0xdbba0

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 927
    .local v2, idleMillis:J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "stay_on_while_plugged_in"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 930
    .local v6, stayAwakeConditions:I
    const-string v11, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 934
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$1900(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v12}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 935
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    const/4 v12, 0x0

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v11, v12}, Lcom/android/server/WifiService;->access$2002(Lcom/android/server/WifiService;Z)Z

    .line 936
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static {v11}, Lcom/android/server/WifiService;->access$1600(Lcom/android/server/WifiService;)V

    .line 937
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 938
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mBackgroundScanSupported:Z
    invoke-static {v11}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 939
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiStateMachine;->enableBackgroundScanCommand(Z)V

    .line 941
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->enableAllNetworks()V

    .line 942
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    const/4 v12, 0x0

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v11, v12}, Lcom/android/server/WifiService;->access$2200(Lcom/android/server/WifiService;Z)V

    .line 1004
    :cond_1
    :goto_0
    return-void

    .line 943
    :cond_2
    const-string v11, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 947
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    const/4 v12, 0x1

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v11, v12}, Lcom/android/server/WifiService;->access$2002(Lcom/android/server/WifiService;Z)Z

    .line 948
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static {v11}, Lcom/android/server/WifiService;->access$1600(Lcom/android/server/WifiService;)V

    .line 949
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 950
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mBackgroundScanSupported:Z
    invoke-static {v11}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 951
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiStateMachine;->enableBackgroundScanCommand(Z)V

    .line 959
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v11}, Lcom/android/server/WifiService;->access$2300(Lcom/android/server/WifiService;)I

    move-result v11

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11}, Lcom/android/server/WifiService$3;->shouldWifiStayAwake(II)Z

    move-result v11

    if-nez v11, :cond_1

    .line 961
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    iget-object v11, v11, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v11, v12, :cond_4

    .line 963
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$1900(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    add-long/2addr v13, v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v15}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v15

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 968
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/32 v13, 0xea60

    add-long v9, v11, v13

    .line 970
    .local v9, triggertime:J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$1900(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v11, v12, v9, v10, v13}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 973
    .end local v9           #triggertime:J
    :cond_5
    const-string v11, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 974
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    const/4 v12, 0x1

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v11, v12}, Lcom/android/server/WifiService;->access$2200(Lcom/android/server/WifiService;Z)V

    goto/16 :goto_0

    .line 975
    :cond_6
    const-string v11, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 983
    const-string v11, "plugged"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 987
    .local v4, pluggedType:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v11}, Lcom/android/server/WifiService;->access$2000(Lcom/android/server/WifiService;)Z

    move-result v11

    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v11}, Lcom/android/server/WifiService;->access$2300(Lcom/android/server/WifiService;)I

    move-result v11

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11}, Lcom/android/server/WifiService$3;->shouldWifiStayAwake(II)Z

    move-result v11

    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/server/WifiService$3;->shouldWifiStayAwake(II)Z

    move-result v11

    if-nez v11, :cond_7

    .line 989
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    add-long v7, v11, v2

    .line 993
    .local v7, triggerTime:J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$1900(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v11, v12, v7, v8, v13}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 995
    .end local v7           #triggerTime:J
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v11, v4}, Lcom/android/server/WifiService;->access$2302(Lcom/android/server/WifiService;I)I

    goto/16 :goto_0

    .line 996
    .end local v4           #pluggedType:I
    :cond_8
    const-string v11, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 997
    const-string v11, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 999
    .local v5, state:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/net/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    goto/16 :goto_0

    .line 1000
    .end local v5           #state:I
    :cond_9
    const-string v11, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1001
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    const-string v12, "phoneinECMState"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    #setter for: Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z
    invoke-static {v11, v12}, Lcom/android/server/WifiService;->access$2402(Lcom/android/server/WifiService;Z)Z

    .line 1002
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static {v11}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)V

    goto/16 :goto_0
.end method
