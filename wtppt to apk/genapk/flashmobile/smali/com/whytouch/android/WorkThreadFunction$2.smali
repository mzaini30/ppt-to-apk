.class Lcom/whytouch/android/WorkThreadFunction$2;
.super Ljava/lang/Object;
.source "WorkThreadFunction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/whytouch/android/WorkThreadFunction;->popUp(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 60
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 61
    const-string v0, ""

    invoke-static {v0}, Lcom/whytouch/android/WTJavaFunction;->QuitApp(Ljava/lang/Object;)V

    .line 62
    return-void
.end method
