.class Lcom/adobe/air/FileInfo;
.super Ljava/lang/Object;
.source "ApplicationFileManager.java"


# instance fields
.field public mFileSize:J

.field public mIsDirectory:Z

.field public mIsFile:Z


# direct methods
.method constructor <init>(JZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-wide p1, p0, Lcom/adobe/air/FileInfo;->mFileSize:J

    .line 49
    iput-boolean p3, p0, Lcom/adobe/air/FileInfo;->mIsFile:Z

    .line 50
    iput-boolean p4, p0, Lcom/adobe/air/FileInfo;->mIsDirectory:Z

    .line 51
    return-void
.end method
