.class public Lcom/whytouch/android/WorkThreadFunction;
.super Ljava/lang/Thread;
.source "WorkThreadFunction.java"


# static fields
.field private static final STATE_CALL:I = 0x1001

.field private static final STATE_CALLJAVA:I = 0x1004

.field private static final STATE_EXIT:I = 0x1003

.field private static final STATE_NONE:I = 0x1002

.field public static _activity:Landroid/app/Activity;


# instance fields
.field public caller:Ljava/lang/Object;

.field public clsstr:Ljava/lang/Class;

.field private func:Ljava/lang/String;

.field public final handler:Landroid/os/Handler;

.field private param:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "func1"
    .parameter "param1"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 19
    new-instance v0, Lcom/whytouch/android/WorkThreadFunction$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/whytouch/android/WorkThreadFunction$1;-><init>(Lcom/whytouch/android/WorkThreadFunction;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/whytouch/android/WorkThreadFunction;->handler:Landroid/os/Handler;

    .line 88
    iput-object p1, p0, Lcom/whytouch/android/WorkThreadFunction;->func:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/whytouch/android/WorkThreadFunction;->param:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2
    .parameter "func1"
    .parameter "param1"
    .parameter "cls"
    .parameter "obj"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 19
    new-instance v0, Lcom/whytouch/android/WorkThreadFunction$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/whytouch/android/WorkThreadFunction$1;-><init>(Lcom/whytouch/android/WorkThreadFunction;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/whytouch/android/WorkThreadFunction;->handler:Landroid/os/Handler;

    .line 93
    iput-object p1, p0, Lcom/whytouch/android/WorkThreadFunction;->func:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/whytouch/android/WorkThreadFunction;->param:Ljava/lang/String;

    .line 95
    iput-object p3, p0, Lcom/whytouch/android/WorkThreadFunction;->clsstr:Ljava/lang/Class;

    .line 96
    iput-object p4, p0, Lcom/whytouch/android/WorkThreadFunction;->caller:Ljava/lang/Object;

    .line 97
    return-void
.end method

.method private native CallFunc(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static popUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 54
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/whytouch/android/WorkThreadFunction;->_activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 56
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 57
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 58
    const-string v3, "Ok"

    new-instance v4, Lcom/whytouch/android/WorkThreadFunction$2;

    invoke-direct {v4}, Lcom/whytouch/android/WorkThreadFunction$2;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 65
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 66
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 68
    return-void
.end method


# virtual methods
.method public SetMsg(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "func1"
    .parameter "param1"

    .prologue
    .line 77
    iget-object v2, p0, Lcom/whytouch/android/WorkThreadFunction;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 78
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "state"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    const-string v2, "func"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v2, "param"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 85
    iget-object v2, p0, Lcom/whytouch/android/WorkThreadFunction;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 86
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/whytouch/android/WorkThreadFunction;->func:Ljava/lang/String;

    iget-object v1, p0, Lcom/whytouch/android/WorkThreadFunction;->param:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/whytouch/android/WorkThreadFunction;->CallFunc(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "run thread "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/whytouch/android/WorkThreadFunction;->func:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/whytouch/android/WorkThreadFunction;->param:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/whytouch/android/WTDebuglog;->log(Ljava/lang/String;)V

    .line 103
    return-void
.end method
