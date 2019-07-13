.class public Lcom/whytouch/android/Extension;
.super Ljava/lang/Object;
.source "Extension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    :try_start_0
    const-string v1, "wtjni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :goto_0
    return-void

    .line 12
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 13
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native SetAppRoot(Ljava/lang/String;)V
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 19
    new-instance v0, Lcom/whytouch/android/ExtensionContext;

    invoke-direct {v0}, Lcom/whytouch/android/ExtensionContext;-><init>()V

    return-object v0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method
