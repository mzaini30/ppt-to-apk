.class Lcom/whytouch/android/ShowMessage$AlixOnCancelListener;
.super Ljava/lang/Object;
.source "ShowMessage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/whytouch/android/ShowMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlixOnCancelListener"
.end annotation


# instance fields
.field mcontext:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/whytouch/android/ShowMessage$AlixOnCancelListener;->mcontext:Landroid/app/Activity;

    .line 100
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/whytouch/android/ShowMessage$AlixOnCancelListener;->mcontext:Landroid/app/Activity;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 104
    return-void
.end method
