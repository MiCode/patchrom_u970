.class public Lcom/android/internal/telephony/AdnRecord;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final ADN_BCD_NUMBER_LENGTH:I = 0x0

.field static final ADN_CAPABILITY_ID:I = 0xc

.field static final ADN_DIALING_NUMBER_END:I = 0xb

.field static final ADN_DIALING_NUMBER_START:I = 0x2

.field static final ADN_EXTENSION_ID:I = 0xd

.field static final ADN_TON_AND_NPI:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb


# instance fields
.field alphaTag:Ljava/lang/String;

.field anr:Ljava/lang/String;

.field anr2:Ljava/lang/String;

.field anr3:Ljava/lang/String;

.field efid:I

.field emails:[Ljava/lang/String;

.field extRecord:I

.field iap:I

.field indexInIap:I

.field mEfSize:I

.field number:Ljava/lang/String;

.field recordNumber:I

.field sne:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/android/internal/telephony/AdnRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/AdnRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v1, -0x1

    .line 188
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 43
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 47
    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->iap:I

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr2:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr3:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    .line 52
    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->indexInIap:I

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->mEfSize:I

    .line 189
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 190
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 191
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 192
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 195
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 196
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr2:Ljava/lang/String;

    .line 197
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr3:Ljava/lang/String;

    .line 198
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v1, -0x1

    .line 131
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 43
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 47
    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->iap:I

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr2:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr3:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    .line 52
    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->indexInIap:I

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->mEfSize:I

    .line 132
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 133
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 134
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 135
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 136
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 138
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 139
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr2:Ljava/lang/String;

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr3:Ljava/lang/String;

    .line 141
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anr"
    .parameter "anr2"
    .parameter "anr3"
    .parameter "sne"

    .prologue
    const/4 v1, -0x1

    .line 176
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 43
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 47
    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->iap:I

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr2:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr3:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    .line 52
    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->indexInIap:I

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->mEfSize:I

    .line 177
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 178
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 179
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 180
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 181
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 182
    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 183
    iput-object p7, p0, Lcom/android/internal/telephony/AdnRecord;->anr2:Ljava/lang/String;

    .line 184
    iput-object p8, p0, Lcom/android/internal/telephony/AdnRecord;->anr3:Ljava/lang/String;

    .line 185
    iput-object p9, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "record"

    .prologue
    const/4 v1, -0x1

    .line 117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 43
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 47
    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->iap:I

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr2:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr3:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    .line 52
    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->indexInIap:I

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->mEfSize:I

    .line 118
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 119
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 120
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/AdnRecord;->parseRecord([B)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "alphaTag"
    .parameter "number"
    .parameter "iap"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 144
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 43
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 47
    iput v2, p0, Lcom/android/internal/telephony/AdnRecord;->iap:I

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr2:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr3:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    .line 52
    iput v2, p0, Lcom/android/internal/telephony/AdnRecord;->indexInIap:I

    .line 53
    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->mEfSize:I

    .line 145
    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 146
    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 147
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 148
    iput-object p2, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 150
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 151
    iput p3, p0, Lcom/android/internal/telephony/AdnRecord;->iap:I

    .line 152
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr2:Ljava/lang/String;

    .line 153
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr3:Ljava/lang/String;

    .line 154
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "alphaTag"
    .parameter "number"
    .parameter "anr"

    .prologue
    const/4 v1, 0x0

    .line 158
    const/4 v5, 0x0

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v1, 0x0

    .line 128
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anr"

    .prologue
    const/4 v1, 0x0

    .line 162
    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anr"
    .parameter "anr2"

    .prologue
    const/4 v1, 0x0

    .line 166
    const-string v8, ""

    const-string v9, ""

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anr"
    .parameter "anr2"
    .parameter "anr3"

    .prologue
    .line 170
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v9, ""

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anr"
    .parameter "anr2"
    .parameter "anr3"
    .parameter "sne"

    .prologue
    .line 173
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "record"

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .line 115
    return-void
.end method

.method private parseRecord([B)V
    .locals 6
    .parameter "record"

    .prologue
    const/4 v5, 0x0

    .line 753
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0xe

    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 756
    array-length v3, p1

    add-int/lit8 v1, v3, -0xe

    .line 758
    .local v1, footerOffset:I
    aget-byte v3, p1, v1

    and-int/lit16 v2, v3, 0xff

    .line 760
    .local v2, numberLength:I
    const/16 v3, 0xb

    if-le v2, v3, :cond_0

    .line 762
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 798
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :goto_0
    return-void

    .line 773
    .restart local v1       #footerOffset:I
    .restart local v2       #numberLength:I
    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-static {p1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 777
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 779
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 781
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 782
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->anr2:Ljava/lang/String;

    .line 783
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->anr3:Ljava/lang/String;

    .line 784
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 787
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :catch_0
    move-exception v0

    .line 788
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v3, "GSM"

    const-string v4, "Error parsing AdnRecord"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 789
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 790
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 791
    iput-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 793
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 794
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->anr2:Ljava/lang/String;

    .line 795
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->anr3:Ljava/lang/String;

    .line 796
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    goto :goto_0
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 583
    if-ne p0, p1, :cond_0

    .line 584
    const/4 v0, 0x1

    .line 592
    :goto_0
    return v0

    .line 586
    :cond_0
    if-nez p0, :cond_1

    .line 587
    const-string p0, ""

    .line 589
    :cond_1
    if-nez p1, :cond_2

    .line 590
    const-string p1, ""

    .line 592
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public appendExtRecord([B)V
    .locals 4
    .parameter "extRecord"

    .prologue
    const/4 v3, 0x2

    .line 721
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    .line 730
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 740
    :catch_0
    move-exception v0

    .line 741
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "GSM"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public buildAdnString(II)[B
    .locals 10
    .parameter "recordSize"
    .parameter "extRecId"

    .prologue
    .line 628
    const/4 v0, 0x0

    .line 629
    .local v0, adnString:[B
    add-int/lit8 v4, p1, -0xe

    .line 630
    .local v4, footerOffset:I
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MY alphaTag is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", recordSize"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 634
    const-string v7, "GSM"

    const-string v8, "[buildAdnString] Empty alpha tag or number"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    new-array v0, p1, [B

    .line 636
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, p1, :cond_8

    .line 637
    const/4 v7, -0x1

    aput-byte v7, v0, v5

    .line 636
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 641
    .end local v5           #i:I
    :cond_0
    new-array v0, p1, [B

    .line 642
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_1
    if-ge v5, p1, :cond_1

    .line 643
    const/4 v7, -0x1

    aput-byte v7, v0, v5

    .line 642
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 646
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 648
    .local v1, bcdNumber:[B
    if-eqz v1, :cond_2

    .line 649
    const-string v7, "GSM"

    const-string v8, "bcdNumber!=null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    array-length v7, v1

    const/16 v8, 0xb

    if-gt v7, v8, :cond_4

    .line 652
    const/4 v7, 0x0

    add-int/lit8 v8, v4, 0x1

    array-length v9, v1

    invoke-static {v1, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 655
    add-int/lit8 v7, v4, 0x0

    array-length v8, v1

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 657
    add-int/lit8 v7, v4, 0xc

    const/4 v8, -0x1

    aput-byte v8, v0, v7

    .line 659
    add-int/lit8 v7, v4, 0xd

    const/4 v8, -0x1

    aput-byte v8, v0, v7

    .line 662
    const-string v7, "GSM"

    const-string v8, "MY number is 20"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v2

    .line 680
    .local v2, byteTag:[B
    const/4 v6, 0x0

    .line 681
    .local v6, spaceCount:I
    const/4 v5, 0x0

    :goto_3
    array-length v7, v2

    if-ge v5, v7, :cond_5

    aget-byte v7, v2, v5

    const/16 v8, 0x20

    if-ne v7, v8, :cond_3

    add-int/lit8 v6, v6, 0x1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 665
    .end local v2           #byteTag:[B
    .end local v6           #spaceCount:I
    :cond_4
    const/4 v7, 0x0

    add-int/lit8 v8, v4, 0x1

    const/16 v9, 0xb

    invoke-static {v1, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 667
    add-int/lit8 v7, v4, 0x0

    const/16 v8, 0xb

    aput-byte v8, v0, v7

    .line 669
    add-int/lit8 v7, v4, 0xc

    const/4 v8, -0x1

    aput-byte v8, v0, v7

    .line 671
    add-int/lit8 v7, v4, 0xd

    int-to-byte v8, p2

    aput-byte v8, v0, v7

    .line 673
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 674
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MY number > 20 extRecId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 682
    .restart local v2       #byteTag:[B
    .restart local v6       #spaceCount:I
    :cond_5
    const/4 v5, 0x0

    :goto_4
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_7

    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_6

    add-int/lit8 v6, v6, -0x1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 683
    :cond_7
    if-eqz v6, :cond_a

    .line 687
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    const-string/jumbo v8, "utf-16be"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 691
    :goto_5
    const/4 v7, 0x0

    const/16 v8, -0x80

    aput-byte v8, v0, v7

    .line 692
    array-length v7, v2

    if-ge v7, v4, :cond_9

    .line 694
    const/4 v7, 0x0

    const/4 v8, 0x1

    array-length v9, v2

    invoke-static {v2, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 713
    .end local v1           #bcdNumber:[B
    .end local v2           #byteTag:[B
    .end local v6           #spaceCount:I
    :cond_8
    :goto_6
    return-object v0

    .line 688
    .restart local v1       #bcdNumber:[B
    .restart local v2       #byteTag:[B
    .restart local v6       #spaceCount:I
    :catch_0
    move-exception v3

    .line 689
    .local v3, ex:Ljava/io/UnsupportedEncodingException;
    const-string v7, "AdnRecord"

    const-string v8, "alphaTag convert byte exception"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 698
    .end local v3           #ex:Ljava/io/UnsupportedEncodingException;
    :cond_9
    const/4 v7, 0x0

    const/4 v8, 0x1

    add-int/lit8 v9, v4, -0x1

    invoke-static {v2, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    .line 701
    :cond_a
    array-length v7, v2

    if-le v7, v4, :cond_b

    .line 703
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v7, v0, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    .line 707
    :cond_b
    const/4 v7, 0x0

    const/4 v8, 0x0

    array-length v9, v2

    invoke-static {v2, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6
.end method

.method public buildAnrString(IIIII)[B
    .locals 10
    .parameter "recordSize"
    .parameter "recordNumber"
    .parameter "pbrIndex"
    .parameter "sfi"
    .parameter "anrIndex"

    .prologue
    const/16 v9, 0xb

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 495
    const/4 v3, 0x0

    .line 496
    .local v3, newAnr:[B
    const/4 v1, 0x0

    .line 497
    .local v1, bcdAnr:[B
    const-string v0, ""

    .line 498
    .local v0, anr:Ljava/lang/String;
    if-ne p5, v7, :cond_1

    .line 499
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr2:Ljava/lang/String;

    .line 505
    :goto_0
    if-eqz v0, :cond_0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 506
    :cond_0
    new-array v3, p1, [B

    .line 508
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, p1, :cond_5

    .line 509
    aput-byte v6, v3, v2

    .line 508
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 500
    .end local v2           #j:I
    :cond_1
    if-ne p5, v8, :cond_2

    .line 501
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr3:Ljava/lang/String;

    goto :goto_0

    .line 503
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    goto :goto_0

    .line 512
    :cond_3
    new-array v3, p1, [B

    .line 514
    const/4 v2, 0x0

    .restart local v2       #j:I
    :goto_2
    if-ge v2, p1, :cond_4

    .line 515
    aput-byte v6, v3, v2

    .line 514
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 518
    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 521
    array-length v4, v1

    if-gt v4, v9, :cond_6

    .line 522
    array-length v4, v1

    invoke-static {v1, v5, v3, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 523
    aput-byte v5, v3, v5

    .line 524
    array-length v4, v1

    int-to-byte v4, v4

    aput-byte v4, v3, v7

    .line 532
    :goto_3
    const/16 v4, 0xe

    aput-byte v6, v3, v4

    .line 535
    const/16 v4, 0xf

    if-le p1, v4, :cond_5

    .line 536
    const/16 v4, 0xf

    int-to-byte v5, p4

    aput-byte v5, v3, v4

    .line 538
    const/16 v4, 0x10

    int-to-byte v5, p2

    aput-byte v5, v3, v4

    .line 544
    :cond_5
    return-object v3

    .line 527
    :cond_6
    invoke-static {v1, v5, v3, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 528
    aput-byte v5, v3, v5

    .line 529
    aput-byte v9, v3, v7

    goto :goto_3
.end method

.method public buildEXT1String(I)[B
    .locals 11
    .parameter "recordSize"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 549
    const/4 v2, 0x0

    .line 550
    .local v2, ext1AdnString:[B
    const/4 v1, 0x0

    .line 552
    .local v1, bcdLen:I
    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 553
    :cond_0
    new-array v2, p1, [B

    .line 554
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p1, :cond_4

    .line 555
    aput-byte v8, v2, v4

    .line 554
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 559
    .end local v4           #i:I
    :cond_1
    new-array v2, p1, [B

    .line 560
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_1
    if-ge v4, p1, :cond_2

    .line 561
    aput-byte v8, v2, v4

    .line 560
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 563
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    const/16 v6, 0x14

    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, EXT1Number:Ljava/lang/String;
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MY ext1BcdNumber EXTNumber="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v3

    .line 567
    .local v3, ext1BcdNumber:[B
    const/4 v4, 0x0

    :goto_2
    array-length v5, v3

    if-ge v4, v5, :cond_3

    .line 568
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MY ext1BcdNumber["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, v3, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 569
    :cond_3
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v9, v2, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 570
    const/4 v5, 0x0

    aput-byte v10, v2, v5

    .line 572
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    aput-byte v5, v2, v9

    .line 574
    const/16 v5, 0xc

    aput-byte v8, v2, v5

    .line 577
    .end local v0           #EXT1Number:Ljava/lang/String;
    .end local v3           #ext1BcdNumber:[B
    :cond_4
    return-object v2
.end method

.method public buildEmailString(IIII)[B
    .locals 7
    .parameter "recordSize"
    .parameter "recordNumber"
    .parameter "pbrIndex"
    .parameter "sfi"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 399
    const-string v3, "GSM"

    const-string v4, "buildEmailString"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/4 v2, 0x0

    .line 401
    .local v2, newEmail:[B
    const/4 v0, 0x0

    .line 403
    .local v0, bcdEmail:[B
    iget v3, p0, Lcom/android/internal/telephony/AdnRecord;->mEfSize:I

    mul-int/2addr v3, p3

    sub-int/2addr p2, v3

    .line 404
    iput v5, p0, Lcom/android/internal/telephony/AdnRecord;->mEfSize:I

    .line 406
    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v3, v3, v5

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v3, v3, v5

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 407
    :cond_0
    new-array v2, p1, [B

    .line 408
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-ge v1, p1, :cond_3

    .line 409
    aput-byte v6, v2, v1

    .line 408
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 412
    .end local v1           #j:I
    :cond_1
    new-array v2, p1, [B

    .line 413
    const/4 v1, 0x0

    .restart local v1       #j:I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 414
    aput-byte v6, v2, v1

    .line 413
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 416
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 418
    array-length v3, v0

    add-int/lit8 v4, p1, -0x2

    if-ge v3, v4, :cond_4

    .line 419
    array-length v3, v0

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    :goto_2
    add-int/lit8 v3, p1, -0x2

    int-to-byte v4, p4

    aput-byte v4, v2, v3

    .line 423
    add-int/lit8 v3, p1, -0x1

    int-to-byte v4, p2

    aput-byte v4, v2, v3

    .line 425
    :cond_3
    return-object v2

    .line 421
    :cond_4
    add-int/lit8 v3, p1, -0x2

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method public buildIapString(II)[B
    .locals 5
    .parameter "recordNumber"
    .parameter "pbrIndex"

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 473
    const/4 v0, 0x0

    .line 475
    .local v0, Iap:[B
    iget v1, p0, Lcom/android/internal/telephony/AdnRecord;->iap:I

    if-ne v1, v2, :cond_0

    .line 476
    new-array v0, v4, [B

    .line 478
    aput-byte v2, v0, v3

    .line 487
    :goto_0
    return-object v0

    .line 480
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/AdnRecord;->iap:I

    iget v2, p0, Lcom/android/internal/telephony/AdnRecord;->mEfSize:I

    mul-int/2addr v2, p2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->iap:I

    .line 481
    iput v3, p0, Lcom/android/internal/telephony/AdnRecord;->mEfSize:I

    .line 482
    new-array v0, v4, [B

    .line 485
    iget v1, p0, Lcom/android/internal/telephony/AdnRecord;->iap:I

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    goto :goto_0
.end method

.method public buildSneString(I)[B
    .locals 12
    .parameter "recordSize"

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 429
    const/4 v4, 0x0

    .line 430
    .local v4, newSne:[B
    const/4 v0, 0x0

    .line 432
    .local v0, bcdSne:[B
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 433
    new-array v4, p1, [B

    .line 434
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    if-ge v3, p1, :cond_0

    .line 435
    aput-byte v8, v4, v3

    .line 434
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object v5, v4

    .line 470
    .end local v4           #newSne:[B
    .local v5, newSne:[B
    :goto_1
    return-object v5

    .line 440
    .end local v3           #j:I
    .end local v5           #newSne:[B
    .restart local v4       #newSne:[B
    :cond_1
    new-array v4, p1, [B

    .line 441
    const/4 v3, 0x0

    .restart local v3       #j:I
    :goto_2
    if-ge v3, p1, :cond_2

    .line 442
    aput-byte v8, v4, v3

    .line 441
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 444
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 446
    const/4 v6, 0x0

    .line 447
    .local v6, spaceCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    array-length v7, v0

    if-ge v2, v7, :cond_4

    aget-byte v7, v0, v2

    if-ne v7, v11, :cond_3

    add-int/lit8 v6, v6, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 448
    :cond_4
    const/4 v2, 0x0

    :goto_4
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_6

    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_5

    add-int/lit8 v6, v6, -0x1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 449
    :cond_6
    if-eqz v6, :cond_8

    .line 452
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    const-string/jumbo v8, "utf-16be"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 456
    :goto_5
    const/16 v7, -0x80

    aput-byte v7, v4, v9

    .line 457
    array-length v7, v0

    if-ge v7, p1, :cond_7

    .line 458
    array-length v7, v0

    invoke-static {v0, v9, v4, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_6
    move-object v5, v4

    .line 470
    .end local v4           #newSne:[B
    .restart local v5       #newSne:[B
    goto :goto_1

    .line 453
    .end local v5           #newSne:[B
    .restart local v4       #newSne:[B
    :catch_0
    move-exception v1

    .line 454
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    const-string v7, "AdnRecord"

    const-string v8, "alphaTag convert byte exception"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 460
    .end local v1           #ex:Ljava/io/UnsupportedEncodingException;
    :cond_7
    add-int/lit8 v7, p1, -0x1

    invoke-static {v0, v9, v4, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    .line 463
    :cond_8
    array-length v7, v0

    if-le v7, p1, :cond_9

    .line 464
    add-int/lit8 v7, p1, -0x1

    invoke-static {v0, v9, v4, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    .line 466
    :cond_9
    array-length v7, v0

    invoke-static {v0, v9, v4, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 603
    const/4 v0, 0x0

    return v0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getAnr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    return-object v0
.end method

.method public getAnr2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr2:Ljava/lang/String;

    return-object v0
.end method

.method public getAnr3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr3:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    return-object v0
.end method

.method public getExtNumber()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    return v0
.end method

.method public getIndexIap()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->indexInIap:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getSne()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    return-object v0
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    .line 238
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqual(Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFDNEqual(Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGsmEqual(Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsimEqual(Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 11
    .parameter "adn"

    .prologue
    const/4 v7, 0x0

    .line 296
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAnr2()Ljava/lang/String;

    move-result-object v4

    .line 297
    .local v4, nowAnr2:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAnr3()Ljava/lang/String;

    move-result-object v5

    .line 298
    .local v5, nowAnr3:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getSne()Ljava/lang/String;

    move-result-object v6

    .line 300
    .local v6, nowSne:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 301
    const-string v4, ""

    .line 303
    :cond_0
    if-nez v5, :cond_1

    .line 304
    const-string v5, ""

    .line 306
    :cond_1
    if-nez v6, :cond_2

    .line 307
    const-string v6, ""

    .line 310
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->anr2:Ljava/lang/String;

    if-nez v8, :cond_3

    .line 311
    const-string v8, ""

    iput-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->anr2:Ljava/lang/String;

    .line 313
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->anr3:Ljava/lang/String;

    if-nez v8, :cond_4

    .line 314
    const-string v8, ""

    iput-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->anr3:Ljava/lang/String;

    .line 316
    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    if-nez v8, :cond_5

    .line 317
    const-string v8, ""

    iput-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    .line 319
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    if-nez v8, :cond_9

    .line 320
    const-string v0, ""

    .line 332
    .local v0, email1:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_c

    .line 333
    const-string v1, ""

    .line 347
    .local v1, email2:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 348
    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 349
    const-string v0, ""

    .line 367
    :cond_6
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 368
    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 369
    const-string v1, ""

    .line 388
    :cond_7
    :goto_3
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->anr2:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->anr3:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v7, 0x1

    :cond_8
    return v7

    .line 322
    .end local v0           #email1:Ljava/lang/String;
    .end local v1           #email2:Ljava/lang/String;
    :cond_9
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v8, v8, v7

    if-nez v8, :cond_a

    .line 323
    const-string v0, ""

    .restart local v0       #email1:Ljava/lang/String;
    goto :goto_0

    .line 325
    .end local v0           #email1:Ljava/lang/String;
    :cond_a
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_b

    .line 326
    const-string v0, ""

    .restart local v0       #email1:Ljava/lang/String;
    goto/16 :goto_0

    .line 328
    .end local v0           #email1:Ljava/lang/String;
    :cond_b
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v0, v8, v7

    .restart local v0       #email1:Ljava/lang/String;
    goto/16 :goto_0

    .line 335
    :cond_c
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v7

    if-nez v8, :cond_d

    .line 336
    const-string v1, ""

    .restart local v1       #email2:Ljava/lang/String;
    goto/16 :goto_1

    .line 338
    .end local v1           #email2:Ljava/lang/String;
    :cond_d
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_e

    .line 339
    const-string v1, ""

    .restart local v1       #email2:Ljava/lang/String;
    goto/16 :goto_1

    .line 341
    .end local v1           #email2:Ljava/lang/String;
    :cond_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v8

    aget-object v1, v8, v7

    .restart local v1       #email2:Ljava/lang/String;
    goto/16 :goto_1

    .line 353
    :cond_f
    :try_start_0
    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, emailAddressArray:[Ljava/lang/String;
    if-nez v2, :cond_10

    .line 356
    const-string v0, ""

    goto/16 :goto_2

    .line 358
    :cond_10
    const/4 v8, 0x0

    aget-object v0, v2, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 361
    .end local v2           #emailAddressArray:[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 362
    .local v3, ex:Ljava/lang/Exception;
    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "emailAddressArray is Exception email1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const-string v0, ""

    goto/16 :goto_2

    .line 373
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_11
    :try_start_1
    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 375
    .restart local v2       #emailAddressArray:[Ljava/lang/String;
    if-nez v2, :cond_12

    .line 376
    const-string v1, ""

    goto/16 :goto_3

    .line 378
    :cond_12
    const/4 v8, 0x0

    aget-object v1, v2, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 381
    .end local v2           #emailAddressArray:[Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 382
    .restart local v3       #ex:Ljava/lang/Exception;
    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "emailAddressArray is Exception email2"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v1, ""

    goto/16 :goto_3
.end method

.method public setAnr(Ljava/lang/String;)V
    .locals 0
    .parameter "anr"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setAnr2(Ljava/lang/String;)V
    .locals 0
    .parameter "anr"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->anr2:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setAnr3(Ljava/lang/String;)V
    .locals 0
    .parameter "anr"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->anr3:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public setEfSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 272
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->mEfSize:I

    .line 273
    return-void
.end method

.method public setEmails([Ljava/lang/String;)V
    .locals 3
    .parameter "emails"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 216
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 217
    if-eqz p1, :cond_0

    .line 219
    aget-object v0, p1, v1

    if-eqz v0, :cond_1

    .line 221
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iput-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iput-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    goto :goto_0
.end method

.method public setIndexIap(I)V
    .locals 0
    .parameter "indexInIap"

    .prologue
    .line 269
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->indexInIap:I

    .line 270
    return-void
.end method

.method public setSne(Ljava/lang/String;)V
    .locals 0
    .parameter "sne"

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADN Record \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 607
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 608
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 609
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 614
    return-void
.end method
