.class Lcom/mzaini30/tugasrenelagi/AppEntry$1;
.super Ljava/lang/Object;
.source "AppEntry.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mzaini30/tugasrenelagi/AppEntry;->showDialog(ILjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mzaini30/tugasrenelagi/AppEntry;


# direct methods
.method constructor <init>(Lcom/mzaini30/tugasrenelagi/AppEntry;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/mzaini30/tugasrenelagi/AppEntry$1;->this$0:Lcom/mzaini30/tugasrenelagi/AppEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/mzaini30/tugasrenelagi/AppEntry$1;->this$0:Lcom/mzaini30/tugasrenelagi/AppEntry;

    #calls: Lcom/mzaini30/tugasrenelagi/AppEntry;->launchMarketPlaceForAIR()V
    invoke-static {v0}, Lcom/mzaini30/tugasrenelagi/AppEntry;->access$000(Lcom/mzaini30/tugasrenelagi/AppEntry;)V

    .line 163
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 164
    return-void
.end method
