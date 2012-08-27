.class public Lcom/android/internal/telephony/IccProvider;
.super Landroid/content/ContentProvider;
.source "IccProvider.java"


# static fields
.field private static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final ADN:I = 0x1

.field static final DBG:Z = false

.field private static final FDN:I = 0x2

.field private static final SDN:I = 0x3

.field private static final STR_EMAILS:Ljava/lang/String; = "emails"

.field private static final STR_NUMBER:Ljava/lang/String; = "number"

.field private static final STR_NUMBER2:Ljava/lang/String; = "number2"

.field private static final STR_NUMBER3:Ljava/lang/String; = "number3"

.field private static final STR_NUMBER4:Ljava/lang/String; = "number4"

.field private static final STR_PIN2:Ljava/lang/String; = "pin2"

.field private static final STR_SNE:Ljava/lang/String; = "nickname"

.field private static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "IccProvider"

.field static final URL_MATCHER:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 45
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const-string/jumbo v1, "number"

    aput-object v1, v0, v3

    const-string v1, "emails"

    aput-object v1, v0, v4

    const-string/jumbo v1, "number2"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string/jumbo v2, "number3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "number4"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "nickname"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 70
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 74
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string/jumbo v2, "sdn"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private addEmailRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"

    .prologue
    .line 521
    const/4 v6, 0x0

    .line 529
    .local v6, success:Z
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 531
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 532
    const/4 v1, 0x0

    aget-object v4, p4, v1

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/IIccPhoneBook;->updateEmailRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 542
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v6

    .line 537
    :catch_0
    move-exception v1

    goto :goto_0

    .line 535
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 18
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "number2"
    .parameter "number3"
    .parameter "number4"
    .parameter "nickname"
    .parameter "pin2"

    .prologue
    .line 487
    const/16 v17, 0x0

    .line 495
    .local v17, success:Z
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 497
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 498
    invoke-interface {v0}, Lcom/android/internal/telephony/IIccPhoneBook;->getSimCardType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 499
    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const/4 v1, 0x0

    aget-object v11, p4, v1

    move/from16 v1, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    invoke-interface/range {v0 .. v16}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnEmailRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    .line 513
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v17

    .line 503
    .restart local v0       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    const-string v2, ""

    const-string v3, ""

    move/from16 v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p9

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    goto :goto_0

    .line 509
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 507
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 18
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "anr"
    .parameter "anr2"
    .parameter "anr3"
    .parameter "sne"
    .parameter "pin2"

    .prologue
    .line 583
    const/16 v17, 0x0

    .line 586
    .local v17, success:Z
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 588
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 589
    invoke-interface {v0}, Lcom/android/internal/telephony/IIccPhoneBook;->getSimCardType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 590
    const/4 v1, 0x0

    aget-object v4, p4, v1

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v16, p9

    invoke-interface/range {v0 .. v16}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnEmailRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    .line 604
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v17

    .line 594
    .restart local v0       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    const-string v4, ""

    const-string v5, ""

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v6, p9

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    goto :goto_0

    .line 600
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 598
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private loadFromEf(I)Landroid/database/MatrixCursor;
    .locals 7
    .parameter "efType"

    .prologue
    .line 451
    const/4 v1, 0x0

    .line 453
    .local v1, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    :try_start_0
    const-string/jumbo v5, "simphonebook"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v4

    .line 455
    .local v4, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v4, :cond_0

    .line 456
    invoke-interface {v4, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 465
    .end local v4           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 467
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 468
    .local v0, N:I
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v5, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 470
    .local v2, cursor:Landroid/database/MatrixCursor;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 471
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {p0, v5, v2, v3}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/AdnRecord;Landroid/database/MatrixCursor;I)V

    .line 470
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 476
    .end local v0           #N:I
    .end local v2           #cursor:Landroid/database/MatrixCursor;
    .end local v3           #i:I
    :cond_1
    const-string v5, "IccProvider"

    const-string v6, "Cannot load ADN records"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_2
    return-object v2

    .line 461
    :catch_0
    move-exception v5

    goto :goto_0

    .line 458
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private loadRecord(Lcom/android/internal/telephony/AdnRecord;Landroid/database/MatrixCursor;I)V
    .locals 16
    .parameter "record"
    .parameter "cursor"
    .parameter "id"

    .prologue
    .line 614
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1

    .line 615
    const/16 v14, 0x8

    new-array v6, v14, [Ljava/lang/Object;

    .line 616
    .local v6, contact:[Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 617
    .local v1, alphaTag:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v12

    .line 618
    .local v12, number:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v9

    .line 620
    .local v9, emails:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v2

    .line 621
    .local v2, anr:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getAnr2()Ljava/lang/String;

    move-result-object v3

    .line 622
    .local v3, anr2:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getAnr3()Ljava/lang/String;

    move-result-object v4

    .line 623
    .local v4, anr3:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getSne()Ljava/lang/String;

    move-result-object v13

    .line 625
    .local v13, sne:Ljava/lang/String;
    const/4 v14, 0x0

    aput-object v1, v6, v14

    .line 626
    const/4 v14, 0x1

    aput-object v12, v6, v14

    .line 628
    if-eqz v9, :cond_3

    .line 629
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 630
    .local v8, emailString:Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    aget-object v14, v9, v14

    if-eqz v14, :cond_2

    const/4 v14, 0x0

    aget-object v14, v9, v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_2

    .line 631
    move-object v5, v9

    .local v5, arr$:[Ljava/lang/String;
    array-length v11, v5

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v11, :cond_0

    aget-object v7, v5, v10

    .line 633
    .local v7, email:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    const-string v14, ","

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 636
    .end local v7           #email:Ljava/lang/String;
    :cond_0
    const/4 v14, 0x2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v6, v14

    .line 644
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v8           #emailString:Ljava/lang/StringBuilder;
    .end local v10           #i$:I
    .end local v11           #len$:I
    :goto_1
    const/4 v14, 0x3

    aput-object v2, v6, v14

    .line 645
    const/4 v14, 0x4

    aput-object v3, v6, v14

    .line 646
    const/4 v14, 0x5

    aput-object v4, v6, v14

    .line 647
    const/4 v14, 0x6

    aput-object v13, v6, v14

    .line 648
    const/4 v14, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v6, v14

    .line 650
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 653
    .end local v1           #alphaTag:Ljava/lang/String;
    .end local v2           #anr:Ljava/lang/String;
    .end local v3           #anr2:Ljava/lang/String;
    .end local v4           #anr3:Ljava/lang/String;
    .end local v6           #contact:[Ljava/lang/Object;
    .end local v9           #emails:[Ljava/lang/String;
    .end local v12           #number:Ljava/lang/String;
    .end local v13           #sne:Ljava/lang/String;
    :cond_1
    return-void

    .line 639
    .restart local v1       #alphaTag:Ljava/lang/String;
    .restart local v2       #anr:Ljava/lang/String;
    .restart local v3       #anr2:Ljava/lang/String;
    .restart local v4       #anr3:Ljava/lang/String;
    .restart local v6       #contact:[Ljava/lang/Object;
    .restart local v8       #emailString:Ljava/lang/StringBuilder;
    .restart local v9       #emails:[Ljava/lang/String;
    .restart local v12       #number:Ljava/lang/String;
    .restart local v13       #sne:Ljava/lang/String;
    :cond_2
    const/4 v14, 0x2

    const/4 v15, 0x0

    aput-object v15, v6, v14

    goto :goto_1

    .line 642
    .end local v8           #emailString:Ljava/lang/StringBuilder;
    :cond_3
    const/4 v14, 0x2

    const/4 v15, 0x0

    aput-object v15, v6, v14

    goto :goto_1
.end method

.method log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 656
    const-string v0, "IccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    return-void
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "inVal"

    .prologue
    const/16 v3, 0x27

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 167
    .local v0, len:I
    move-object v1, p1

    .line 169
    .local v1, retVal:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 170
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 173
    :cond_0
    return-object v1
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 18
    .parameter "efType"
    .parameter "oldName"
    .parameter "oldNumber"
    .parameter "oldEmails"
    .parameter "oldAnr"
    .parameter "oldAnr2"
    .parameter "oldAnr3"
    .parameter "oldSne"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "emails"
    .parameter "anr"
    .parameter "anr2"
    .parameter "anr3"
    .parameter "sne"
    .parameter "pin2"

    .prologue
    .line 551
    const/16 v17, 0x0

    .line 554
    .local v17, success:Z
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 556
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 557
    invoke-interface {v0}, Lcom/android/internal/telephony/IIccPhoneBook;->getSimCardType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 558
    const/4 v1, 0x0

    aget-object v4, p4, v1

    const/4 v1, 0x0

    aget-object v11, p11, v1

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    invoke-interface/range {v0 .. v16}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnEmailRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    .line 573
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v17

    .restart local v0       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p16

    .line 563
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    goto :goto_0

    .line 569
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 567
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 22
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 279
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v13

    .line 280
    .local v13, match:I
    packed-switch v13, :pswitch_data_0

    .line 290
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Cannot insert into URL: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 282
    :pswitch_0
    const/16 v3, 0x6f3a

    .line 295
    .local v3, efType:I
    :goto_0
    const-string v4, ""

    .line 296
    .local v4, tag:Ljava/lang/String;
    const-string v5, ""

    .line 297
    .local v5, number:Ljava/lang/String;
    const/4 v6, 0x0

    .line 298
    .local v6, emails:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 300
    .local v11, pin2:Ljava/lang/String;
    const-string v7, ""

    .line 301
    .local v7, anr:Ljava/lang/String;
    const-string v8, ""

    .line 302
    .local v8, anr2:Ljava/lang/String;
    const-string v9, ""

    .line 303
    .local v9, anr3:Ljava/lang/String;
    const-string v10, ""

    .line 304
    .local v10, sne:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    .line 305
    const/4 v2, 0x0

    const-string v20, ""

    aput-object v20, v6, v2

    .line 307
    const-string v2, "AND"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 308
    .local v18, tokens:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v14, v0

    .line 310
    .local v14, n:I
    :cond_0
    :goto_1
    add-int/lit8 v14, v14, -0x1

    if-ltz v14, :cond_b

    .line 311
    aget-object v16, v18, v14

    .line 314
    .local v16, param:Ljava/lang/String;
    const-string v2, "="

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 321
    .local v15, pair:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v15, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 324
    .local v12, key:Ljava/lang/String;
    const-string v19, ""

    .line 325
    .local v19, val:Ljava/lang/String;
    array-length v2, v15

    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v2, v0, :cond_1

    .line 327
    const/4 v2, 0x1

    aget-object v2, v15, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 337
    :cond_1
    :goto_2
    const-string/jumbo v2, "tag"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 338
    const-string v2, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 286
    .end local v3           #efType:I
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #emails:[Ljava/lang/String;
    .end local v7           #anr:Ljava/lang/String;
    .end local v8           #anr2:Ljava/lang/String;
    .end local v9           #anr3:Ljava/lang/String;
    .end local v10           #sne:Ljava/lang/String;
    .end local v11           #pin2:Ljava/lang/String;
    .end local v12           #key:Ljava/lang/String;
    .end local v14           #n:I
    .end local v15           #pair:[Ljava/lang/String;
    .end local v16           #param:Ljava/lang/String;
    .end local v18           #tokens:[Ljava/lang/String;
    .end local v19           #val:Ljava/lang/String;
    :pswitch_1
    const/16 v3, 0x6f3b

    .line 287
    .restart local v3       #efType:I
    goto :goto_0

    .line 329
    .restart local v4       #tag:Ljava/lang/String;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v6       #emails:[Ljava/lang/String;
    .restart local v7       #anr:Ljava/lang/String;
    .restart local v8       #anr2:Ljava/lang/String;
    .restart local v9       #anr3:Ljava/lang/String;
    .restart local v10       #sne:Ljava/lang/String;
    .restart local v11       #pin2:Ljava/lang/String;
    .restart local v12       #key:Ljava/lang/String;
    .restart local v14       #n:I
    .restart local v15       #pair:[Ljava/lang/String;
    .restart local v16       #param:Ljava/lang/String;
    .restart local v18       #tokens:[Ljava/lang/String;
    .restart local v19       #val:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    if-ne v13, v2, :cond_3

    .line 330
    const/4 v2, 0x1

    aget-object v19, v15, v2

    goto :goto_2

    .line 333
    :cond_3
    const/4 v2, 0x1

    aget-object v2, v15, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    goto :goto_2

    .line 339
    :cond_4
    const-string/jumbo v2, "number"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 340
    const-string v2, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 341
    :cond_5
    const-string v2, "emails"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 343
    const-string v2, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v2

    goto/16 :goto_1

    .line 344
    :cond_6
    const-string/jumbo v2, "number2"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 345
    const-string v2, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 346
    :cond_7
    const-string/jumbo v2, "number3"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 347
    const-string v2, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 348
    :cond_8
    const-string/jumbo v2, "number4"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 349
    const-string v2, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 350
    :cond_9
    const-string/jumbo v2, "nickname"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 351
    const-string v2, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 352
    :cond_a
    const-string/jumbo v2, "pin2"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 361
    .end local v12           #key:Ljava/lang/String;
    .end local v15           #pair:[Ljava/lang/String;
    .end local v16           #param:Ljava/lang/String;
    .end local v19           #val:Ljava/lang/String;
    :cond_b
    const/16 v2, 0x6f3b

    if-ne v3, v2, :cond_c

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 362
    const/4 v2, 0x0

    .line 370
    :goto_3
    return v2

    :cond_c
    move-object/from16 v2, p0

    .line 365
    invoke-direct/range {v2 .. v11}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    .line 366
    .local v17, success:Z
    if-nez v17, :cond_d

    .line 367
    const/4 v2, 0x0

    goto :goto_3

    .line 370
    :cond_d
    const/4 v2, 0x1

    goto :goto_3

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 105
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :pswitch_0
    const-string/jumbo v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 23
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 120
    const/4 v11, 0x0

    .line 124
    .local v11, pin2:Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v16

    .line 125
    .local v16, match:I
    packed-switch v16, :pswitch_data_0

    .line 141
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Cannot insert into URL: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    :pswitch_0
    const/16 v3, 0x6f3a

    .line 129
    .local v3, efType:I
    const/16 v2, 0x6f3a

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;

    .line 145
    :goto_0
    const-string/jumbo v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, tag:Ljava/lang/String;
    const-string/jumbo v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, number:Ljava/lang/String;
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 148
    .local v13, email:Ljava/lang/String;
    const-string/jumbo v2, "number2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 149
    .local v7, anr:Ljava/lang/String;
    const-string/jumbo v2, "number3"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 150
    .local v8, number3:Ljava/lang/String;
    const-string/jumbo v2, "number4"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 151
    .local v9, number4:Ljava/lang/String;
    const-string/jumbo v2, "nickname"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 161
    .local v10, nickname:Ljava/lang/String;
    const/4 v6, 0x0

    .line 162
    .local v6, emails:[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    .line 163
    const/4 v2, 0x0

    aput-object v13, v6, v2

    move-object/from16 v2, p0

    .line 166
    invoke-direct/range {v2 .. v11}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    .line 168
    .local v20, success:Z
    if-nez v20, :cond_5

    .line 170
    :try_start_0
    const-string/jumbo v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v15

    .line 172
    .local v15, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v15, :cond_4

    .line 175
    const/4 v2, 0x3

    new-array v14, v2, [I

    .line 176
    .local v14, ext1recordSize:[I
    const/4 v2, 0x3

    new-array v0, v2, [I

    move-object/from16 v17, v0

    .line 178
    .local v17, recordSize:[I
    const/16 v2, 0x6f3a

    if-ne v3, v2, :cond_2

    .line 179
    const/16 v2, 0x6f3a

    invoke-interface {v15, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I

    move-result-object v17

    .line 180
    if-eqz v17, :cond_2

    .line 181
    const/16 v2, 0x6f3a

    invoke-interface {v15, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getSimSize(I)I

    move-result v2

    const/16 v21, 0x2

    aget v21, v17, v21

    move/from16 v0, v21

    if-lt v2, v0, :cond_0

    .line 182
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/Full/"

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .local v12, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .local v18, resultUri:Landroid/net/Uri;
    move-object/from16 v19, v18

    .line 259
    .end local v14           #ext1recordSize:[I
    .end local v15           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v17           #recordSize:[I
    .end local v18           #resultUri:Landroid/net/Uri;
    .local v19, resultUri:Landroid/net/Uri;
    :goto_1
    return-object v19

    .line 134
    .end local v3           #efType:I
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #emails:[Ljava/lang/String;
    .end local v7           #anr:Ljava/lang/String;
    .end local v8           #number3:Ljava/lang/String;
    .end local v9           #number4:Ljava/lang/String;
    .end local v10           #nickname:Ljava/lang/String;
    .end local v12           #buf:Ljava/lang/StringBuilder;
    .end local v13           #email:Ljava/lang/String;
    .end local v19           #resultUri:Landroid/net/Uri;
    .end local v20           #success:Z
    :pswitch_1
    const/16 v3, 0x6f3b

    .line 136
    .restart local v3       #efType:I
    const/16 v2, 0x6f3b

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;

    .line 137
    const-string/jumbo v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 138
    goto/16 :goto_0

    .line 185
    .restart local v4       #tag:Ljava/lang/String;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v6       #emails:[Ljava/lang/String;
    .restart local v7       #anr:Ljava/lang/String;
    .restart local v8       #number3:Ljava/lang/String;
    .restart local v9       #number4:Ljava/lang/String;
    .restart local v10       #nickname:Ljava/lang/String;
    .restart local v13       #email:Ljava/lang/String;
    .restart local v14       #ext1recordSize:[I
    .restart local v15       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .restart local v17       #recordSize:[I
    .restart local v20       #success:Z
    :cond_0
    :try_start_1
    invoke-interface {v15}, Lcom/android/internal/telephony/IIccPhoneBook;->getSimCardType()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x6f3a

    invoke-interface {v15, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimAdnRecordsSize(I)I

    move-result v2

    const/16 v21, 0x6f3a

    move/from16 v0, v21

    invoke-interface {v15, v0}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimSize(I)I

    move-result v21

    move/from16 v0, v21

    if-lt v2, v0, :cond_1

    .line 187
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/Full/"

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .restart local v12       #buf:Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .restart local v18       #resultUri:Landroid/net/Uri;
    move-object/from16 v19, v18

    .line 189
    .end local v18           #resultUri:Landroid/net/Uri;
    .restart local v19       #resultUri:Landroid/net/Uri;
    goto :goto_1

    .line 191
    .end local v12           #buf:Ljava/lang/StringBuilder;
    .end local v19           #resultUri:Landroid/net/Uri;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v21, 0x14

    move/from16 v0, v21

    if-le v2, v0, :cond_2

    .line 192
    const/16 v2, 0x6f4a

    invoke-interface {v15, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I

    move-result-object v14

    .line 193
    if-eqz v14, :cond_2

    .line 194
    const/16 v2, 0x6f3a

    invoke-interface {v15, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getExtensionSize(I)I

    move-result v2

    const/16 v21, 0x2

    aget v21, v14, v21

    move/from16 v0, v21

    if-lt v2, v0, :cond_2

    .line 195
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/Full/"

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .restart local v12       #buf:Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .restart local v18       #resultUri:Landroid/net/Uri;
    move-object/from16 v19, v18

    .line 197
    .end local v18           #resultUri:Landroid/net/Uri;
    .restart local v19       #resultUri:Landroid/net/Uri;
    goto :goto_1

    .line 205
    .end local v12           #buf:Ljava/lang/StringBuilder;
    .end local v19           #resultUri:Landroid/net/Uri;
    :cond_2
    const/16 v2, 0x6f3b

    if-ne v3, v2, :cond_4

    .line 206
    const/16 v2, 0x6f3b

    invoke-interface {v15, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I

    move-result-object v17

    .line 207
    if-eqz v17, :cond_4

    .line 208
    const/16 v2, 0x6f3b

    invoke-interface {v15, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getSimSize(I)I

    move-result v2

    const/16 v21, 0x2

    aget v21, v17, v21

    move/from16 v0, v21

    if-lt v2, v0, :cond_3

    .line 209
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/Full/"

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .restart local v12       #buf:Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .restart local v18       #resultUri:Landroid/net/Uri;
    move-object/from16 v19, v18

    .line 211
    .end local v18           #resultUri:Landroid/net/Uri;
    .restart local v19       #resultUri:Landroid/net/Uri;
    goto/16 :goto_1

    .line 213
    .end local v12           #buf:Ljava/lang/StringBuilder;
    .end local v19           #resultUri:Landroid/net/Uri;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v21, 0x14

    move/from16 v0, v21

    if-le v2, v0, :cond_4

    .line 214
    const/16 v2, 0x6f4b

    invoke-interface {v15, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I

    move-result-object v14

    .line 215
    if-eqz v14, :cond_4

    .line 216
    const/16 v2, 0x6f3b

    invoke-interface {v15, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getExtensionSize(I)I

    move-result v2

    const/16 v21, 0x2

    aget v21, v14, v21

    move/from16 v0, v21

    if-lt v2, v0, :cond_4

    .line 217
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/Full/"

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .restart local v12       #buf:Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v18

    .restart local v18       #resultUri:Landroid/net/Uri;
    move-object/from16 v19, v18

    .line 219
    .end local v18           #resultUri:Landroid/net/Uri;
    .restart local v19       #resultUri:Landroid/net/Uri;
    goto/16 :goto_1

    .line 229
    .end local v12           #buf:Ljava/lang/StringBuilder;
    .end local v14           #ext1recordSize:[I
    .end local v15           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v17           #recordSize:[I
    .end local v19           #resultUri:Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 232
    :cond_4
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/Error/"

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    .restart local v12       #buf:Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .restart local v18       #resultUri:Landroid/net/Uri;
    move-object/from16 v19, v18

    .line 234
    .end local v18           #resultUri:Landroid/net/Uri;
    .restart local v19       #resultUri:Landroid/net/Uri;
    goto/16 :goto_1

    .line 237
    .end local v12           #buf:Ljava/lang/StringBuilder;
    .end local v19           #resultUri:Landroid/net/Uri;
    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/"

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .restart local v12       #buf:Ljava/lang/StringBuilder;
    packed-switch v16, :pswitch_data_1

    .line 249
    :goto_3
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .restart local v18       #resultUri:Landroid/net/Uri;
    move-object/from16 v19, v18

    .line 259
    .end local v18           #resultUri:Landroid/net/Uri;
    .restart local v19       #resultUri:Landroid/net/Uri;
    goto/16 :goto_1

    .line 240
    .end local v19           #resultUri:Landroid/net/Uri;
    :pswitch_2
    const-string v2, "adn/"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 244
    :pswitch_3
    const-string v2, "fdn/"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 227
    .end local v12           #buf:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v2

    goto :goto_2

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 238
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 88
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :pswitch_0
    const/16 v0, 0x6f3a

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    .line 93
    :pswitch_1
    const/16 v0, 0x6f3b

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 96
    :pswitch_2
    const/16 v0, 0x6f49

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 26
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 376
    const/16 v18, 0x0

    .line 380
    .local v18, pin2:Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v21

    .line 381
    .local v21, match:I
    packed-switch v21, :pswitch_data_0

    .line 392
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Cannot insert into URL: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 383
    :pswitch_0
    const/16 v3, 0x6f3a

    .line 396
    .local v3, efType:I
    :goto_0
    const-string/jumbo v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 397
    .local v4, tag:Ljava/lang/String;
    const-string/jumbo v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 398
    .local v5, number:Ljava/lang/String;
    const/16 v20, 0x0

    .line 399
    .local v20, emails:[Ljava/lang/String;
    const-string/jumbo v2, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 400
    .local v11, newTag:Ljava/lang/String;
    const-string/jumbo v2, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 401
    .local v12, newNumber:Ljava/lang/String;
    const/4 v13, 0x0

    .line 403
    .local v13, newEmails:[Ljava/lang/String;
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 404
    .local v19, email:Ljava/lang/String;
    const-string/jumbo v2, "number2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 405
    .local v7, anr:Ljava/lang/String;
    const-string/jumbo v2, "newEmails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 406
    .local v22, newEmail:Ljava/lang/String;
    const-string/jumbo v2, "newNumber2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 407
    .local v14, newAnr:Ljava/lang/String;
    const-string/jumbo v2, "number3"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 408
    .local v8, anr2:Ljava/lang/String;
    const-string/jumbo v2, "number4"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 409
    .local v9, anr3:Ljava/lang/String;
    const-string/jumbo v2, "nickname"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 410
    .local v10, sne:Ljava/lang/String;
    const-string/jumbo v2, "newNumber3"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 411
    .local v15, newAnr2:Ljava/lang/String;
    const-string/jumbo v2, "newNumber4"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 412
    .local v16, newAnr3:Ljava/lang/String;
    const-string/jumbo v2, "newNickname"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 430
    .local v17, newSne:Ljava/lang/String;
    const/4 v6, 0x0

    .line 431
    .local v6, oldEmails:[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    .line 432
    const/4 v2, 0x0

    aput-object v19, v6, v2

    .line 433
    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/String;

    .line 434
    const/4 v2, 0x0

    aput-object v22, v13, v2

    .line 435
    if-eqz v11, :cond_0

    const-string v2, ""

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v11, v5

    .line 436
    :cond_1
    if-nez v4, :cond_2

    const-string v4, ""

    :cond_2
    move-object/from16 v2, p0

    .line 438
    invoke-direct/range {v2 .. v18}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    .line 441
    .local v23, success:Z
    if-nez v23, :cond_3

    .line 442
    const/4 v2, 0x0

    .line 445
    :goto_1
    return v2

    .line 387
    .end local v3           #efType:I
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #oldEmails:[Ljava/lang/String;
    .end local v7           #anr:Ljava/lang/String;
    .end local v8           #anr2:Ljava/lang/String;
    .end local v9           #anr3:Ljava/lang/String;
    .end local v10           #sne:Ljava/lang/String;
    .end local v11           #newTag:Ljava/lang/String;
    .end local v12           #newNumber:Ljava/lang/String;
    .end local v13           #newEmails:[Ljava/lang/String;
    .end local v14           #newAnr:Ljava/lang/String;
    .end local v15           #newAnr2:Ljava/lang/String;
    .end local v16           #newAnr3:Ljava/lang/String;
    .end local v17           #newSne:Ljava/lang/String;
    .end local v19           #email:Ljava/lang/String;
    .end local v20           #emails:[Ljava/lang/String;
    .end local v22           #newEmail:Ljava/lang/String;
    .end local v23           #success:Z
    :pswitch_1
    const/16 v3, 0x6f3b

    .line 388
    .restart local v3       #efType:I
    const-string/jumbo v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 389
    goto/16 :goto_0

    .line 445
    .restart local v4       #tag:Ljava/lang/String;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v6       #oldEmails:[Ljava/lang/String;
    .restart local v7       #anr:Ljava/lang/String;
    .restart local v8       #anr2:Ljava/lang/String;
    .restart local v9       #anr3:Ljava/lang/String;
    .restart local v10       #sne:Ljava/lang/String;
    .restart local v11       #newTag:Ljava/lang/String;
    .restart local v12       #newNumber:Ljava/lang/String;
    .restart local v13       #newEmails:[Ljava/lang/String;
    .restart local v14       #newAnr:Ljava/lang/String;
    .restart local v15       #newAnr2:Ljava/lang/String;
    .restart local v16       #newAnr3:Ljava/lang/String;
    .restart local v17       #newSne:Ljava/lang/String;
    .restart local v19       #email:Ljava/lang/String;
    .restart local v20       #emails:[Ljava/lang/String;
    .restart local v22       #newEmail:Ljava/lang/String;
    .restart local v23       #success:Z
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
