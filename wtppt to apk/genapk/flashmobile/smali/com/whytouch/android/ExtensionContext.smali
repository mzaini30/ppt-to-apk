.class public Lcom/whytouch/android/ExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "ExtensionContext.java"


# static fields
.field private static cur_instance:Lcom/whytouch/android/ExtensionContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/whytouch/android/ExtensionContext;->cur_instance:Lcom/whytouch/android/ExtensionContext;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method

.method public static CallFlash(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "func"
    .parameter "param"

    .prologue
    const/16 v2, 0x14

    const-string v4, "[call flash]"

    const-string v3, " "

    .line 49
    sget-object v0, Lcom/whytouch/android/ExtensionContext;->cur_instance:Lcom/whytouch/android/ExtensionContext;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[call flash]"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/whytouch/android/WTDebuglog;->log(Ljava/lang/String;)V

    .line 55
    :goto_0
    sget-object v0, Lcom/whytouch/android/ExtensionContext;->cur_instance:Lcom/whytouch/android/ExtensionContext;

    invoke-virtual {v0, p0, p1}, Lcom/whytouch/android/ExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[call flash]"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/whytouch/android/WTDebuglog;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    sput-object p0, Lcom/whytouch/android/ExtensionContext;->cur_instance:Lcom/whytouch/android/ExtensionContext;

    .line 31
    const-string v3, "[ get functons ]"

    invoke-static {v3}, Lcom/whytouch/android/WTDebuglog;->log(Ljava/lang/String;)V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    .local v0, functionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    new-instance v2, Lcom/whytouch/android/SupportedFunction;

    invoke-direct {v2}, Lcom/whytouch/android/SupportedFunction;-><init>()V

    .line 35
    .local v2, spfunc:Lcom/whytouch/android/SupportedFunction;
    invoke-virtual {p0}, Lcom/whytouch/android/ExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/whytouch/android/SupportedFunction;->Init(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, ret:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/whytouch/android/ExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sput-object v3, Lcom/whytouch/android/WorkThreadFunction;->_activity:Landroid/app/Activity;

    .line 38
    const-string v3, "WTNCall"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v3, "WTCall"

    new-instance v4, Lcom/whytouch/android/WTJavaFunction;

    invoke-virtual {p0}, Lcom/whytouch/android/ExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/whytouch/android/WTJavaFunction;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v3, "Debuglog"

    new-instance v4, Lcom/whytouch/android/WTDebuglog;

    invoke-direct {v4}, Lcom/whytouch/android/WTDebuglog;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 43
    const-string v3, "AdCall"

    new-instance v4, Lcom/whytouch/android/AdmobAdFunction;

    invoke-virtual {p0}, Lcom/whytouch/android/ExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/whytouch/android/AdmobAdFunction;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_0
    const-string v3, "1-4"

    invoke-static {v3}, Lcom/whytouch/android/WTDebuglog;->log(Ljava/lang/String;)V

    .line 46
    return-object v0
.end method
