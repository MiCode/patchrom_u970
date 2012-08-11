.class final Lcom/android/stk/StkAppService$ServiceHandler;
.super Landroid/os/Handler;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkAppService;


# direct methods
.method private constructor <init>(Lcom/android/stk/StkAppService;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/stk/StkAppService;Lcom/android/stk/StkAppService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService$ServiceHandler;-><init>(Lcom/android/stk/StkAppService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 292
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 294
    .local v1, opcode:I
    packed-switch v1, :pswitch_data_0

    .line 371
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 296
    :pswitch_1
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 300
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V
    invoke-static {v2, v7}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/Menu;)V

    goto :goto_0

    .line 303
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 313
    .local v0, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->isCmdInteractive(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    invoke-static {v2, v0}, Lcom/android/stk/StkAppService;->access$300(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 314
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    invoke-static {v2, v0}, Lcom/android/stk/StkAppService;->access$400(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto :goto_0

    .line 316
    :cond_1
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mCmdInProgress:Z
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$500(Lcom/android/stk/StkAppService;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 317
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #setter for: Lcom/android/stk/StkAppService;->mCmdInProgress:Z
    invoke-static {v2, v6}, Lcom/android/stk/StkAppService;->access$502(Lcom/android/stk/StkAppService;Z)Z

    .line 318
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cat/CatCmdMessage;

    #calls: Lcom/android/stk/StkAppService;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    invoke-static {v3, v2}, Lcom/android/stk/StkAppService;->access$400(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto :goto_0

    .line 320
    :cond_2
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$600(Lcom/android/stk/StkAppService;)Ljava/util/LinkedList;

    move-result-object v3

    new-instance v4, Lcom/android/stk/StkAppService$DelayedCmd;

    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v4, v5, v6, v2}, Lcom/android/stk/StkAppService$DelayedCmd;-><init>(Lcom/android/stk/StkAppService;ILcom/android/internal/telephony/cat/CatCmdMessage;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 326
    .end local v0           #cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    :pswitch_3
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->responseNeeded:Z
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$700(Lcom/android/stk/StkAppService;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 327
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    #calls: Lcom/android/stk/StkAppService;->handleCmdResponse(Landroid/os/Bundle;)V
    invoke-static {v3, v2}, Lcom/android/stk/StkAppService;->access$800(Lcom/android/stk/StkAppService;Landroid/os/Bundle;)V

    .line 330
    :cond_3
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$600(Lcom/android/stk/StkAppService;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-eqz v2, :cond_4

    .line 331
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->callDelayedMsg()V
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$900(Lcom/android/stk/StkAppService;)V

    .line 336
    :goto_1
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #setter for: Lcom/android/stk/StkAppService;->responseNeeded:Z
    invoke-static {v2, v6}, Lcom/android/stk/StkAppService;->access$702(Lcom/android/stk/StkAppService;Z)Z

    goto :goto_0

    .line 333
    :cond_4
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    const/4 v3, 0x0

    #setter for: Lcom/android/stk/StkAppService;->mCmdInProgress:Z
    invoke-static {v2, v3}, Lcom/android/stk/StkAppService;->access$502(Lcom/android/stk/StkAppService;Z)Z

    goto :goto_1

    .line 339
    :pswitch_4
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mCmdInProgress:Z
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$500(Lcom/android/stk/StkAppService;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 340
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #setter for: Lcom/android/stk/StkAppService;->mCmdInProgress:Z
    invoke-static {v2, v6}, Lcom/android/stk/StkAppService;->access$502(Lcom/android/stk/StkAppService;Z)Z

    .line 341
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->handleSessionEnd()V
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$1000(Lcom/android/stk/StkAppService;)V

    goto/16 :goto_0

    .line 343
    :cond_5
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$600(Lcom/android/stk/StkAppService;)Ljava/util/LinkedList;

    move-result-object v2

    new-instance v3, Lcom/android/stk/StkAppService$DelayedCmd;

    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5, v7}, Lcom/android/stk/StkAppService$DelayedCmd;-><init>(Lcom/android/stk/StkAppService;ILcom/android/internal/telephony/cat/CatCmdMessage;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 347
    :pswitch_5
    const-string v2, "OP_BOOT_COMPLETED"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    const-string v2, "OP_BOOT_COMPLETED bIsBootComplete is true"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #setter for: Lcom/android/stk/StkAppService;->bIsBootComplete:Z
    invoke-static {v2, v6}, Lcom/android/stk/StkAppService;->access$1102(Lcom/android/stk/StkAppService;Z)Z

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OP_BOOT_COMPLETED mDisplayText is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mDisplayText:Z
    invoke-static {v3}, Lcom/android/stk/StkAppService;->access$1200(Lcom/android/stk/StkAppService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mDisplayText:Z
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$1200(Lcom/android/stk/StkAppService;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 352
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->callDelayedMsg()V
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$900(Lcom/android/stk/StkAppService;)V

    .line 355
    :cond_6
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v2

    if-nez v2, :cond_0

    .line 356
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$1300(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 360
    :pswitch_6
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->handleDelayedCmd()V
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$1400(Lcom/android/stk/StkAppService;)V

    goto/16 :goto_0

    .line 363
    :pswitch_7
    const-string v2, "Browser Closed"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    const/16 v4, 0x8

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    #calls: Lcom/android/stk/StkAppService;->checkForSetupEvent(ILandroid/os/Bundle;)V
    invoke-static {v3, v4, v2}, Lcom/android/stk/StkAppService;->access$1500(Lcom/android/stk/StkAppService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 367
    :pswitch_8
    const-string v2, "Locale Changed"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    const/4 v4, 0x7

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    #calls: Lcom/android/stk/StkAppService;->checkForSetupEvent(ILandroid/os/Bundle;)V
    invoke-static {v3, v4, v2}, Lcom/android/stk/StkAppService;->access$1500(Lcom/android/stk/StkAppService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
