.class final Lcom/android/providers/media/MediaScannerService$ServiceHandler;
.super Landroid/os/Handler;
.source "MediaScannerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaScannerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaScannerService;


# direct methods
.method private constructor <init>(Lcom/android/providers/media/MediaScannerService;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/media/MediaScannerService;Lcom/android/providers/media/MediaScannerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaScannerService$ServiceHandler;-><init>(Lcom/android/providers/media/MediaScannerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .parameter "msg"

    .prologue
    .line 232
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 233
    .local v1, arguments:Landroid/os/Bundle;
    const-string v15, "filepath"

    invoke-virtual {v1, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 236
    .local v6, filePath:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 237
    :try_start_0
    const-string v15, "listener"

    invoke-virtual {v1, v15}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 238
    .local v2, binder:Landroid/os/IBinder;
    if-nez v2, :cond_1

    const/4 v9, 0x0

    .line 240
    .local v9, listener:Landroid/media/IMediaScannerListener;
    :goto_0
    const/4 v13, 0x0

    .line 242
    .local v13, uri:Landroid/net/Uri;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    const-string v16, "mimetype"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    #calls: Lcom/android/providers/media/MediaScannerService;->scanFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v15, v6, v0}, Lcom/android/providers/media/MediaScannerService;->access$100(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v13

    .line 246
    :goto_1
    if-eqz v9, :cond_0

    .line 247
    :try_start_2
    invoke-interface {v9, v6, v13}, Landroid/media/IMediaScannerListener;->scanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 298
    .end local v2           #binder:Landroid/os/IBinder;
    .end local v9           #listener:Landroid/media/IMediaScannerListener;
    .end local v13           #uri:Landroid/net/Uri;
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/providers/media/MediaScannerService;->stopSelf(I)V

    .line 299
    return-void

    .line 238
    .restart local v2       #binder:Landroid/os/IBinder;
    :cond_1
    :try_start_3
    invoke-static {v2}, Landroid/media/IMediaScannerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerListener;

    move-result-object v9

    goto :goto_0

    .line 243
    .restart local v9       #listener:Landroid/media/IMediaScannerListener;
    .restart local v13       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v4

    .line 244
    .local v4, e:Ljava/lang/Exception;
    const-string v15, "MediaScannerService"

    const-string v16, "Exception scanning file"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 294
    .end local v2           #binder:Landroid/os/IBinder;
    .end local v4           #e:Ljava/lang/Exception;
    .end local v9           #listener:Landroid/media/IMediaScannerListener;
    .end local v13           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v4

    .line 295
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v15, "MediaScannerService"

    const-string v16, "Exception in handleMessage"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 250
    .end local v4           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_4
    const-string v15, "volume"

    invoke-virtual {v1, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 251
    .local v14, volume:Ljava/lang/String;
    const-string v15, "path"

    invoke-virtual {v1, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 252
    .local v11, path:Ljava/lang/String;
    const/4 v3, 0x0

    .line 254
    .local v3, directories:[Ljava/lang/String;
    const-string v15, "internal"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 256
    const/4 v15, 0x1

    new-array v3, v15, [Ljava/lang/String;

    .end local v3           #directories:[Ljava/lang/String;
    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/media"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v3, v15

    .line 287
    .restart local v3       #directories:[Ljava/lang/String;
    :cond_3
    :goto_3
    if-eqz v3, :cond_0

    .line 290
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    #calls: Lcom/android/providers/media/MediaScannerService;->scan([Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v15, v3, v14}, Lcom/android/providers/media/MediaScannerService;->access$300(Lcom/android/providers/media/MediaScannerService;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 260
    :cond_4
    const-string v15, "external"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 262
    if-eqz v11, :cond_5

    const-string v15, "/mnt/usbdrive"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 263
    const/4 v15, 0x1

    new-array v3, v15, [Ljava/lang/String;

    .end local v3           #directories:[Ljava/lang/String;
    const/4 v15, 0x0

    const-string v16, "/mnt/usbdrive"

    aput-object v16, v3, v15

    .restart local v3       #directories:[Ljava/lang/String;
    goto :goto_3

    .line 267
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    #getter for: Lcom/android/providers/media/MediaScannerService;->mExternalStoragePaths:[Ljava/lang/String;
    invoke-static {v15}, Lcom/android/providers/media/MediaScannerService;->access$200(Lcom/android/providers/media/MediaScannerService;)[Ljava/lang/String;

    move-result-object v15

    array-length v15, v15

    new-array v12, v15, [Ljava/lang/String;

    .line 268
    .local v12, temp:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 269
    .local v7, index:I
    const/4 v15, 0x2

    invoke-static {v15}, Landroid/os/Environment;->getStorageStateByType(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, "mounted"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 270
    const/4 v15, 0x2

    invoke-static {v15}, Landroid/os/Environment;->getStorageDirectoryByType(I)Ljava/io/File;

    move-result-object v5

    .line 271
    .local v5, file:Ljava/io/File;
    add-int/lit8 v8, v7, 0x1

    .end local v7           #index:I
    .local v8, index:I
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v7

    .line 273
    .end local v5           #file:Ljava/io/File;
    :goto_4
    const/4 v15, 0x1

    invoke-static {v15}, Landroid/os/Environment;->getStorageStateByType(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, "mounted"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 274
    const/4 v15, 0x1

    invoke-static {v15}, Landroid/os/Environment;->getStorageDirectoryByType(I)Ljava/io/File;

    move-result-object v5

    .line 275
    .restart local v5       #file:Ljava/io/File;
    add-int/lit8 v7, v8, 0x1

    .end local v8           #index:I
    .restart local v7       #index:I
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v8

    .line 277
    .end local v5           #file:Ljava/io/File;
    :goto_5
    if-eqz v7, :cond_3

    .line 278
    new-array v3, v7, [Ljava/lang/String;

    .line 279
    const/4 v10, 0x0

    .local v10, loop:I
    :goto_6
    array-length v15, v3

    if-ge v10, v15, :cond_3

    .line 280
    aget-object v15, v12, v10

    aput-object v15, v3, v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 279
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .end local v7           #index:I
    .end local v10           #loop:I
    .restart local v8       #index:I
    :cond_6
    move v7, v8

    .end local v8           #index:I
    .restart local v7       #index:I
    goto :goto_5

    :cond_7
    move v8, v7

    .end local v7           #index:I
    .restart local v8       #index:I
    goto :goto_4
.end method
