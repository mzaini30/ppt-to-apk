.class Lcom/whytouch/android/Util$1;
.super Ljava/lang/Thread;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/whytouch/android/Util;->Record()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 146
    #calls: Lcom/whytouch/android/Util;->RecordData()V
    invoke-static {}, Lcom/whytouch/android/Util;->access$0()V

    .line 147
    return-void
.end method
