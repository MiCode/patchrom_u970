.class public Lcom/android/stk/StkMenuActivity;
.super Landroid/app/ListActivity;
.source "StkMenuActivity.java"


# instance fields
.field appService:Lcom/android/stk/StkAppService;

.field private mAcceptUsersInput:Z

.field private mContext:Landroid/content/Context;

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mState:I

.field private mStkMenu:Lcom/android/internal/telephony/cat/Menu;

.field mTimeoutHandler:Landroid/os/Handler;

.field private mTitleIconView:Landroid/widget/ImageView;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 51
    iput v1, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    .line 52
    iput-boolean v1, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 54
    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    .line 55
    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    .line 56
    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    .line 58
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    .line 67
    new-instance v0, Lcom/android/stk/StkMenuActivity$1;

    invoke-direct {v0, p0}, Lcom/android/stk/StkMenuActivity$1;-><init>(Lcom/android/stk/StkMenuActivity;)V

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/android/stk/StkMenuActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/stk/StkMenuActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/stk/StkMenuActivity;->sendResponse(I)V

    return-void
.end method

.method private cancelTimeOut()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 262
    return-void
.end method

.method private displayMenu()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 276
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 280
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    :goto_0
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/Menu;->titleIconSelfExplanatory:Z

    if-nez v1, :cond_3

    .line 285
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 287
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 295
    :goto_1
    new-instance v0, Lcom/android/stk/StkMenuAdapter;

    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    iget-object v2, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-boolean v2, v2, Lcom/android/internal/telephony/cat/Menu;->itemsIconSelfExplanatory:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/android/stk/StkMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 298
    .local v0, adapter:Lcom/android/stk/StkMenuAdapter;
    invoke-virtual {p0, v0}, Lcom/android/stk/StkMenuActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 300
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget v1, v1, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    invoke-virtual {p0, v1}, Lcom/android/stk/StkMenuActivity;->setSelection(I)V

    .line 302
    .end local v0           #adapter:Lcom/android/stk/StkMenuAdapter;
    :cond_0
    return-void

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 289
    :cond_2
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 292
    :cond_3
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private getSelectedItem(I)Lcom/android/internal/telephony/cat/Item;
    .locals 4
    .parameter "position"

    .prologue
    .line 314
    const/4 v2, 0x0

    .line 315
    .local v2, item:Lcom/android/internal/telephony/cat/Item;
    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v3, :cond_0

    .line 317
    :try_start_0
    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/cat/Item;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 328
    :cond_0
    :goto_0
    return-object v2

    .line 318
    :catch_0
    move-exception v1

    .line 320
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "Invalid menu"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 322
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 324
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "Invalid menu"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initFromIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 306
    if-eqz p1, :cond_0

    .line 307
    const-string v0, "STATE"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->finish()V

    goto :goto_0
.end method

.method private isAirplaneSensitive()Z
    .locals 3

    .prologue
    .line 353
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, airplaneModeRadios:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendResponse(I)V
    .locals 1
    .parameter "resId"

    .prologue
    const/4 v0, 0x0

    .line 332
    invoke-direct {p0, p1, v0, v0}, Lcom/android/stk/StkMenuActivity;->sendResponse(IIZ)V

    .line 333
    return-void
.end method

.method private sendResponse(IIZ)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 336
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 337
    const-string v1, "op"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 338
    const-string v1, "response id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 339
    const-string v1, "menu selection"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 340
    const-string v1, "help"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 341
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/stk/StkAppService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 343
    return-void
.end method

.method private startTimeOut()V
    .locals 4

    .prologue
    .line 265
    iget v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 268
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x9c40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 271
    :cond_0
    return-void
.end method


# virtual methods
.method isAirplaneModeOnForStk()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 347
    const-string v2, "isAirplaneModeOnForStk"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->isAirplaneSensitive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/stk/StkMenuActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    const/4 v1, 0x1

    .line 81
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const-string v0, "onCreate"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, v1}, Lcom/android/stk/StkMenuActivity;->requestWindowFeature(I)Z

    .line 87
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/android/stk/StkMenuActivity;->setContentView(I)V

    .line 89
    const v0, 0x7f070015

    invoke-virtual {p0, v0}, Lcom/android/stk/StkMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Lcom/android/stk/StkMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    .line 91
    const v0, 0x7f070017

    invoke-virtual {p0, v0}, Lcom/android/stk/StkMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    .line 92
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->isAirplaneModeOnForStk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const v0, 0x7f060011

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 97
    const-string v0, "onCreate finish"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->finish()V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/stk/StkMenuActivity;->initFromIntent(Landroid/content/Intent;)V

    .line 102
    iput-boolean v1, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 103
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 196
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 197
    const v0, 0x7f060001

    invoke-interface {p1, v4, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 198
    const/4 v0, 0x3

    const/4 v1, 0x2

    const v2, 0x7f060002

    invoke-interface {p1, v4, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 199
    return v3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 191
    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 135
    iget-boolean v1, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    if-nez v1, :cond_0

    .line 152
    :goto_0
    return v0

    .line 139
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 152
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 141
    :pswitch_0
    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 143
    :pswitch_1
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 144
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 145
    const/16 v1, 0x15

    invoke-direct {p0, v1}, Lcom/android/stk/StkMenuActivity;->sendResponse(I)V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    .line 141
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 116
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 118
    iget-boolean v1, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    if-nez v1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/stk/StkMenuActivity;->getSelectedItem(I)Lcom/android/internal/telephony/cat/Item;

    move-result-object v0

    .line 123
    .local v0, item:Lcom/android/internal/telephony/cat/Item;
    if-eqz v0, :cond_0

    .line 126
    const/16 v1, 0xb

    iget v2, v0, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/stk/StkMenuActivity;->sendResponse(IIZ)V

    .line 127
    iput-boolean v3, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 128
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 129
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 109
    const-string v0, "onNewIntent"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, p1}, Lcom/android/stk/StkMenuActivity;->initFromIntent(Landroid/content/Intent;)V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 112
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 223
    iget-boolean v3, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    if-nez v3, :cond_0

    .line 245
    :goto_0
    return v2

    .line 226
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 245
    :cond_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 228
    :pswitch_1
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 229
    iput-boolean v4, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 231
    const/16 v3, 0x16

    invoke-direct {p0, v3}, Lcom/android/stk/StkMenuActivity;->sendResponse(I)V

    goto :goto_0

    .line 234
    :pswitch_2
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 235
    iput-boolean v4, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 236
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->getSelectedItemPosition()I

    move-result v0

    .line 237
    .local v0, position:I
    invoke-direct {p0, v0}, Lcom/android/stk/StkMenuActivity;->getSelectedItem(I)Lcom/android/internal/telephony/cat/Item;

    move-result-object v1

    .line 238
    .local v1, stkItem:Lcom/android/internal/telephony/cat/Item;
    if-eqz v1, :cond_1

    .line 242
    const/16 v3, 0xb

    iget v4, v1, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-direct {p0, v3, v4, v2}, Lcom/android/stk/StkMenuActivity;->sendResponse(IIZ)V

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 183
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->indicateMenuVisibility(Z)V

    .line 184
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 185
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    .line 204
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, helpVisible:Z
    const/4 v1, 0x0

    .line 208
    .local v1, mainVisible:Z
    iget v2, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 209
    const/4 v1, 0x1

    .line 211
    :cond_0
    iget-object v2, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v2, :cond_1

    .line 212
    iget-object v2, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-boolean v0, v2, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    .line 215
    :cond_1
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 216
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 218
    return v4
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 256
    const-string v0, "STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    .line 257
    const-string v0, "MENU"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Menu;

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 258
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 157
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 159
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->indicateMenuVisibility(Z)V

    .line 160
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    invoke-virtual {v0}, Lcom/android/stk/StkAppService;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 161
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-nez v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->finish()V

    .line 177
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->displayMenu()V

    .line 166
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->startTimeOut()V

    .line 170
    iget-boolean v0, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    if-nez v0, :cond_1

    .line 171
    iput v1, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    .line 172
    iput-boolean v1, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 176
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 250
    const-string v0, "STATE"

    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    const-string v0, "MENU"

    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 252
    return-void
.end method
