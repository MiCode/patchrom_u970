.class public Lcom/nvidia/NvCamera$NvParameters;
.super Landroid/hardware/Camera$Parameters;
.source "NvCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/NvCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NvParameters"
.end annotation


# static fields
.field private static final NV_AUTOEXPOSURE_LOCK:Ljava/lang/String; = "auto-exposure-lock"

.field private static final NV_AUTOWHITEBALANCE_LOCK:Ljava/lang/String; = "auto-whitebalance-lock"

.field private static final NV_AUTO_ROTATION:Ljava/lang/String; = "nv-auto-rotation"

.field private static final NV_BURST_PICTURE_COUNT:Ljava/lang/String; = "nv-burst-picture-count"

.field private static final NV_CAPABILITY_FOR_VIDEO_SIZE:Ljava/lang/String; = "nv-capabilities-for-video-size"

.field private static final NV_COLOR_CORRECTION:Ljava/lang/String; = "nv-color-correction"

.field private static final NV_EDGE_ENHANCEMENT:Ljava/lang/String; = "nv-edge-enhancement"

.field private static final NV_EV_BRACKET_CAPTURE:Ljava/lang/String; = "nv-ev-bracket-capture"

.field private static final NV_EXPOSURE_TIME:Ljava/lang/String; = "nv-exposure-time"

.field private static final NV_FOCUS_AREAS:Ljava/lang/String; = "focus-areas"

.field private static final NV_FOCUS_POSITION:Ljava/lang/String; = "nv-focus-position"

.field private static final NV_METERING_AREAS:Ljava/lang/String; = "metering-areas"

.field private static final NV_NSL_BURST_PICTURE_COUNT:Ljava/lang/String; = "nv-nsl-burst-picture-count"

.field private static final NV_NSL_NUM_BUFFERS:Ljava/lang/String; = "nv-nsl-num-buffers"

.field private static final NV_NSL_SKIP_COUNT:Ljava/lang/String; = "nv-nsl-burst-skip-count"

.field private static final NV_PICTURE_ISO:Ljava/lang/String; = "nv-picture-iso"

.field private static final NV_RAW_DUMP_FLAG:Ljava/lang/String; = "nv-raw-dump-flag"

.field private static final NV_SENSOR_CAPTURE_RATE:Ljava/lang/String; = "nv-sensor-capture-rate"

.field private static final NV_SKIP_COUNT:Ljava/lang/String; = "nv-burst-skip-count"

.field private static final NV_STEREO_MODE:Ljava/lang/String; = "nv-stereo-mode"

.field private static final NV_SUPPORTED_VALUES_SUFFIX:Ljava/lang/String; = "-values"

.field private static final NV_VIDEO_SPEED:Ljava/lang/String; = "nv-video-speed"


# instance fields
.field final synthetic this$0:Lcom/nvidia/NvCamera;


# direct methods
.method protected constructor <init>(Lcom/nvidia/NvCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/nvidia/NvCamera$NvParameters;->this$0:Lcom/nvidia/NvCamera;

    .line 292
    invoke-direct {p0, p1}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;)V

    .line 293
    return-void
.end method

.method private StringToWindows(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nvidia/NvCamera$NvWindow;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1300
    .local p1, windowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvWindow;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1302
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v7, "("

    invoke-direct {v5, p2, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    .local v5, tokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1305
    new-instance v6, Lcom/nvidia/NvCamera$NvWindow;

    invoke-direct {v6}, Lcom/nvidia/NvCamera$NvWindow;-><init>()V

    .line 1306
    .local v6, window:Lcom/nvidia/NvCamera$NvWindow;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1307
    .local v4, token:Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v3, v4, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    .local v3, subTokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1309
    .local v2, subToken:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/nvidia/NvCamera$NvWindow;->left:I

    .line 1310
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1311
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/nvidia/NvCamera$NvWindow;->top:I

    .line 1312
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1313
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/nvidia/NvCamera$NvWindow;->right:I

    .line 1314
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1315
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/nvidia/NvCamera$NvWindow;->bottom:I

    .line 1316
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1317
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v7, ")"

    invoke-direct {v1, v2, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    .local v1, endTokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1319
    .local v0, endToken:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/nvidia/NvCamera$NvWindow;->weight:I

    .line 1320
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1323
    .end local v0           #endToken:Ljava/lang/String;
    .end local v1           #endTokenizer:Ljava/util/StringTokenizer;
    .end local v2           #subToken:Ljava/lang/String;
    .end local v3           #subTokenizer:Ljava/util/StringTokenizer;
    .end local v4           #token:Ljava/lang/String;
    .end local v5           #tokenizer:Ljava/util/StringTokenizer;
    .end local v6           #window:Lcom/nvidia/NvCamera$NvWindow;
    :cond_0
    return-void
.end method

.method private WindowsToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nvidia/NvCamera$NvWindow;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1270
    .local p1, windowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvWindow;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1272
    :cond_0
    const/4 v4, 0x0

    .line 1295
    :goto_0
    return-object v4

    .line 1276
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1277
    .local v1, size:I
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1278
    .local v3, windowsString:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 1280
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nvidia/NvCamera$NvWindow;

    .line 1281
    .local v2, window:Lcom/nvidia/NvCamera$NvWindow;
    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    iget v4, v2, Lcom/nvidia/NvCamera$NvWindow;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1283
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    iget v4, v2, Lcom/nvidia/NvCamera$NvWindow;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1285
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    iget v4, v2, Lcom/nvidia/NvCamera$NvWindow;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1287
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    iget v4, v2, Lcom/nvidia/NvCamera$NvWindow;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1289
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1290
    iget v4, v2, Lcom/nvidia/NvCamera$NvWindow;->weight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1291
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    add-int/lit8 v4, v1, -0x1

    if-eq v0, v4, :cond_2

    .line 1293
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1295
    .end local v2           #window:Lcom/nvidia/NvCamera$NvWindow;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public getAutoExposureLock()Z
    .locals 2

    .prologue
    .line 1190
    const-string v1, "auto-exposure-lock"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1191
    .local v0, v:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getAutoRotation()Z
    .locals 2

    .prologue
    .line 1214
    const-string/jumbo v1, "nv-auto-rotation"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1215
    .local v0, v:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getAutoWhiteBalanceLock()Z
    .locals 2

    .prologue
    .line 1174
    const-string v1, "auto-whitebalance-lock"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1175
    .local v0, v:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getBurstCount()I
    .locals 1

    .prologue
    .line 520
    const-string/jumbo v0, "nv-burst-picture-count"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCapabilitiesForVideoSizes()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nvidia/NvCamera$NvVideoPreviewFps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 730
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 734
    .local v1, VideoPreviewSizeFPS:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvVideoPreviewFps;>;"
    const-string/jumbo v9, "nv-capabilities-for-video-size-values"

    invoke-virtual {p0, v9}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 735
    .local v2, str:Ljava/lang/String;
    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 770
    .end local v1           #VideoPreviewSizeFPS:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvVideoPreviewFps;>;"
    :cond_0
    return-object v1

    .line 736
    .restart local v1       #VideoPreviewSizeFPS:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvVideoPreviewFps;>;"
    :cond_1
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v9, ","

    invoke-direct {v6, v2, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    .local v6, tokenizer1:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 739
    new-instance v0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;

    invoke-direct {v0}, Lcom/nvidia/NvCamera$NvVideoPreviewFps;-><init>()V

    .line 741
    .local v0, TempVideoPreviewFps:Lcom/nvidia/NvCamera$NvVideoPreviewFps;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 744
    .local v3, token1:Ljava/lang/String;
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v9, ":"

    invoke-direct {v7, v3, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    .local v7, tokenizer2:Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 747
    .local v4, token2:Ljava/lang/String;
    new-instance v8, Ljava/util/StringTokenizer;

    const-string/jumbo v9, "x"

    invoke-direct {v8, v4, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    .local v8, tokenizer3:Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 751
    .local v5, token3:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->VideoWidth:I

    .line 752
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 753
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->VideoHeight:I

    .line 755
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 756
    new-instance v8, Ljava/util/StringTokenizer;

    .end local v8           #tokenizer3:Ljava/util/StringTokenizer;
    const-string/jumbo v9, "x"

    invoke-direct {v8, v4, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    .restart local v8       #tokenizer3:Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 760
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->MaxPreviewWidth:I

    .line 761
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 762
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->MaxPreviewHeight:I

    .line 764
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 766
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->MaxFps:I

    .line 768
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getColorCorrection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 923
    const-string/jumbo v0, "nv-color-correction"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorCorrection([F)V
    .locals 8
    .parameter "matrix"

    .prologue
    const/16 v7, 0x10

    .line 941
    if-eqz p1, :cond_1

    array-length v6, p1

    if-ne v6, v7, :cond_1

    .line 943
    const-string/jumbo v6, "nv-color-correction"

    invoke-virtual {p0, v6}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 944
    .local v3, str:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 946
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v7, :cond_1

    .line 947
    const/4 v6, 0x0

    aput v6, p1, v0

    .line 946
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 951
    .end local v0           #i:I
    :cond_0
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v5, v3, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    .local v5, tokenizer:Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    .line 953
    .local v1, index:I
    :goto_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 955
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 956
    .local v4, token:Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, p1, v1

    move v1, v2

    .line 957
    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_1

    .line 960
    .end local v1           #index:I
    .end local v3           #str:Ljava/lang/String;
    .end local v4           #token:Ljava/lang/String;
    .end local v5           #tokenizer:Ljava/util/StringTokenizer;
    :cond_1
    return-void
.end method

.method public getEdgeEnhancement()I
    .locals 1

    .prologue
    .line 1050
    const-string/jumbo v0, "nv-edge-enhancement"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getExposureTime()I
    .locals 1

    .prologue
    .line 1082
    const-string/jumbo v0, "nv-exposure-time"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFocusAreas(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nvidia/NvCamera$NvWindow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 829
    .local p1, windowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvWindow;>;"
    const-string v1, "focus-areas"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 830
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/nvidia/NvCamera$NvParameters;->StringToWindows(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 831
    return-void
.end method

.method public getFocusPosition()I
    .locals 1

    .prologue
    .line 1147
    const-string/jumbo v0, "nv-focus-position"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMeteringAreas(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nvidia/NvCamera$NvWindow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 888
    .local p1, windowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvWindow;>;"
    const-string/jumbo v1, "metering-areas"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 889
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/nvidia/NvCamera$NvParameters;->StringToWindows(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 890
    return-void
.end method

.method public getNSLBurstCount()I
    .locals 1

    .prologue
    .line 445
    const-string/jumbo v0, "nv-nsl-burst-picture-count"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNSLNumBuffers()I
    .locals 1

    .prologue
    .line 380
    const-string/jumbo v0, "nv-nsl-num-buffers"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNSLSkipCount()I
    .locals 1

    .prologue
    .line 416
    const-string/jumbo v0, "nv-nsl-burst-skip-count"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPictureISO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1112
    const-string/jumbo v0, "nv-picture-iso"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawDumpFlag()I
    .locals 1

    .prologue
    .line 565
    const-string/jumbo v0, "nv-raw-dump-flag"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSkipCount()I
    .locals 1

    .prologue
    .line 501
    const-string/jumbo v0, "nv-burst-skip-count"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStereoMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1248
    const-string/jumbo v0, "nv-stereo-mode"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedSensorCaptureRate()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 647
    const-string/jumbo v5, "nv-sensor-capture-rate-values"

    invoke-virtual {p0, v5}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 648
    .local v2, str:Ljava/lang/String;
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 658
    :cond_0
    return-object v0

    .line 650
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .local v0, SensorCaptureRate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v4, v2, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    .local v4, tokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 654
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 655
    .local v3, token:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 656
    .local v1, r:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSupportedStereoModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1264
    const-string/jumbo v1, "nv-stereo-mode-values"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1265
    .local v0, str:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->splitCloned(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedVideoSpeeds()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 700
    const-string/jumbo v5, "nv-video-speed-values"

    invoke-virtual {p0, v5}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 701
    .local v1, str:Ljava/lang/String;
    if-nez v1, :cond_1

    const/4 v4, 0x0

    .line 711
    :cond_0
    return-object v4

    .line 703
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 704
    .local v4, videospeeds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v3, v1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    .local v3, tokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 707
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 708
    .local v2, token:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 709
    .local v0, s:F
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setAutoExposureLock(Z)V
    .locals 2
    .parameter "lock"

    .prologue
    .line 1182
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 1183
    .local v0, v:Ljava/lang/String;
    const-string v1, "auto-exposure-lock"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    return-void
.end method

.method public setAutoRotation(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1206
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 1207
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-auto-rotation"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    return-void
.end method

.method public setAutoWhiteBalanceLock(Z)V
    .locals 2
    .parameter "lock"

    .prologue
    .line 1166
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 1167
    .local v0, v:Ljava/lang/String;
    const-string v1, "auto-whitebalance-lock"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    return-void
.end method

.method public setBurstCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 512
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-burst-picture-count"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    return-void
.end method

.method public setColorCorrection(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 915
    const-string/jumbo v0, "nv-color-correction"

    invoke-virtual {p0, v0, p1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    return-void
.end method

.method public setColorCorrection([F)V
    .locals 5
    .parameter "matrix"

    .prologue
    const/16 v4, 0xf

    .line 927
    if-eqz p1, :cond_1

    array-length v2, p1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    .line 929
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 930
    .local v1, matrixString:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 932
    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 933
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 935
    :cond_0
    aget v2, p1, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 936
    const-string/jumbo v2, "nv-color-correction"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    .end local v0           #i:I
    .end local v1           #matrixString:Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method public setEdgeEnhancement(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1041
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1042
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-edge-enhancement"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    return-void
.end method

.method public setEvBracketCapture([F)V
    .locals 4
    .parameter "evValues"

    .prologue
    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 595
    .local v0, evString:Ljava/lang/StringBuilder;
    if-nez p1, :cond_0

    .line 597
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    :goto_0
    const-string/jumbo v2, "nv-ev-bracket-capture"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    return-void

    .line 601
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 603
    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 604
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 606
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public setExposureTime(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1074
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1075
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-exposure-time"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    return-void
.end method

.method public setFocusAreas(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nvidia/NvCamera$NvWindow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 817
    .local p1, windowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvWindow;>;"
    invoke-direct {p0, p1}, Lcom/nvidia/NvCamera$NvParameters;->WindowsToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 818
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 819
    const-string v1, "focus-areas"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    :cond_0
    return-void
.end method

.method public setFocusPosition(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1139
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1140
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-focus-position"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    return-void
.end method

.method public setMeteringAreas(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nvidia/NvCamera$NvWindow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 876
    .local p1, windowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvWindow;>;"
    invoke-direct {p0, p1}, Lcom/nvidia/NvCamera$NvParameters;->WindowsToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 877
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 878
    const-string/jumbo v1, "metering-areas"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    :cond_0
    return-void
.end method

.method public setNSLBurstCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 437
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-nsl-burst-picture-count"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method public setNSLNumBuffers(I)V
    .locals 2
    .parameter "num"

    .prologue
    .line 361
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-nsl-num-buffers"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public setNSLSkipCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 408
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-nsl-burst-skip-count"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public setPictureISO(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 1105
    const-string/jumbo v0, "nv-picture-iso"

    invoke-virtual {p0, v0, p1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    return-void
.end method

.method public setRawDumpFlag(I)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 557
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-raw-dump-flag"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    return-void
.end method

.method public setSensorCaptureRate(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 638
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-sensor-capture-rate"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    return-void
.end method

.method public setSkipCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 493
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-burst-skip-count"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method public setStereoMode(Ljava/lang/String;)V
    .locals 1
    .parameter "stereoMode"

    .prologue
    .line 1236
    const-string/jumbo v0, "nv-stereo-mode"

    invoke-virtual {p0, v0, p1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    return-void
.end method

.method public setVideoSpeed(F)V
    .locals 2
    .parameter "value"

    .prologue
    .line 691
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 692
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-video-speed"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    return-void
.end method

.method protected splitCloned(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 310
    :cond_0
    return-object v0

    .line 305
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .local v1, tokenizer:Ljava/util/StringTokenizer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v0, substrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
