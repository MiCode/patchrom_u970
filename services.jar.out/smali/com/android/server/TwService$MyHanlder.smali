.class Lcom/android/server/TwService$MyHanlder;
.super Landroid/os/Handler;
.source "TwService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TwService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHanlder"
.end annotation


# static fields
.field private static final GET_GSM_AUTH:I = 0x2

.field private static final GET_IMSI:I = 0x1

.field private static final GET_SIM_TYPE:I = 0x0

.field private static final GET_UMTS_AUTH:I = 0x3


# instance fields
.field private ar:Landroid/os/AsyncResult;

.field final synthetic this$0:Lcom/android/server/TwService;


# direct methods
.method private constructor <init>(Lcom/android/server/TwService;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/TwService;Lcom/android/server/TwService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lcom/android/server/TwService$MyHanlder;-><init>(Lcom/android/server/TwService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 370
    const-string v4, "TwService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleMessage] msg.what = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 374
    :pswitch_0
    const-string v4, "TwService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleMessage] GET_SIM_TYPE = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    #getter for: Lcom/android/server/TwService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v6}, Lcom/android/server/TwService;->access$100(Lcom/android/server/TwService;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getIccCardType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    sget-object v4, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_SET_SIM_TYPE_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    invoke-virtual {v4}, Landroid/net/wifi/TwNative$T_Tw_Event;->ordinal()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    #getter for: Lcom/android/server/TwService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v6}, Lcom/android/server/TwService;->access$100(Lcom/android/server/TwService;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getIccCardType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/wifi/TwNative;->TwDoCommand(ILjava/lang/String;)I

    goto :goto_0

    .line 378
    :pswitch_1
    const-string v4, "TwService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleMessage] GET_IMSI = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    #getter for: Lcom/android/server/TwService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v6}, Lcom/android/server/TwService;->access$100(Lcom/android/server/TwService;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    sget-object v4, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_SET_IMSI_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    invoke-virtual {v4}, Landroid/net/wifi/TwNative$T_Tw_Event;->ordinal()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    #getter for: Lcom/android/server/TwService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v5}, Lcom/android/server/TwService;->access$100(Lcom/android/server/TwService;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/wifi/TwNative;->TwDoCommand(ILjava/lang/String;)I

    goto :goto_0

    .line 382
    :pswitch_2
    const-string v4, "TwService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleMessage] GET_GSM_AUTH rand = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    #getter for: Lcom/android/server/TwService;->SIMData:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/TwService;->access$200(Lcom/android/server/TwService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v4, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    #getter for: Lcom/android/server/TwService;->SIMData:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/TwService;->access$200(Lcom/android/server/TwService;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 384
    iget-object v4, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    #getter for: Lcom/android/server/TwService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v4}, Lcom/android/server/TwService;->access$100(Lcom/android/server/TwService;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    #getter for: Lcom/android/server/TwService;->SIMData:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/TwService;->access$200(Lcom/android/server/TwService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->doSimAuth(Ljava/lang/String;)Landroid/telephony/SimAuthCnf;

    move-result-object v0

    .line 385
    .local v0, sim:Landroid/telephony/SimAuthCnf;
    const-string v4, "TwService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleMessage] GET_GSM_AUTH = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/telephony/SimAuthCnf;->sres:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/telephony/SimAuthCnf;->kc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    sget-object v4, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_SET_GSM_AUTH_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    invoke-virtual {v4}, Landroid/net/wifi/TwNative$T_Tw_Event;->ordinal()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Landroid/telephony/SimAuthCnf;->sres:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/telephony/SimAuthCnf;->kc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/wifi/TwNative;->TwDoCommand(ILjava/lang/String;)I

    goto/16 :goto_0

    .line 390
    .end local v0           #sim:Landroid/telephony/SimAuthCnf;
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    #getter for: Lcom/android/server/TwService;->USIMData:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/TwService;->access$300(Lcom/android/server/TwService;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 391
    iget-object v4, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    #getter for: Lcom/android/server/TwService;->USIMData:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/TwService;->access$300(Lcom/android/server/TwService;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, tmpAr:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    #getter for: Lcom/android/server/TwService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v4}, Lcom/android/server/TwService;->access$100(Lcom/android/server/TwService;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v1, v5

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->doUsimAuth(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/UsimAuthCnf;

    move-result-object v2

    .line 393
    .local v2, usim:Landroid/telephony/UsimAuthCnf;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 394
    .local v3, usimsb:Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v2, Landroid/telephony/UsimAuthCnf;->status:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    iget-object v4, v2, Landroid/telephony/UsimAuthCnf;->resAuts:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 396
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/telephony/UsimAuthCnf;->resAuts:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    :cond_1
    iget-object v4, v2, Landroid/telephony/UsimAuthCnf;->ck:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 399
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/telephony/UsimAuthCnf;->ck:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    :cond_2
    iget-object v4, v2, Landroid/telephony/UsimAuthCnf;->ik:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 402
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/telephony/UsimAuthCnf;->ik:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    :cond_3
    iget-object v4, v2, Landroid/telephony/UsimAuthCnf;->kc:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 405
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/telephony/UsimAuthCnf;->kc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    :cond_4
    const-string v4, "TwService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleMessage] GET_UMTS_AUTH = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    sget-object v4, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_SET_UMTS_AUTH_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    invoke-virtual {v4}, Landroid/net/wifi/TwNative$T_Tw_Event;->ordinal()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/wifi/TwNative;->TwDoCommand(ILjava/lang/String;)I

    goto/16 :goto_0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
