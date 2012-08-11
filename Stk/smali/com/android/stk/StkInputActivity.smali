.class public Lcom/android/stk/StkInputActivity;
.super Landroid/app/Activity;
.source "StkInputActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNormalLayout:Landroid/view/View;

.field private mPromptView:Landroid/widget/TextView;

.field private mState:I

.field private mStkInput:Lcom/android/internal/telephony/cat/Input;

.field private mTextIn:Landroid/widget/EditText;

.field mTimeoutHandler:Landroid/os/Handler;

.field private mYesNoLayout:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    .line 52
    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mPromptView:Landroid/widget/TextView;

    .line 53
    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mYesNoLayout:Landroid/view/View;

    .line 54
    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mNormalLayout:Landroid/view/View;

    .line 55
    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    .line 72
    new-instance v0, Lcom/android/stk/StkInputActivity$1;

    invoke-direct {v0, p0}, Lcom/android/stk/StkInputActivity$1;-><init>(Lcom/android/stk/StkInputActivity;)V

    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method private cancelTimeOut()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 261
    return-void
.end method

.method private configInputDisplay()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 270
    const v6, 0x7f070004

    invoke-virtual {p0, v6}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 271
    .local v5, numOfCharsView:Landroid/widget/TextView;
    const v6, 0x7f070003

    invoke-virtual {p0, v6}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 273
    .local v1, inTypeView:Landroid/widget/TextView;
    const v0, 0x7f06000a

    .line 276
    .local v0, inTypeId:I
    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mPromptView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v7, v7, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-boolean v6, v6, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    if-eqz v6, :cond_0

    .line 280
    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    invoke-static {}, Lcom/android/stk/StkDigitsKeyListener;->getInstance()Lcom/android/stk/StkDigitsKeyListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 281
    const v0, 0x7f06000b

    .line 283
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 285
    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    .line 286
    const/4 v6, 0x3

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    invoke-direct {v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v6, v7}, Lcom/android/stk/StkInputActivity;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 291
    :cond_1
    iget v6, p0, Lcom/android/stk/StkInputActivity;->mState:I

    packed-switch v6, :pswitch_data_0

    .line 324
    :goto_0
    return-void

    .line 293
    :pswitch_0
    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget v3, v6, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 294
    .local v3, maxLen:I
    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget v4, v6, Lcom/android/internal/telephony/cat/Input;->minLen:I

    .line 295
    .local v4, minLen:I
    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/text/InputFilter;

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v8, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v7, v9

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 299
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, lengthLimit:Ljava/lang/String;
    if-eq v3, v4, :cond_2

    .line 301
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 303
    :cond_2
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-boolean v6, v6, Lcom/android/internal/telephony/cat/Input;->echo:Z

    if-nez v6, :cond_3

    .line 306
    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 310
    :cond_3
    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 311
    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v7, v7, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 314
    :cond_4
    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    const-string v7, ""

    sget-object v8, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v6, v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0

    .line 320
    .end local v2           #lengthLimit:Ljava/lang/String;
    .end local v3           #maxLen:I
    .end local v4           #minLen:I
    :pswitch_1
    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mYesNoLayout:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mNormalLayout:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 291
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sendResponse(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 189
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/stk/StkInputActivity;->sendResponse(ILjava/lang/String;Z)V

    .line 190
    return-void
.end method

.method private sendResponse(ILjava/lang/String;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 194
    const-string v1, "op"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    const-string v1, "response id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 196
    if-eqz p2, :cond_0

    .line 197
    const-string v1, "input"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_0
    const-string v1, "help"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 200
    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/stk/StkInputActivity;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/stk/StkAppService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 202
    return-void
.end method

.method private startTimeOut()V
    .locals 4

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->cancelTimeOut()V

    .line 265
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x9c40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 267
    return-void
.end method

.method private verfiyTypedText()Z
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget v1, v1, Lcom/android/internal/telephony/cat/Input;->minLen:I

    if-ge v0, v1, :cond_0

    .line 253
    const/4 v0, 0x0

    .line 256
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 248
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 240
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 91
    .local v0, input:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 108
    :goto_0
    :pswitch_0
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/stk/StkInputActivity;->sendResponse(ILjava/lang/String;Z)V

    .line 109
    invoke-virtual {p0}, Lcom/android/stk/StkInputActivity;->finish()V

    .line 110
    :cond_0
    return-void

    .line 94
    :pswitch_1
    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->verfiyTypedText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    goto :goto_0

    .line 101
    :pswitch_2
    const-string v0, "YES"

    .line 102
    goto :goto_0

    .line 104
    :pswitch_3
    const-string v0, "NO"

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x7f070006
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/stk/StkInputActivity;->requestWindowFeature(I)Z

    .line 118
    const v4, 0x7f030001

    invoke-virtual {p0, v4}, Lcom/android/stk/StkInputActivity;->setContentView(I)V

    .line 121
    const v4, 0x7f070005

    invoke-virtual {p0, v4}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    .line 122
    const/high16 v4, 0x7f07

    invoke-virtual {p0, v4}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/stk/StkInputActivity;->mPromptView:Landroid/widget/TextView;

    .line 125
    const v4, 0x7f070006

    invoke-virtual {p0, v4}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 126
    .local v2, okButton:Landroid/widget/Button;
    const v4, 0x7f070008

    invoke-virtual {p0, v4}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 127
    .local v3, yesButton:Landroid/widget/Button;
    const v4, 0x7f070009

    invoke-virtual {p0, v4}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 129
    .local v1, noButton:Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v4, 0x7f070007

    invoke-virtual {p0, v4}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/stk/StkInputActivity;->mYesNoLayout:Landroid/view/View;

    .line 134
    const v4, 0x7f070001

    invoke-virtual {p0, v4}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/stk/StkInputActivity;->mNormalLayout:Landroid/view/View;

    .line 138
    invoke-virtual {p0}, Lcom/android/stk/StkInputActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 139
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 140
    const-string v4, "INPUT"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/cat/Input;

    iput-object v4, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    .line 141
    iget-object v4, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    if-nez v4, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/stk/StkInputActivity;->finish()V

    .line 150
    :goto_0
    invoke-virtual {p0}, Lcom/android/stk/StkInputActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/stk/StkInputActivity;->mContext:Landroid/content/Context;

    .line 151
    return-void

    .line 144
    :cond_0
    iget-object v4, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-boolean v4, v4, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    :goto_1
    iput v4, p0, Lcom/android/stk/StkInputActivity;->mState:I

    .line 145
    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->configInputDisplay()V

    goto :goto_0

    .line 144
    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    .line 148
    :cond_2
    invoke-virtual {p0}, Lcom/android/stk/StkInputActivity;->finish()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 206
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 207
    const v0, 0x7f060001

    invoke-interface {p1, v4, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 209
    const/4 v0, 0x3

    const/4 v1, 0x2

    const v2, 0x7f060002

    invoke-interface {p1, v4, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 211
    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 179
    packed-switch p1, :pswitch_data_0

    .line 185
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 181
    :pswitch_0
    const/16 v0, 0x15

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/stk/StkInputActivity;->sendResponse(ILjava/lang/String;Z)V

    .line 182
    invoke-virtual {p0}, Lcom/android/stk/StkInputActivity;->finish()V

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 225
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 235
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 227
    :pswitch_1
    const/16 v1, 0x16

    invoke-direct {p0, v1}, Lcom/android/stk/StkInputActivity;->sendResponse(I)V

    .line 228
    invoke-virtual {p0}, Lcom/android/stk/StkInputActivity;->finish()V

    goto :goto_0

    .line 231
    :pswitch_2
    const/16 v1, 0xc

    const-string v2, ""

    invoke-direct {p0, v1, v2, v0}, Lcom/android/stk/StkInputActivity;->sendResponse(ILjava/lang/String;Z)V

    .line 232
    invoke-virtual {p0}, Lcom/android/stk/StkInputActivity;->finish()V

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 169
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 174
    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->cancelTimeOut()V

    .line 175
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 157
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 158
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 216
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 217
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 218
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 220
    return v2
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 164
    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->startTimeOut()V

    .line 165
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->startTimeOut()V

    .line 245
    return-void
.end method
