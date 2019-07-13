.class Lcom/whytouch/android/WorkThreadFunction$1;
.super Landroid/os/Handler;
.source "WorkThreadFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/whytouch/android/WorkThreadFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/whytouch/android/WorkThreadFunction;


# direct methods
.method constructor <init>(Lcom/whytouch/android/WorkThreadFunction;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/whytouch/android/WorkThreadFunction$1;->this$0:Lcom/whytouch/android/WorkThreadFunction;

    .line 19
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const-string v4, "func"

    const-string v5, "param"

    .line 21
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "state"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 23
    .local v1, state:I
    packed-switch v1, :pswitch_data_0

    .line 49
    :goto_0
    :pswitch_0
    return-void

    .line 25
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "func"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "param"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/whytouch/android/ExtensionContext;->CallFlash(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :pswitch_2
    const-string v2, "WTPlayer"

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "param"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/whytouch/android/WorkThreadFunction;->popUp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :pswitch_3
    :try_start_0
    iget-object v2, p0, Lcom/whytouch/android/WorkThreadFunction$1;->this$0:Lcom/whytouch/android/WorkThreadFunction;

    iget-object v2, v2, Lcom/whytouch/android/WorkThreadFunction;->clsstr:Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "func"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 39
    .local v0, method:Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/whytouch/android/WorkThreadFunction$1;->this$0:Lcom/whytouch/android/WorkThreadFunction;

    iget-object v2, v2, Lcom/whytouch/android/WorkThreadFunction;->caller:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "param"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    .end local v0           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 23
    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
