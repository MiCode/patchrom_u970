.class public Lcom/android/server/TwService;
.super Landroid/net/wifi/ITwManager$Stub;
.source "TwService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TwService$1;,
        Lcom/android/server/TwService$MyHanlder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TwService"

.field private static final TELEPHONY_1:I = 0x1


# instance fields
.field private SIMData:Ljava/lang/String;

.field private USIMData:Ljava/lang/String;

.field private final actiontype:Ljava/lang/String;

.field private final actiontypeTag:Ljava/lang/String;

.field private httpClient:Lorg/apache/http/client/HttpClient;

.field private httpParams:Lorg/apache/http/params/HttpParams;

.field private loginParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private final logonsessid:Ljava/lang/String;

.field private final logonsessidTag:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field private mTwSateTracker:Landroid/net/wifi/TwStateTracker;

.field private myHanlder:Lcom/android/server/TwService$MyHanlder;

.field private final passWord:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private final urlTag:Ljava/lang/String;

.field private user:Ljava/lang/String;

.field private final userName:Ljava/lang/String;

.field private final wlanacname:Ljava/lang/String;

.field private final wlanacnameTag:Ljava/lang/String;

.field private final wlanuserip:Ljava/lang/String;

.field private final wlanuseripTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/TwStateTracker;)V
    .locals 2
    .parameter "context"
    .parameter "twSateTracker"

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/net/wifi/ITwManager$Stub;-><init>()V

    .line 63
    const-string v0, "name=\"wlanacname\" value=\""

    iput-object v0, p0, Lcom/android/server/TwService;->wlanacnameTag:Ljava/lang/String;

    .line 64
    const-string v0, "name=\"wlanuserip\" value=\""

    iput-object v0, p0, Lcom/android/server/TwService;->wlanuseripTag:Ljava/lang/String;

    .line 65
    const-string v0, "name=\"actiontype\" value=\""

    iput-object v0, p0, Lcom/android/server/TwService;->actiontypeTag:Ljava/lang/String;

    .line 66
    const-string v0, "name=\"logonsessid\" value=\""

    iput-object v0, p0, Lcom/android/server/TwService;->logonsessidTag:Ljava/lang/String;

    .line 67
    const-string v0, "action=\""

    iput-object v0, p0, Lcom/android/server/TwService;->urlTag:Ljava/lang/String;

    .line 68
    const-string v0, "wlanacname"

    iput-object v0, p0, Lcom/android/server/TwService;->wlanacname:Ljava/lang/String;

    .line 69
    const-string v0, "wlanuserip"

    iput-object v0, p0, Lcom/android/server/TwService;->wlanuserip:Ljava/lang/String;

    .line 70
    const-string v0, "actiontype"

    iput-object v0, p0, Lcom/android/server/TwService;->actiontype:Ljava/lang/String;

    .line 71
    const-string v0, "logonsessid"

    iput-object v0, p0, Lcom/android/server/TwService;->logonsessid:Ljava/lang/String;

    .line 72
    const-string v0, "USER"

    iput-object v0, p0, Lcom/android/server/TwService;->userName:Ljava/lang/String;

    .line 73
    const-string v0, "PWD"

    iput-object v0, p0, Lcom/android/server/TwService;->passWord:Ljava/lang/String;

    .line 79
    new-instance v0, Lcom/android/server/TwService$MyHanlder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/TwService$MyHanlder;-><init>(Lcom/android/server/TwService;Lcom/android/server/TwService$1;)V

    iput-object v0, p0, Lcom/android/server/TwService;->myHanlder:Lcom/android/server/TwService$MyHanlder;

    .line 97
    iput-object p1, p0, Lcom/android/server/TwService;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/android/server/TwService;->mTwSateTracker:Landroid/net/wifi/TwStateTracker;

    .line 99
    iget-object v0, p0, Lcom/android/server/TwService;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/TwService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 102
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/TwService;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/TwService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/TwService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/TwService;->SIMData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/TwService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/TwService;->USIMData:Ljava/lang/String;

    return-object v0
.end method

.method private doPost(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 11
    .parameter "url"
    .parameter
    .parameter "isLogin"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v10, 0x0

    .line 277
    const-string v6, "TwService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[doPost] url = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isLogin = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 279
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/NameValuePair;

    .line 280
    .local v4, param:Lorg/apache/http/NameValuePair;
    const-string v6, "TwService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[doPost] param name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 283
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #param:Lorg/apache/http/NameValuePair;
    :cond_0
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 285
    .local v1, httpRequest:Lorg/apache/http/client/methods/HttpPost;
    const-string v5, "doPostError"

    .line 288
    .local v5, strResult:Ljava/lang/String;
    :try_start_0
    new-instance v6, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v7, "UTF-8"

    invoke-direct {v6, p2, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 289
    iget-object v6, p0, Lcom/android/server/TwService;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v6, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 290
    .local v2, httpResponse:Lorg/apache/http/HttpResponse;
    const-string v6, "TwService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_5

    .line 292
    if-eqz p3, :cond_4

    .line 293
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 296
    const/4 v6, 0x1

    :try_start_1
    invoke-direct {p0, v5, v6}, Lcom/android/server/TwService;->parseHtml(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/TwService;->loginParams:Ljava/util/ArrayList;

    .line 297
    iget-object v6, p0, Lcom/android/server/TwService;->loginParams:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 298
    iget-object v6, p0, Lcom/android/server/TwService;->mTwSateTracker:Landroid/net/wifi/TwStateTracker;

    sget-object v7, Landroid/net/wifi/TwState;->CONNECT_FAILED:Landroid/net/wifi/TwState;

    invoke-virtual {v6, v7}, Landroid/net/wifi/TwStateTracker;->setTwState(Landroid/net/wifi/TwState;)V

    .line 330
    .end local v2           #httpResponse:Lorg/apache/http/HttpResponse;
    :goto_1
    return-void

    .line 301
    .restart local v2       #httpResponse:Lorg/apache/http/HttpResponse;
    :cond_1
    iget-object v6, p0, Lcom/android/server/TwService;->user:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 302
    iget-object v6, p0, Lcom/android/server/TwService;->loginParams:Ljava/util/ArrayList;

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "USER"

    iget-object v9, p0, Lcom/android/server/TwService;->user:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_2
    iget-object v6, p0, Lcom/android/server/TwService;->mTwSateTracker:Landroid/net/wifi/TwStateTracker;

    sget-object v7, Landroid/net/wifi/TwState;->CONNECTED:Landroid/net/wifi/TwState;

    invoke-virtual {v6, v7}, Landroid/net/wifi/TwStateTracker;->setTwState(Landroid/net/wifi/TwState;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 306
    :catch_0
    move-exception v0

    .line 308
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v6, "TwService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[doPost] parseHtml e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v6, p0, Lcom/android/server/TwService;->mTwSateTracker:Landroid/net/wifi/TwStateTracker;

    sget-object v7, Landroid/net/wifi/TwState;->CONNECT_FAILED:Landroid/net/wifi/TwState;

    invoke-virtual {v6, v7}, Landroid/net/wifi/TwStateTracker;->setTwState(Landroid/net/wifi/TwState;)V

    .line 310
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/TwService;->loginParams:Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 323
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #httpResponse:Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v0

    .line 324
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v6, "TwService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[doPost] e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    if-eqz p3, :cond_3

    .line 326
    iget-object v6, p0, Lcom/android/server/TwService;->mTwSateTracker:Landroid/net/wifi/TwStateTracker;

    sget-object v7, Landroid/net/wifi/TwState;->CONNECT_FAILED:Landroid/net/wifi/TwState;

    invoke-virtual {v6, v7}, Landroid/net/wifi/TwStateTracker;->setTwState(Landroid/net/wifi/TwState;)V

    .line 328
    :cond_3
    iput-object v10, p0, Lcom/android/server/TwService;->loginParams:Ljava/util/ArrayList;

    goto :goto_1

    .line 314
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #httpResponse:Lorg/apache/http/HttpResponse;
    :cond_4
    :try_start_3
    iget-object v6, p0, Lcom/android/server/TwService;->mTwSateTracker:Landroid/net/wifi/TwStateTracker;

    sget-object v7, Landroid/net/wifi/TwState;->DISCONNECTED:Landroid/net/wifi/TwState;

    invoke-virtual {v6, v7}, Landroid/net/wifi/TwStateTracker;->setTwState(Landroid/net/wifi/TwState;)V

    .line 315
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/TwService;->loginParams:Ljava/util/ArrayList;

    goto :goto_1

    .line 318
    :cond_5
    if-eqz p3, :cond_6

    .line 319
    iget-object v6, p0, Lcom/android/server/TwService;->mTwSateTracker:Landroid/net/wifi/TwStateTracker;

    sget-object v7, Landroid/net/wifi/TwState;->CONNECT_FAILED:Landroid/net/wifi/TwState;

    invoke-virtual {v6, v7}, Landroid/net/wifi/TwStateTracker;->setTwState(Landroid/net/wifi/TwState;)V

    .line 321
    :cond_6
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/TwService;->loginParams:Ljava/util/ArrayList;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method

.method private getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 8

    .prologue
    const/16 v5, 0x4e20

    .line 333
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v4, p0, Lcom/android/server/TwService;->httpParams:Lorg/apache/http/params/HttpParams;

    .line 334
    iget-object v4, p0, Lcom/android/server/TwService;->httpParams:Lorg/apache/http/params/HttpParams;

    invoke-static {v4, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 335
    iget-object v4, p0, Lcom/android/server/TwService;->httpParams:Lorg/apache/http/params/HttpParams;

    invoke-static {v4, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 336
    iget-object v4, p0, Lcom/android/server/TwService;->httpParams:Lorg/apache/http/params/HttpParams;

    const/16 v5, 0x2000

    invoke-static {v4, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 337
    iget-object v4, p0, Lcom/android/server/TwService;->httpParams:Lorg/apache/http/params/HttpParams;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 339
    const-string v3, "Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.9.2) Gecko/20100115 Firefox/3.6"

    .line 340
    .local v3, userAgent:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/TwService;->httpParams:Lorg/apache/http/params/HttpParams;

    invoke-static {v4, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 342
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 343
    .local v2, sr:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    const/16 v7, 0x50

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 346
    :try_start_0
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    invoke-static {}, Landroid/net/wifi/TrustAllSSLSocketFactory;->getDefault()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v6

    const/16 v7, 0x1bb

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    iget-object v4, p0, Lcom/android/server/TwService;->httpParams:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, v4, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 354
    .local v0, cm:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v5, p0, Lcom/android/server/TwService;->httpParams:Lorg/apache/http/params/HttpParams;

    invoke-direct {v4, v0, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v4, p0, Lcom/android/server/TwService;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 356
    iget-object v4, p0, Lcom/android/server/TwService;->httpClient:Lorg/apache/http/client/HttpClient;

    return-object v4

    .line 349
    .end local v0           #cm:Lorg/apache/http/conn/ClientConnectionManager;
    :catch_0
    move-exception v1

    .line 351
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initTelephony()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method private parseHtml(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 14
    .parameter "html"
    .parameter "login"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 234
    const-string v11, "TwService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[parseHtml] html = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v2, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    const-string v11, "action=\""

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const-string v12, "action=\""

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, tempUrl:Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "\""

    invoke-virtual {v3, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 238
    .local v8, url:Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 239
    iput-object v8, p0, Lcom/android/server/TwService;->url:Ljava/lang/String;

    .line 240
    const-string v11, "TwService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[parseHtml] html url = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    const-string v11, "name=\"wlanacname\" value=\""

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const-string v12, "name=\"wlanacname\" value=\""

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 243
    .local v6, tempwlanacname:Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "\">"

    invoke-virtual {v6, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 244
    .local v9, wlanacname:Ljava/lang/String;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 245
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v12, "wlanacname"

    invoke-direct {v11, v12, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    const-string v11, "TwService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[parseHtml] html wlanacname = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_1
    const-string v11, "name=\"wlanuserip\" value=\""

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const-string v12, "name=\"wlanuserip\" value=\""

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 249
    .local v7, tempwlanuserip:Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "\">"

    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 250
    .local v10, wlanuserip:Ljava/lang/String;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 251
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v12, "wlanuserip"

    invoke-direct {v11, v12, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    const-string v11, "TwService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[parseHtml] html wlanuserip = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_2
    const-string v11, "name=\"actiontype\" value=\""

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const-string v12, "name=\"actiontype\" value=\""

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 255
    .local v4, tempactiontype:Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "\">"

    invoke-virtual {v4, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, actiontype:Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_4

    .line 257
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v12, "actiontype"

    invoke-direct {v11, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    const-string v11, "TwService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[parseHtml] html actiontype = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    if-eqz p2, :cond_4

    .line 260
    const-string v11, "LOGIN"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 261
    const/4 v2, 0x0

    .line 271
    .end local v2           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :cond_3
    :goto_0
    return-object v2

    .line 265
    .restart local v2       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :cond_4
    const-string v11, "name=\"logonsessid\" value=\""

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const-string v12, "name=\"logonsessid\" value=\""

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 266
    .local v5, templogonsessid:Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "\">"

    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, logonsessid:Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 268
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v12, "logonsessid"

    invoke-direct {v11, v12, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    const-string v11, "TwService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[parseHtml] html logonsessid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getGsmAuth(Ljava/lang/String;)V
    .locals 2
    .parameter "rand"

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    const-string v0, "TwService"

    const-string v1, "[getGsmAuth]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getImsi()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public declared-synchronized getSimType()V
    .locals 2

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    const-string v0, "TwService"

    const-string v1, "[getSimType]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTwState()Landroid/net/wifi/TwState;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/server/TwService;->mTwSateTracker:Landroid/net/wifi/TwStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/TwStateTracker;->getTwState()Landroid/net/wifi/TwState;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getUmtsAuth(Ljava/lang/String;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    const-string v0, "TwService"

    const-string v1, "[getUmtsAuth]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public reSetTwState()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/server/TwService;->mTwSateTracker:Landroid/net/wifi/TwStateTracker;

    sget-object v1, Landroid/net/wifi/TwState;->IDLE:Landroid/net/wifi/TwState;

    invoke-virtual {v0, v1}, Landroid/net/wifi/TwStateTracker;->setTwState(Landroid/net/wifi/TwState;)V

    .line 231
    return-void
.end method

.method public twWpaInit()I
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Landroid/net/wifi/TwNative;->TwInit()I

    move-result v0

    return v0
.end method

.method public twWpaUnInit()I
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Landroid/net/wifi/TwNative;->TwUnInit()I

    move-result v0

    return v0
.end method

.method public webPortalLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "userName"
    .parameter "password"

    .prologue
    .line 139
    const-string v5, "qxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[webPortalLogin] userName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " password = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v5, p0, Lcom/android/server/TwService;->mTwSateTracker:Landroid/net/wifi/TwStateTracker;

    invoke-virtual {v5}, Landroid/net/wifi/TwStateTracker;->getTwState()Landroid/net/wifi/TwState;

    move-result-object v5

    invoke-static {v5}, Landroid/net/wifi/TwState;->isConnected(Landroid/net/wifi/TwState;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 146
    iget-object v5, p0, Lcom/android/server/TwService;->httpClient:Lorg/apache/http/client/HttpClient;

    if-nez v5, :cond_2

    .line 147
    invoke-direct {p0}, Lcom/android/server/TwService;->getHttpClient()Lorg/apache/http/client/HttpClient;

    .line 149
    :cond_2
    iget-object v5, p0, Lcom/android/server/TwService;->mTwSateTracker:Landroid/net/wifi/TwStateTracker;

    sget-object v6, Landroid/net/wifi/TwState;->CONNECTING:Landroid/net/wifi/TwState;

    invoke-virtual {v5, v6}, Landroid/net/wifi/TwStateTracker;->setTwState(Landroid/net/wifi/TwState;)V

    .line 150
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    const-string v5, "http://www.baidu.com"

    invoke-direct {v1, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 152
    .local v1, httpRequest:Lorg/apache/http/client/methods/HttpGet;
    const-string v3, "doGetError"

    .line 156
    .local v3, strResult:Ljava/lang/String;
    :try_start_0
    const-string v5, "TwService"

    const-string v6, "[webPortalLogin] http GET"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v5, p0, Lcom/android/server/TwService;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v5, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 158
    .local v2, httpResponse:Lorg/apache/http/HttpResponse;
    const-string v5, "TwService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_4

    .line 162
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    .line 164
    const-string v5, "TwService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[webPortalLogin] strResult = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 168
    if-eqz v3, :cond_3

    :try_start_1
    const-string v5, "wlanacname"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_3

    const-string v5, "wlanuserip"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_3

    const-string v5, "wlanacip"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_3

    .line 169
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/server/TwService;->parseHtml(Ljava/lang/String;Z)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    .line 180
    .local v4, tmpParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :try_start_2
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "USER"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    iput-object p1, p0, Lcom/android/server/TwService;->user:Ljava/lang/String;

    .line 182
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "PWD"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v5, p0, Lcom/android/server/TwService;->url:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/TwService;->url:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 184
    iget-object v5, p0, Lcom/android/server/TwService;->url:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct {p0, v5, v4, v6}, Lcom/android/server/TwService;->doPost(Ljava/lang/String;Ljava/util/List;Z)V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 189
    .end local v2           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v4           #tmpParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    const-string v5, "TwService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[webPortalLogin] e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v5, p0, Lcom/android/server/TwService;->mTwSateTracker:Landroid/net/wifi/TwStateTracker;

    sget-object v6, Landroid/net/wifi/TwState;->CONNECT_FAILED:Landroid/net/wifi/TwState;

    invoke-virtual {v5, v6}, Landroid/net/wifi/TwStateTracker;->setTwState(Landroid/net/wifi/TwState;)V

    goto/16 :goto_0

    .line 171
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    .restart local v2       #httpResponse:Lorg/apache/http/HttpResponse;
    :cond_3
    :try_start_3
    iget-object v5, p0, Lcom/android/server/TwService;->mTwSateTracker:Landroid/net/wifi/TwStateTracker;

    sget-object v6, Landroid/net/wifi/TwState;->CONNECTED:Landroid/net/wifi/TwState;

    invoke-virtual {v5, v6}, Landroid/net/wifi/TwStateTracker;->setTwState(Landroid/net/wifi/TwState;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 175
    :catch_1
    move-exception v0

    .line 177
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    iget-object v5, p0, Lcom/android/server/TwService;->mTwSateTracker:Landroid/net/wifi/TwStateTracker;

    sget-object v6, Landroid/net/wifi/TwState;->CONNECT_FAILED:Landroid/net/wifi/TwState;

    invoke-virtual {v5, v6}, Landroid/net/wifi/TwStateTracker;->setTwState(Landroid/net/wifi/TwState;)V
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 192
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #httpResponse:Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v0

    .line 193
    .local v0, e:Ljava/io/IOException;
    const-string v5, "TwService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[webPortalLogin] e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v5, p0, Lcom/android/server/TwService;->mTwSateTracker:Landroid/net/wifi/TwStateTracker;

    sget-object v6, Landroid/net/wifi/TwState;->CONNECT_FAILED:Landroid/net/wifi/TwState;

    invoke-virtual {v5, v6}, Landroid/net/wifi/TwStateTracker;->setTwState(Landroid/net/wifi/TwState;)V

    goto/16 :goto_0

    .line 187
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #httpResponse:Lorg/apache/http/HttpResponse;
    :cond_4
    :try_start_5
    iget-object v5, p0, Lcom/android/server/TwService;->mTwSateTracker:Landroid/net/wifi/TwStateTracker;

    sget-object v6, Landroid/net/wifi/TwState;->CONNECT_FAILED:Landroid/net/wifi/TwState;

    invoke-virtual {v5, v6}, Landroid/net/wifi/TwStateTracker;->setTwState(Landroid/net/wifi/TwState;)V
    :try_end_5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 195
    .end local v2           #httpResponse:Lorg/apache/http/HttpResponse;
    :catch_3
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "TwService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[webPortalLogin] e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v5, p0, Lcom/android/server/TwService;->mTwSateTracker:Landroid/net/wifi/TwStateTracker;

    sget-object v6, Landroid/net/wifi/TwState;->CONNECT_FAILED:Landroid/net/wifi/TwState;

    invoke-virtual {v5, v6}, Landroid/net/wifi/TwStateTracker;->setTwState(Landroid/net/wifi/TwState;)V

    goto/16 :goto_0
.end method

.method public webPortalLogout()V
    .locals 3

    .prologue
    .line 202
    const-string v0, "TwService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[webPortalLogout] TwState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/TwService;->mTwSateTracker:Landroid/net/wifi/TwStateTracker;

    invoke-virtual {v2}, Landroid/net/wifi/TwStateTracker;->getTwState()Landroid/net/wifi/TwState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/android/server/TwService;->mTwSateTracker:Landroid/net/wifi/TwStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/TwStateTracker;->getTwState()Landroid/net/wifi/TwState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/TwState;->CONNECTED:Landroid/net/wifi/TwState;

    if-ne v0, v1, :cond_0

    .line 204
    const-string v0, "TwService"

    const-string v1, "[webPortalLogout] "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/android/server/TwService;->mTwSateTracker:Landroid/net/wifi/TwStateTracker;

    sget-object v1, Landroid/net/wifi/TwState;->DISCONNECTING:Landroid/net/wifi/TwState;

    invoke-virtual {v0, v1}, Landroid/net/wifi/TwStateTracker;->setTwState(Landroid/net/wifi/TwState;)V

    .line 207
    iget-object v0, p0, Lcom/android/server/TwService;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/TwService;->loginParams:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/server/TwService;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/TwService;->loginParams:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/TwService;->doPost(Ljava/lang/String;Ljava/util/List;Z)V

    .line 223
    :cond_0
    return-void
.end method
