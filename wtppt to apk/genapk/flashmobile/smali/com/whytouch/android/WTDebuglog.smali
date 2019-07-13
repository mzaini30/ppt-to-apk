.class public final Lcom/whytouch/android/WTDebuglog;
.super Ljava/lang/Object;
.source "WTDebuglog.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    :try_start_0
    const-string v1, "wtjni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 26
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native DebugLog(Ljava/lang/String;)V
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 32
    const-string v0, "wtplayer"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v6, 0x0

    .line 38
    move-object v1, p1

    .line 39
    .local v1, context:Lcom/adobe/fre/FREContext;
    const/4 v3, 0x0

    .line 42
    .local v3, result:Lcom/adobe/fre/FREObject;
    const/4 v4, 0x0

    :try_start_0
    aget-object v0, p2, v4

    .line 43
    .local v0, arr:Lcom/adobe/fre/FREObject;
    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, param:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "jni:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/whytouch/android/WTDebuglog;->DebugLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v6

    .line 53
    .end local v0           #arr:Lcom/adobe/fre/FREObject;
    .end local v2           #param:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 48
    :catch_0
    move-exception v4

    move-object v4, v6

    .line 53
    goto :goto_0
.end method
