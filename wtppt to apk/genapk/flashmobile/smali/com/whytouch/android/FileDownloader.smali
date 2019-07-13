.class public Lcom/whytouch/android/FileDownloader;
.super Ljava/lang/Thread;
.source "FileDownloader.java"


# instance fields
.field _dirName:Ljava/lang/String;

.field _handler:Landroid/os/Handler;

.field _urlStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .parameter "urlStr"
    .parameter "dirName"
    .parameter "handler"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/whytouch/android/FileDownloader;->_urlStr:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/whytouch/android/FileDownloader;->_dirName:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/whytouch/android/FileDownloader;->_handler:Landroid/os/Handler;

    .line 25
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const-string v12, "state"

    .line 30
    :try_start_0
    new-instance v9, Ljava/net/URL;

    iget-object v10, p0, Lcom/whytouch/android/FileDownloader;->_urlStr:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 31
    .local v9, url:Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 32
    .local v2, con:Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v3

    .line 33
    .local v3, contentLength:I
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 34
    .local v5, is:Ljava/io/InputStream;
    const/16 v10, 0x400

    new-array v1, v10, [B

    .line 37
    .local v1, bs:[B
    new-instance v8, Ljava/io/FileOutputStream;

    iget-object v10, p0, Lcom/whytouch/android/FileDownloader;->_dirName:Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 38
    .local v8, os:Ljava/io/OutputStream;
    :goto_0
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, len:I
    const/4 v10, -0x1

    if-ne v6, v10, :cond_0

    .line 41
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 42
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 44
    iget-object v10, p0, Lcom/whytouch/android/FileDownloader;->_handler:Landroid/os/Handler;

    invoke-virtual {v10}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 45
    .local v7, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v0, b:Landroid/os/Bundle;
    const-string v10, "state"

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    invoke-virtual {v7, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 49
    iget-object v10, p0, Lcom/whytouch/android/FileDownloader;->_handler:Landroid/os/Handler;

    invoke-virtual {v10, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 60
    .end local v1           #bs:[B
    .end local v2           #con:Ljava/net/URLConnection;
    .end local v3           #contentLength:I
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #len:I
    .end local v8           #os:Ljava/io/OutputStream;
    .end local v9           #url:Ljava/net/URL;
    :goto_1
    return-void

    .line 39
    .end local v0           #b:Landroid/os/Bundle;
    .end local v7           #msg:Landroid/os/Message;
    .restart local v1       #bs:[B
    .restart local v2       #con:Ljava/net/URLConnection;
    .restart local v3       #contentLength:I
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #len:I
    .restart local v8       #os:Ljava/io/OutputStream;
    .restart local v9       #url:Ljava/net/URL;
    :cond_0
    const/4 v10, 0x0

    invoke-virtual {v8, v1, v10, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    .end local v1           #bs:[B
    .end local v2           #con:Ljava/net/URLConnection;
    .end local v3           #contentLength:I
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #len:I
    .end local v8           #os:Ljava/io/OutputStream;
    .end local v9           #url:Ljava/net/URL;
    :catch_0
    move-exception v10

    move-object v4, v10

    .line 52
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    iget-object v10, p0, Lcom/whytouch/android/FileDownloader;->_handler:Landroid/os/Handler;

    invoke-virtual {v10}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 54
    .restart local v7       #msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v10, "state"

    const/4 v10, 0x3

    invoke-virtual {v0, v12, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    invoke-virtual {v7, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 58
    iget-object v10, p0, Lcom/whytouch/android/FileDownloader;->_handler:Landroid/os/Handler;

    invoke-virtual {v10, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
