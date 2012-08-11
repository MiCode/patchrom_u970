.class Lcom/android/internal/telephony/cat/CatService$UsatSendSS;
.super Ljava/lang/Object;
.source "CatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsatSendSS"
.end annotation


# instance fields
.field bNpi:Z

.field sNumberTemp:Ljava/lang/String;

.field sSendSS:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatService;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/CatService;Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter "sNumber"
    .parameter "bNpii"

    .prologue
    const/4 v3, 0x0

    .line 123
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->bNpi:Z

    .line 120
    const/16 v1, 0x1e

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "*43"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "#43"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "*#43"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "**61*"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "##61"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "**67*"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "##67"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "**62*"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "##62"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "**21*"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "##21"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "##002"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "*21**10#"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "*21#"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "**33*"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "#33*"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "*#33"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "*331*"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "#331*"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "*#331"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "*332*"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "#332*"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "*#332"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "*35*"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "#35*"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "*#35"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "*351*"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "#351*"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "*#351"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "*#31#"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sSendSS:[Ljava/lang/String;

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSs sNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bNpii: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    .line 126
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->bNpi:Z

    .line 127
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->usatSsCfGetIndex()I

    move-result v0

    .line 129
    .local v0, indexType:I
    packed-switch v0, :pswitch_data_0

    .line 171
    :goto_0
    return-void

    .line 132
    :pswitch_0
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->usatSsCwSet(ILjava/lang/String;)V

    goto :goto_0

    .line 135
    :pswitch_1
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->usatSsCwGet(ILjava/lang/String;)V

    goto :goto_0

    .line 148
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->bNpi:Z

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->usatSsCfSet(IZLjava/lang/String;)V

    goto :goto_0

    .line 166
    :pswitch_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->bNpi:Z

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->usatSsCbSet(IZLjava/lang/String;)V

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private scToBarringFacilityUsat(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "sTag"

    .prologue
    .line 518
    if-nez p1, :cond_0

    .line 519
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call barring sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scToBarringFacilityUsat sTag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 522
    const-string v0, "33"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    const-string v0, "AO"

    .line 537
    :goto_0
    return-object v0

    .line 524
    :cond_1
    const-string v0, "331"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 525
    const-string v0, "OI"

    goto :goto_0

    .line 526
    :cond_2
    const-string v0, "332"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 527
    const-string v0, "OX"

    goto :goto_0

    .line 528
    :cond_3
    const-string v0, "35"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 529
    const-string v0, "AI"

    goto :goto_0

    .line 530
    :cond_4
    const-string v0, "351"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 531
    const-string v0, "IR"

    goto :goto_0

    .line 532
    :cond_5
    const-string v0, "330"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 533
    const-string v0, "AB"

    goto :goto_0

    .line 534
    :cond_6
    const-string v0, "333"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 535
    const-string v0, "AG"

    goto :goto_0

    .line 536
    :cond_7
    const-string v0, "353"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 537
    const-string v0, "AC"

    goto :goto_0

    .line 539
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call barring sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private usatSsCbGetType(I)I
    .locals 3
    .parameter "iIndex"

    .prologue
    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "usatSsCbGetType iIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    const/4 v0, 0x0

    .line 441
    .local v0, iType:I
    packed-switch p1, :pswitch_data_0

    .line 470
    :goto_0
    return v0

    .line 445
    :pswitch_0
    const/4 v0, 0x2

    .line 446
    goto :goto_0

    .line 450
    :pswitch_1
    const/4 v0, 0x3

    .line 451
    goto :goto_0

    .line 455
    :pswitch_2
    const/4 v0, 0x5

    .line 456
    goto :goto_0

    .line 460
    :pswitch_3
    const/16 v0, 0xe

    .line 461
    goto :goto_0

    .line 465
    :pswitch_4
    const/4 v0, 0x4

    .line 466
    goto :goto_0

    .line 441
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private usatSsCbSet(IZLjava/lang/String;)V
    .locals 10
    .parameter "iIndex"
    .parameter "bNpi"
    .parameter "sNumber"

    .prologue
    .line 474
    const-string v3, ""

    .line 475
    .local v3, sNum:Ljava/lang/String;
    const/4 v8, -0x1

    .line 476
    .local v8, iType:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "usatSsCbSet iIndex: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " sNumber: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sSendSS:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, p3, p2, v0}, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->usatSsExtractNumber(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "usatSsCbSet sNum: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->usatSsCbGetType(I)I

    move-result v8

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "usatSsCbSet iType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sSendSS:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 483
    .local v6, byteTag:[B
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sSendSS:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 484
    aget-byte v0, v6, v7

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_0

    aget-byte v0, v6, v7

    const/16 v2, 0x23

    if-ne v0, v2, :cond_1

    .line 485
    :cond_0
    const/16 v0, 0x20

    aput-byte v0, v6, v7

    .line 483
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 488
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 489
    .local v9, sTag:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "usatSsCbSet sTag: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "usatSsCbSet sTag: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->scToBarringFacilityUsat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, facility:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "usatSsCbSet facility: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    packed-switch p1, :pswitch_data_0

    .line 514
    :goto_1
    :pswitch_0
    return-void

    .line 500
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    goto :goto_1

    .line 508
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    goto :goto_1

    .line 494
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private usatSsCfGetClass(Ljava/lang/String;)I
    .locals 9
    .parameter "sNumber"

    .prologue
    const/16 v8, 0x23

    const/4 v5, 0x7

    const/4 v4, -0x1

    .line 320
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "usatSsCfGetClass sNumber: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 368
    :goto_0
    return v4

    .line 326
    :cond_0
    const/16 v6, 0x2a

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 327
    .local v0, iIndexStar:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "usatSsCfGetClass iIndexStar: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    if-ne v0, v4, :cond_1

    move v4, v5

    .line 329
    goto :goto_0

    .line 332
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 333
    .local v3, sNum:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "usatSsCfGetClass sNum: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 336
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 337
    if-eq v0, v4, :cond_9

    move v4, v5

    .line 338
    goto :goto_0

    .line 342
    :cond_2
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, sLastTag:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "usatSsCfGetClass sLastTag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 345
    .local v1, iIndexTag:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "usatSsCfGetClass iIndexTag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    if-eq v1, v4, :cond_a

    .line 347
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 348
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "usatSsCfGetClass sLastTag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    const-string v4, "10"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 350
    const/16 v4, 0xd

    goto/16 :goto_0

    .line 351
    :cond_3
    const-string v4, "11"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 352
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 353
    :cond_4
    const-string v4, "13"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 354
    const/4 v4, 0x4

    goto/16 :goto_0

    .line 355
    :cond_5
    const-string v4, "19"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 356
    const/4 v4, 0x5

    goto/16 :goto_0

    .line 357
    :cond_6
    const-string v4, "16"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 358
    const/16 v4, 0x8

    goto/16 :goto_0

    .line 359
    :cond_7
    const-string v4, "12"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 360
    const/16 v4, 0xc

    goto/16 :goto_0

    .line 362
    :cond_8
    const-string/jumbo v4, "usatSsCfGetClass error: not find the tag"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    .end local v1           #iIndexTag:I
    .end local v2           #sLastTag:Ljava/lang/String;
    :cond_9
    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 365
    .restart local v1       #iIndexTag:I
    .restart local v2       #sLastTag:Ljava/lang/String;
    :cond_a
    const-string/jumbo v4, "usatSsCfGetClass error: not find last #"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private usatSsCfGetIndex()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 174
    const/4 v0, 0x0

    .line 176
    .local v0, index:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "usatSsCfGetIndex this.sNumberTemp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    :goto_0
    return v1

    .line 181
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    const-string v3, "*43"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 183
    const/4 v0, 0x0

    .line 247
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "usatSsCfGetIndex index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v1, v0

    .line 248
    goto :goto_0

    .line 184
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    const-string v3, "#43"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 185
    const/4 v0, 0x1

    goto :goto_1

    .line 186
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    const-string v3, "*#43"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_3

    .line 187
    const/4 v0, 0x2

    goto :goto_1

    .line 188
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    const-string v3, "**61*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_4

    .line 190
    const/4 v0, 0x3

    goto :goto_1

    .line 191
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    const-string v3, "##61"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_5

    .line 192
    const/4 v0, 0x4

    goto :goto_1

    .line 193
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    const-string v3, "**67*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_6

    .line 194
    const/4 v0, 0x5

    goto :goto_1

    .line 195
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    const-string v3, "##67"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_7

    .line 196
    const/4 v0, 0x6

    goto :goto_1

    .line 197
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    const-string v3, "**62*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_8

    .line 198
    const/4 v0, 0x7

    goto :goto_1

    .line 199
    :cond_8
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    const-string v3, "##62"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_9

    .line 200
    const/16 v0, 0x8

    goto :goto_1

    .line 201
    :cond_9
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    const-string v3, "**21*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_a

    .line 202
    const/16 v0, 0x9

    goto/16 :goto_1

    .line 203
    :cond_a
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    const-string v3, "##21"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_b

    .line 204
    const/16 v0, 0xa

    goto/16 :goto_1

    .line 205
    :cond_b
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    const-string v3, "##002"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_c

    .line 206
    const/16 v0, 0xb

    goto/16 :goto_1

    .line 207
    :cond_c
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    const-string v3, "*21**10#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_d

    .line 208
    const/16 v0, 0xc

    goto/16 :goto_1

    .line 209
    :cond_d
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    const-string v3, "*21#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_e

    .line 210
    const/16 v0, 0xd

    goto/16 :goto_1

    .line 211
    :cond_e
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    const-string v3, "**33*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_f

    .line 213
    const/16 v0, 0xe

    goto/16 :goto_1

    .line 214
    :cond_f
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    const-string v3, "#33*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_10

    .line 215
    const/16 v0, 0xf

    goto/16 :goto_1

    .line 216
    :cond_10
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    const-string v3, "*#33"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_11

    .line 217
    const/16 v0, 0x10

    goto/16 :goto_1

    .line 218
    :cond_11
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    const-string v3, "*331*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_12

    .line 219
    const/16 v0, 0x11

    goto/16 :goto_1

    .line 220
    :cond_12
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    const-string v3, "#331*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_13

    .line 221
    const/16 v0, 0x12

    goto/16 :goto_1

    .line 222
    :cond_13
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    const-string v3, "*#331"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_14

    .line 223
    const/16 v0, 0x13

    goto/16 :goto_1

    .line 224
    :cond_14
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    const-string v3, "*332*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_15

    .line 225
    const/16 v0, 0x14

    goto/16 :goto_1

    .line 226
    :cond_15
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    const-string v3, "#332*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_16

    .line 227
    const/16 v0, 0x15

    goto/16 :goto_1

    .line 228
    :cond_16
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    const-string v3, "*#332"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_17

    .line 229
    const/16 v0, 0x16

    goto/16 :goto_1

    .line 230
    :cond_17
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    const-string v3, "*35*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_18

    .line 231
    const/16 v0, 0x17

    goto/16 :goto_1

    .line 232
    :cond_18
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    const-string v3, "#35*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_19

    .line 233
    const/16 v0, 0x18

    goto/16 :goto_1

    .line 234
    :cond_19
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    const-string v3, "*#35"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_1a

    .line 235
    const/16 v0, 0x19

    goto/16 :goto_1

    .line 236
    :cond_1a
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    const-string v3, "*351*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_1b

    .line 237
    const/16 v0, 0x1a

    goto/16 :goto_1

    .line 238
    :cond_1b
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    const-string v3, "#351*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_1c

    .line 239
    const/16 v0, 0x1b

    goto/16 :goto_1

    .line 240
    :cond_1c
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    const-string v3, "*#351"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_1d

    .line 241
    const/16 v0, 0x1c

    goto/16 :goto_1

    .line 242
    :cond_1d
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sNumberTemp:Ljava/lang/String;

    const-string v3, "*#31#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_1e

    .line 243
    const/16 v0, 0x1d

    goto/16 :goto_1

    .line 245
    :cond_1e
    const-string/jumbo v1, "usatSsCfGetIndex error!"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private usatSsCfGetType(I)I
    .locals 2
    .parameter "iIndex"

    .prologue
    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "usatSsCfGetType iIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    sparse-switch p1, :sswitch_data_0

    .line 316
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 301
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 304
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 307
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 310
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 312
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 296
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x7 -> :sswitch_3
        0x8 -> :sswitch_3
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_4
        0x1c -> :sswitch_0
        0x1d -> :sswitch_0
    .end sparse-switch
.end method

.method private usatSsCfSet(IZLjava/lang/String;)V
    .locals 12
    .parameter "iIndex"
    .parameter "bNpi"
    .parameter "sNumber"

    .prologue
    .line 372
    const-string v4, ""

    .line 373
    .local v4, sNum:Ljava/lang/String;
    const/4 v2, -0x1

    .line 374
    .local v2, iType:I
    const/4 v3, -0x1

    .line 375
    .local v3, iClass:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "usatSsCfSet iIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->sSendSS:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, p3, p2, v0}, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->usatSsExtractNumber(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "usatSsCfSet sNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->usatSsCfGetType(I)I

    move-result v2

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "usatSsCfSet iType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->usatSsCfGetClass(Ljava/lang/String;)I

    move-result v3

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "usatSsCfSet iClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->usatSsGetRealNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "usatSsCfSet sNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    sparse-switch p1, :sswitch_data_0

    .line 407
    :goto_0
    return-void

    .line 389
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 396
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v5

    const/4 v6, 0x4

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v7, v2

    move-object v9, v4

    invoke-interface/range {v5 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 399
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v5

    const/4 v6, 0x1

    const/16 v8, 0xd

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v7, v2

    move-object v9, v4

    invoke-interface/range {v5 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 402
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v8, 0x7

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v7, v2

    move-object v9, v4

    invoke-interface/range {v5 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 384
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_0
        0xa -> :sswitch_1
        0xb -> :sswitch_1
        0x1c -> :sswitch_2
        0x1d -> :sswitch_3
    .end sparse-switch
.end method

.method private usatSsCwGet(ILjava/lang/String;)V
    .locals 3
    .parameter "iIndex"
    .parameter "sNum"

    .prologue
    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "usatSsCwGet iIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    const/4 v0, -0x1

    .line 429
    .local v0, iClass:I
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->usatSsCfGetClass(Ljava/lang/String;)I

    move-result v0

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "usatSsCfSet iClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 432
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 436
    :cond_0
    return-void
.end method

.method private usatSsCwSet(ILjava/lang/String;)V
    .locals 4
    .parameter "iIndex"
    .parameter "sNum"

    .prologue
    const/4 v3, 0x0

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "usatSsCwSet iIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    const/4 v0, -0x1

    .line 412
    .local v0, iClass:I
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->usatSsCfGetClass(Ljava/lang/String;)I

    move-result v0

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "usatSsCfSet iClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    packed-switch p1, :pswitch_data_0

    .line 424
    :goto_0
    return-void

    .line 416
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto :goto_0

    .line 419
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$UsatSendSS;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto :goto_0

    .line 414
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private usatSsExtractNumber(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "sNum"
    .parameter "bNpi"
    .parameter "sSendSS"

    .prologue
    .line 252
    const-string v0, ""

    .line 253
    .local v0, sRealNum:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v1, v0

    .line 266
    .end local v0           #sRealNum:Ljava/lang/String;
    .local v1, sRealNum:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 256
    .end local v1           #sRealNum:Ljava/lang/String;
    .restart local v0       #sRealNum:Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "usatSsExtractNumber sNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bNpi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sSendSS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    if-eqz p2, :cond_2

    .line 258
    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "usatSsExtractNumber sRealNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "usatSsExtractNumber sRealNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    move-object v1, v0

    .line 266
    .end local v0           #sRealNum:Ljava/lang/String;
    .restart local v1       #sRealNum:Ljava/lang/String;
    goto :goto_0

    .line 263
    .end local v1           #sRealNum:Ljava/lang/String;
    .restart local v0       #sRealNum:Ljava/lang/String;
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "usatSsExtractNumber sRealNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private usatSsGetRealNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "sNum"

    .prologue
    const/4 v5, 0x0

    .line 271
    const-string v2, ""

    .line 272
    .local v2, sRealNum:Ljava/lang/String;
    const/4 v1, 0x0

    .line 273
    .local v1, iTagStar:I
    const/4 v0, 0x0

    .line 274
    .local v0, iTagJing:I
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 291
    .end local v2           #sRealNum:Ljava/lang/String;
    .local v3, sRealNum:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 278
    .end local v3           #sRealNum:Ljava/lang/String;
    .restart local v2       #sRealNum:Ljava/lang/String;
    :cond_0
    const/16 v4, 0x23

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 279
    if-nez v0, :cond_1

    move-object v3, v2

    .line 280
    .end local v2           #sRealNum:Ljava/lang/String;
    .restart local v3       #sRealNum:Ljava/lang/String;
    goto :goto_0

    .line 282
    .end local v3           #sRealNum:Ljava/lang/String;
    .restart local v2       #sRealNum:Ljava/lang/String;
    :cond_1
    const/16 v4, 0x2a

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 283
    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    .line 284
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v3, v2

    .line 291
    .end local v2           #sRealNum:Ljava/lang/String;
    .restart local v3       #sRealNum:Ljava/lang/String;
    goto :goto_0

    .line 287
    .end local v3           #sRealNum:Ljava/lang/String;
    .restart local v2       #sRealNum:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
