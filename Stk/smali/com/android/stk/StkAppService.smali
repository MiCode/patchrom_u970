.class public Lcom/android/stk/StkAppService;
.super Landroid/app/Service;
.source "StkAppService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/StkAppService$1;,
        Lcom/android/stk/StkAppService$ServiceHandler;,
        Lcom/android/stk/StkAppService$DelayedCmd;,
        Lcom/android/stk/StkAppService$InitiatedByUserAction;
    }
.end annotation


# static fields
.field static sInstance:Lcom/android/stk/StkAppService;


# instance fields
.field private bIsBootComplete:Z

.field private lastSelectedItem:Ljava/lang/String;

.field private launchBrowser:Z

.field private mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

.field private mCmdInProgress:Z

.field private mCmdsQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/stk/StkAppService$DelayedCmd;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

.field private mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mDisplayText:Z

.field private mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mMenuIsVisibile:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private volatile mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

.field private mStkService:Lcom/android/internal/telephony/cat/AppInterface;

.field private responseNeeded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    sput-object v0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 84
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    .line 85
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 86
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 87
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 88
    iput-object v1, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    .line 89
    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->mMenuIsVisibile:Z

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stk/StkAppService;->responseNeeded:Z

    .line 91
    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    .line 92
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 93
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    .line 94
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 95
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    .line 96
    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->launchBrowser:Z

    .line 97
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 153
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 154
    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->mDisplayText:Z

    .line 155
    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->bIsBootComplete:Z

    .line 289
    return-void
.end method

.method private PlaceCall(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlaceCall callNum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1062
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1065
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1067
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    :goto_0
    return-void

    .line 1068
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/stk/StkAppService;)Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/stk/StkAppService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->handleSessionEnd()V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/stk/StkAppService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/stk/StkAppService;->bIsBootComplete:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/stk/StkAppService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/stk/StkAppService;->mDisplayText:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/stk/StkAppService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/stk/StkAppService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->handleDelayedCmd()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/stk/StkAppService;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->checkForSetupEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/Menu;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->isCmdInteractive(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/stk/StkAppService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/stk/StkAppService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/stk/StkAppService;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/stk/StkAppService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/stk/StkAppService;->responseNeeded:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/stk/StkAppService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/stk/StkAppService;->responseNeeded:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/stk/StkAppService;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->handleCmdResponse(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/stk/StkAppService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->callDelayedMsg()V

    return-void
.end method

.method private callDelayedMsg()V
    .locals 2

    .prologue
    .line 408
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 409
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 410
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 411
    return-void
.end method

.method private checkForSetupEvent(ILandroid/os/Bundle;)V
    .locals 8
    .parameter "event"
    .parameter "args"

    .prologue
    const/4 v7, 0x1

    .line 816
    const/4 v2, 0x0

    .line 817
    .local v2, eventPresent:Z
    const/4 v0, 0x0

    .line 818
    .local v0, addedInfo:[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 820
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    if-eqz v5, :cond_3

    .line 823
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    array-length v5, v5

    if-ge v3, v5, :cond_0

    .line 824
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    aget v5, v5, v3

    if-ne p1, v5, :cond_1

    .line 825
    const/4 v2, 0x1

    .line 831
    :cond_0
    if-ne v2, v7, :cond_2

    .line 832
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "exists in the EventList"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 834
    packed-switch p1, :pswitch_data_0

    .line 864
    .end local v3           #i:I
    :goto_1
    :pswitch_0
    return-void

    .line 823
    .restart local v3       #i:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 836
    :pswitch_1
    const-string v5, "browser_termination_cause"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 837
    .local v1, browserTerminationCause:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BrowserTerminationCause: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 839
    new-array v0, v7, [B

    .line 840
    const/4 v5, 0x0

    int-to-byte v6, v1

    aput-byte v6, v0, v5

    .line 841
    invoke-direct {p0, p1, v0}, Lcom/android/stk/StkAppService;->sendSetUpEventResponse(I[B)V

    goto :goto_1

    .line 844
    .end local v1           #browserTerminationCause:I
    :pswitch_2
    invoke-direct {p0, p1, v0}, Lcom/android/stk/StkAppService;->sendSetUpEventResponse(I[B)V

    .line 845
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->removeSetUpEvent(I)V

    goto :goto_1

    .line 848
    :pswitch_3
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 849
    .local v4, language:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "language: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 852
    invoke-static {v4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 853
    invoke-direct {p0, p1, v0}, Lcom/android/stk/StkAppService;->sendSetUpEventResponse(I[B)V

    goto :goto_1

    .line 859
    .end local v4           #language:Ljava/lang/String;
    :cond_2
    const-string v5, " Event does not exist in the EventList"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 862
    .end local v3           #i:I
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SetupEventList is not received. Ignoring the event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 834
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I
    .locals 3
    .parameter "userAction"

    .prologue
    const/4 v1, 0x0

    .line 756
    sget-object v0, Lcom/android/stk/StkAppService$InitiatedByUserAction;->yes:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/android/stk/StkAppService;->mMenuIsVisibile:Z

    or-int/2addr v0, v2

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x4

    goto :goto_1
.end method

.method static getInstance()Lcom/android/stk/StkAppService;
    .locals 1

    .prologue
    .line 275
    sget-object v0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    return-object v0
.end method

.method private getItemName(I)Ljava/lang/String;
    .locals 5
    .parameter "itemId"

    .prologue
    const/4 v3, 0x0

    .line 1036
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    .line 1037
    .local v2, menu:Lcom/android/internal/telephony/cat/Menu;
    if-nez v2, :cond_1

    .line 1045
    :cond_0
    :goto_0
    return-object v3

    .line 1040
    :cond_1
    iget-object v4, v2, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/Item;

    .line 1041
    .local v1, item:Lcom/android/internal/telephony/cat/Item;
    iget v4, v1, Lcom/android/internal/telephony/cat/Item;->id:I

    if-ne v4, p1, :cond_2

    .line 1042
    iget-object v3, v1, Lcom/android/internal/telephony/cat/Item;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 13
    .parameter "cmdMsg"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 439
    if-nez p1, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    iput-object p1, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 444
    const/4 v7, 0x1

    .line 446
    .local v7, waitForUsersResponse:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    sget-object v8, Lcom/android/stk/StkAppService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 613
    :cond_2
    :goto_1
    if-nez v7, :cond_0

    .line 614
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-eqz v8, :cond_b

    .line 615
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->callDelayedMsg()V

    goto :goto_0

    .line 449
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v5

    .line 450
    .local v5, msg:Lcom/android/internal/telephony/cat/TextMessage;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bIsBootComplete:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/stk/StkAppService;->bIsBootComplete:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    iput-boolean v10, p0, Lcom/android/stk/StkAppService;->mDisplayText:Z

    .line 452
    iget-boolean v8, p0, Lcom/android/stk/StkAppService;->bIsBootComplete:Z

    if-eqz v8, :cond_5

    .line 453
    iget-boolean v8, v5, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    iput-boolean v8, p0, Lcom/android/stk/StkAppService;->responseNeeded:Z

    .line 454
    iget-object v8, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 455
    iget-object v8, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    iput-object v8, v5, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 462
    :goto_2
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchTextDialog()V

    goto :goto_1

    .line 456
    :cond_3
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v8, :cond_4

    .line 457
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    iput-object v8, v5, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    goto :goto_2

    .line 460
    :cond_4
    const-string v8, ""

    iput-object v8, v5, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    goto :goto_2

    .line 464
    :cond_5
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    new-instance v9, Lcom/android/stk/StkAppService$DelayedCmd;

    invoke-direct {v9, p0, v10, p1}, Lcom/android/stk/StkAppService$DelayedCmd;-><init>(Lcom/android/stk/StkAppService;ILcom/android/internal/telephony/cat/CatCmdMessage;)V

    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 470
    .end local v5           #msg:Lcom/android/internal/telephony/cat/TextMessage;
    :pswitch_1
    iget-boolean v8, p0, Lcom/android/stk/StkAppService;->launchBrowser:Z

    if-eqz v8, :cond_6

    .line 471
    new-instance v6, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v8, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v6, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 472
    .local v6, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    const-string v8, "SELECT_ITEM after browser"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 474
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-interface {v8, v6}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_1

    .line 476
    .end local v6           #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v8

    iput-object v8, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 477
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V

    goto/16 :goto_1

    .line 482
    :pswitch_2
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v8, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 483
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v8

    iput-object v8, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 484
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->removeMenu()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 485
    const-string v8, "Uninstall App"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 486
    iput-object v11, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 487
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;)V

    .line 492
    :goto_3
    iget-boolean v8, p0, Lcom/android/stk/StkAppService;->mMenuIsVisibile:Z

    if-eqz v8, :cond_2

    .line 493
    invoke-direct {p0, v11}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V

    goto/16 :goto_1

    .line 489
    :cond_7
    const-string v8, "Install App"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/stk/StkAppInstaller;->install(Landroid/content/Context;)V

    goto :goto_3

    .line 498
    :pswitch_3
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchInputActivity()V

    goto/16 :goto_1

    .line 505
    :pswitch_4
    const/4 v7, 0x0

    .line 506
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v8, p0, Lcom/android/stk/StkAppService;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 507
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    .line 509
    .local v2, idleModeText:Lcom/android/internal/telephony/cat/TextMessage;
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.stk.check_screen_idle"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 510
    .local v3, idleStkIntent:Landroid/content/Intent;
    if-eqz v2, :cond_8

    .line 511
    iget-object v8, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v8, :cond_9

    .line 512
    const-string v8, "SCREEN_STATUS_REQUEST"

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 519
    :cond_8
    :goto_4
    const-string v8, "set up idle mode"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    invoke-virtual {p0, v3}, Lcom/android/stk/StkAppService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 514
    :cond_9
    const-string v8, "SCREEN_STATUS_REQUEST"

    invoke-virtual {v3, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 515
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchIdleText()V

    .line 516
    iput-object v11, p0, Lcom/android/stk/StkAppService;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_4

    .line 524
    .end local v2           #idleModeText:Lcom/android/internal/telephony/cat/TextMessage;
    .end local v3           #idleStkIntent:Landroid/content/Intent;
    :pswitch_5
    const-string v8, "handleCmd SEND_SS"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    new-instance v6, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v8, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v6, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 560
    .restart local v6       #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 561
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-interface {v8, v6}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 563
    const/4 v7, 0x0

    .line 564
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchEventMessage()V

    goto/16 :goto_1

    .line 569
    .end local v6           #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    :pswitch_6
    const/4 v7, 0x0

    .line 570
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchEventMessage()V

    goto/16 :goto_1

    .line 573
    :pswitch_7
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v8

    iget-object v9, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const v10, 0x7f060012

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 574
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto/16 :goto_1

    .line 580
    :pswitch_8
    const/4 v7, 0x0

    .line 581
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchEventMessage()V

    goto/16 :goto_1

    .line 584
    :pswitch_9
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v4

    .line 585
    .local v4, mMsgText:Lcom/android/internal/telephony/cat/TextMessage;
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const v9, 0x7f060010

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 586
    invoke-direct {p0, v4}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto/16 :goto_1

    .line 589
    .end local v4           #mMsgText:Lcom/android/internal/telephony/cat/TextMessage;
    :pswitch_a
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v9, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const v10, 0x7f060013

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 590
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {p0, v8}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto/16 :goto_1

    .line 593
    :pswitch_b
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchToneDialog()V

    goto/16 :goto_1

    .line 596
    :pswitch_c
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getSetEventList()Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v8

    iput-object v8, p0, Lcom/android/stk/StkAppService;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    .line 597
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v8, p0, Lcom/android/stk/StkAppService;->mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 598
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v8, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 600
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    array-length v8, v8

    if-ge v1, v8, :cond_2

    .line 601
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    aget v8, v8, v1

    const/4 v9, 0x5

    if-ne v8, v9, :cond_a

    .line 602
    const-string v8, " IDLE_SCREEN_AVAILABLE_EVENT present in List"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.intent.action.stk.check_screen_idle"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 605
    .local v0, StkIntent:Landroid/content/Intent;
    const-string v8, "SCREEN_STATUS_REQUEST"

    invoke-virtual {v0, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 606
    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 600
    .end local v0           #StkIntent:Landroid/content/Intent;
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 617
    .end local v1           #i:I
    :cond_b
    iput-boolean v12, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    goto/16 :goto_0

    .line 447
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_c
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private handleCmdResponse(Landroid/os/Bundle;)V
    .locals 11
    .parameter "args"

    .prologue
    const/4 v10, 0x0

    .line 623
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v8, :cond_0

    .line 742
    :goto_0
    return-void

    .line 626
    :cond_0
    new-instance v6, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v8, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v6, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 629
    .local v6, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    const-string v8, "help"

    invoke-virtual {p1, v8, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 631
    .local v3, helpRequired:Z
    const-string v8, "response id"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 738
    :pswitch_0
    const-string v8, "Unknown result id"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 633
    :pswitch_1
    const-string v8, "RES_ID_MENU_SELECTION"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 634
    const-string v8, "menu selection"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 635
    .local v5, menuSelection:I
    sget-object v8, Lcom/android/stk/StkAppService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v9, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    .line 741
    .end local v5           #menuSelection:I
    :cond_1
    :goto_1
    :pswitch_2
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-interface {v8, v6}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0

    .line 638
    .restart local v5       #menuSelection:I
    :pswitch_3
    invoke-direct {p0, v5}, Lcom/android/stk/StkAppService;->getItemName(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    .line 639
    if-eqz v3, :cond_2

    .line 640
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 644
    :goto_2
    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setMenuSelection(I)V

    goto :goto_1

    .line 642
    :cond_2
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_2

    .line 649
    .end local v5           #menuSelection:I
    :pswitch_4
    const-string v8, "RES_ID_INPUT"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 650
    const-string v8, "input"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 651
    .local v4, input:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v1

    .line 652
    .local v1, cmdInput:Lcom/android/internal/telephony/cat/Input;
    if-eqz v1, :cond_3

    iget-boolean v8, v1, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-eqz v8, :cond_3

    .line 653
    const-string v8, "YES"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 655
    .local v7, yesNoSelection:Z
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setYesNo(Z)V

    goto :goto_1

    .line 657
    .end local v7           #yesNoSelection:Z
    :cond_3
    if-eqz v3, :cond_4

    .line 658
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_1

    .line 660
    :cond_4
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 661
    invoke-virtual {v6, v4}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setInput(Ljava/lang/String;)V

    goto :goto_1

    .line 666
    .end local v1           #cmdInput:Lcom/android/internal/telephony/cat/Input;
    .end local v4           #input:Ljava/lang/String;
    :pswitch_5
    const-string v8, "RES_ID_CONFIRM"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 667
    const-string v8, "confirm"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 668
    .local v2, confirmed:Z
    sget-object v8, Lcom/android/stk/StkAppService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v9, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    .line 670
    :sswitch_0
    if-eqz v2, :cond_5

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_3
    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_1

    :cond_5
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_3

    .line 674
    :sswitch_1
    if-eqz v2, :cond_7

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_4
    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 676
    if-eqz v2, :cond_6

    .line 677
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/stk/StkAppService;->launchBrowser:Z

    .line 678
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getBrowserSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    move-result-object v8

    iput-object v8, p0, Lcom/android/stk/StkAppService;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 680
    :cond_6
    iget-boolean v8, p0, Lcom/android/stk/StkAppService;->launchBrowser:Z

    if-eqz v8, :cond_1

    .line 681
    iput-boolean v10, p0, Lcom/android/stk/StkAppService;->launchBrowser:Z

    .line 682
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-direct {p0, v8}, Lcom/android/stk/StkAppService;->launchBrowser(Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;)V

    goto/16 :goto_1

    .line 674
    :cond_7
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_4

    .line 686
    :sswitch_2
    const-string v8, "handleCmdResponse--OPEN_CHANNEL"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 687
    if-eqz v2, :cond_8

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_5
    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    :cond_8
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_5

    .line 691
    :sswitch_3
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 692
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setConfirmation(Z)V

    .line 693
    if-eqz v2, :cond_1

    .line 694
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v8

    iget-object v0, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callNum:Ljava/lang/String;

    .line 696
    .local v0, callNum:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SET_UP_CALL: callNum: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 697
    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService;->PlaceCall(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 706
    .end local v0           #callNum:Ljava/lang/String;
    .end local v2           #confirmed:Z
    :pswitch_6
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 709
    :pswitch_7
    const-string v8, "RES_ID_BACKWARD"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 710
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 713
    :pswitch_8
    const-string v8, "RES_ID_END_SESSION"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 714
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 717
    :pswitch_9
    const-string v8, "RES_ID_TIMEOUT"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 722
    sget-object v8, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    iget-object v9, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v9

    if-ne v8, v9, :cond_a

    .line 724
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v8

    sget-object v9, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v9

    if-ne v8, v9, :cond_9

    iget-object v8, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    if-nez v8, :cond_9

    .line 727
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 729
    :cond_9
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 732
    :cond_a
    const-string v8, "RES_ID_TIMEOUT return"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 631
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 635
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 668
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xc -> :sswitch_1
        0x11 -> :sswitch_2
        0x12 -> :sswitch_3
    .end sparse-switch
.end method

.method private handleDelayedCmd()V
    .locals 2

    .prologue
    .line 394
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/stk/StkAppService$DelayedCmd;

    .line 396
    .local v0, cmd:Lcom/android/stk/StkAppService$DelayedCmd;
    iget v1, v0, Lcom/android/stk/StkAppService$DelayedCmd;->id:I

    packed-switch v1, :pswitch_data_0

    .line 405
    .end local v0           #cmd:Lcom/android/stk/StkAppService$DelayedCmd;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 398
    .restart local v0       #cmd:Lcom/android/stk/StkAppService$DelayedCmd;
    :pswitch_1
    iget-object v1, v0, Lcom/android/stk/StkAppService$DelayedCmd;->msg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p0, v1}, Lcom/android/stk/StkAppService;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto :goto_0

    .line 401
    :pswitch_2
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->handleSessionEnd()V

    goto :goto_0

    .line 396
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleSessionEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 414
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 415
    iput-object v1, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    .line 418
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 421
    :cond_0
    iget-boolean v0, p0, Lcom/android/stk/StkAppService;->mMenuIsVisibile:Z

    if-eqz v0, :cond_1

    .line 422
    invoke-direct {p0, v1}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 425
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->callDelayedMsg()V

    .line 436
    :goto_0
    return-void

    .line 427
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    goto :goto_0
.end method

.method private isCmdInteractive(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 5
    .parameter "cmd"

    .prologue
    const/4 v2, 0x0

    .line 375
    sget-object v3, Lcom/android/stk/StkAppService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 390
    const/4 v2, 0x1

    :goto_0
    :pswitch_0
    return v2

    .line 377
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallForward()Lcom/android/internal/telephony/cat/CatCmdMessage$CallForward;

    move-result-object v3

    iget-boolean v0, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$CallForward;->bEnable:Z

    .line 378
    .local v0, bEnable:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallForward()Lcom/android/internal/telephony/cat/CatCmdMessage$CallForward;

    move-result-object v3

    iget-object v1, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$CallForward;->callForwardNum:Ljava/lang/String;

    .line 379
    .local v1, sNum:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCmdInteractive bEnable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sNum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private launchBrowser(Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;)V
    .locals 6
    .parameter "settings"

    .prologue
    const/high16 v5, 0x400

    .line 922
    if-nez p1, :cond_0

    .line 970
    :goto_0
    return-void

    .line 926
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 929
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 930
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "settings.url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 931
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 932
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 948
    .local v0, data:Landroid/net/Uri;
    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 950
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 951
    sget-object v3, Lcom/android/stk/StkAppService$1;->$SwitchMap$com$android$internal$telephony$cat$LaunchBrowserMode:[I

    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 963
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 968
    const-wide/16 v3, 0x2710

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 969
    :catch_0
    move-exception v3

    goto :goto_0

    .line 934
    .end local v0           #data:Landroid/net/Uri;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 935
    .local v2, modifiedUrl:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modifiedUrl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 936
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 937
    .restart local v0       #data:Landroid/net/Uri;
    goto :goto_1

    .line 946
    .end local v0           #data:Landroid/net/Uri;
    .end local v2           #modifiedUrl:Ljava/lang/String;
    :cond_2
    const-string v3, "http://google.com/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .restart local v0       #data:Landroid/net/Uri;
    goto :goto_1

    .line 953
    :pswitch_0
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 956
    :pswitch_1
    const/high16 v3, 0x800

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 959
    :pswitch_2
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 951
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 3
    .parameter

    .prologue
    .line 911
    iget-object v0, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 912
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/stk/StkDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 913
    const/high16 v1, 0x5080

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 917
    const-string v1, "TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 918
    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 919
    return-void
.end method

.method private launchEventMessage()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 883
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    .line 884
    .local v2, msg:Lcom/android/internal/telephony/cat/TextMessage;
    if-eqz v2, :cond_0

    iget-object v6, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 908
    :cond_0
    :goto_0
    return-void

    .line 887
    :cond_1
    new-instance v3, Landroid/widget/Toast;

    iget-object v6, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 888
    .local v3, toast:Landroid/widget/Toast;
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 890
    .local v0, inflate:Landroid/view/LayoutInflater;
    const/high16 v6, 0x7f03

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 891
    .local v5, v:Landroid/view/View;
    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 893
    .local v4, tv:Landroid/widget/TextView;
    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 895
    .local v1, iv:Landroid/widget/ImageView;
    iget-object v6, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_3

    .line 896
    iget-object v6, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 900
    :goto_1
    iget-boolean v6, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-nez v6, :cond_2

    .line 901
    iget-object v6, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 904
    :cond_2
    invoke-virtual {v3, v5}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 905
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/Toast;->setDuration(I)V

    .line 906
    const/16 v6, 0x50

    invoke-virtual {v3, v6, v8, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 907
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 898
    :cond_3
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private launchIdleText()V
    .locals 9

    .prologue
    const v8, 0x10804f7

    const v7, 0x1020006

    const/16 v6, 0x14d

    const/4 v5, 0x0

    .line 986
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    .line 987
    if-nez v0, :cond_0

    .line 988
    const-string v0, "mCurrentCmd.getTextMessage is NULL"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1022
    :goto_0
    return-void

    .line 991
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 992
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 994
    :cond_1
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 995
    new-instance v2, Landroid/widget/RemoteViews;

    const-string v3, "com.android.stk"

    const v4, 0x1090098

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 999
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 1000
    iput v8, v1, Landroid/app/Notification;->icon:I

    .line 1002
    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-nez v3, :cond_2

    .line 1003
    iget-object v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    iput-object v3, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1004
    const v3, 0x1020046

    iget-object v4, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1007
    :cond_2
    iget-object v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 1008
    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v7, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1016
    :goto_1
    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1017
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/stk/StkAppService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v5, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1020
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 1011
    :cond_3
    invoke-virtual {v2, v7, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1
.end method

.method private launchInputActivity()V
    .locals 3

    .prologue
    .line 781
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 782
    .local v0, newIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 784
    const-string v1, "com.android.stk"

    const-string v2, "com.android.stk.StkInputActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 785
    const-string v1, "INPUT"

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 786
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 787
    return-void
.end method

.method private launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    .line 761
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 762
    .local v1, newIntent:Landroid/content/Intent;
    const-string v2, "com.android.stk"

    const-string v3, "com.android.stk.StkMenuActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 763
    const/high16 v0, 0x1400

    .line 765
    .local v0, intentFlags:I
    if-nez p1, :cond_0

    .line 767
    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->yes:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v0, v2

    .line 769
    const-string v2, "STATE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 776
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 777
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 778
    return-void

    .line 772
    :cond_0
    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v0, v2

    .line 774
    const-string v2, "STATE"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private launchTextDialog()V
    .locals 3

    .prologue
    .line 790
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/stk/StkDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 791
    const/high16 v1, 0x5880

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 796
    const-string v1, "TEXT"

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 797
    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 798
    return-void
.end method

.method private launchToneDialog()V
    .locals 3

    .prologue
    .line 1025
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/stk/ToneDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1026
    const/high16 v1, 0x5080

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1030
    const-string v1, "TEXT"

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1031
    const-string v1, "TONE"

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getToneSettings()Lcom/android/internal/telephony/cat/ToneSettings;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1032
    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 1033
    return-void
.end method

.method private removeMenu()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1050
    :try_start_0
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_0

    .line 1058
    :goto_0
    return v0

    .line 1054
    :catch_0
    move-exception v1

    .line 1055
    const-string v1, "Unable to get Menu\'s items size"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1058
    goto :goto_0
.end method

.method private removeSetUpEvent(I)V
    .locals 3
    .parameter "event"

    .prologue
    .line 867
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove Event :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 869
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    if-eqz v1, :cond_0

    .line 873
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 874
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_1

    .line 875
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    const/16 v2, 0xff

    aput v2, v1, v0

    .line 880
    .end local v0           #i:I
    :cond_0
    return-void

    .line 873
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private sendSetUpEventResponse(I[B)V
    .locals 3
    .parameter "event"
    .parameter "addedInfo"

    .prologue
    .line 801
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSetUpEventResponse: event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 803
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v1, :cond_0

    .line 813
    :goto_0
    return-void

    .line 807
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 809
    .local v0, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 810
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setEventDownload(I[B)V

    .line 812
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0
.end method

.method private waitForLooper()V
    .locals 2

    .prologue
    .line 279
    :goto_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    if-nez v0, :cond_0

    .line 280
    monitor-enter p0

    .line 282
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 283
    :catch_0
    move-exception v0

    goto :goto_1

    .line 287
    :cond_0
    return-void
.end method


# virtual methods
.method getMenu()Lcom/android/internal/telephony/cat/Menu;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    return-object v0
.end method

.method indicateMenuVisibility(Z)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 260
    iput-boolean p1, p0, Lcom/android/stk/StkAppService;->mMenuIsVisibile:Z

    .line 261
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 174
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    .line 181
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 184
    const-string v1, " Unable to get Service handle"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    :goto_0
    return-void

    .line 188
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    .line 189
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    const-string v2, "Stk App Service"

    invoke-direct {v0, v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 190
    .local v0, serviceThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 191
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    .line 192
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 194
    sput-object p0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->waitForLooper()V

    .line 239
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 240
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->waitForLooper()V

    .line 203
    if-nez p1, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 209
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 213
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v2}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 214
    .local v1, msg:Landroid/os/Message;
    const-string v2, "op"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 215
    iget v2, v1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 217
    :pswitch_1
    const-string v2, "cmd message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 233
    :goto_1
    :pswitch_2
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v2, v1}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 224
    :pswitch_3
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public run()V
    .locals 2

    .prologue
    .line 248
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 250
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mServiceLooper:Landroid/os/Looper;

    .line 251
    new-instance v0, Lcom/android/stk/StkAppService$ServiceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/stk/StkAppService$ServiceHandler;-><init>(Lcom/android/stk/StkAppService;Lcom/android/stk/StkAppService$1;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    .line 253
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 254
    return-void
.end method
