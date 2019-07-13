.class public Lcom/whytouch/android/SupportedFunction;
.super Ljava/lang/Object;
.source "SupportedFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field private static context:Lcom/adobe/fre/FREContext;


# instance fields
.field public _act:Landroid/app/Activity;

.field private datadir:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native CallFunc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native SetEnviromentVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
.end method

.method private copyAsset(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 7
    .parameter "act"
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 122
    .local v2, myInput:Ljava/io/InputStream;
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/whytouch/android/SupportedFunction;->datadir:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, outFileName:Ljava/lang/String;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 125
    .local v3, myOutput:Ljava/io/OutputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 127
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, length:I
    if-gtz v1, :cond_0

    .line 130
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 131
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 132
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 135
    .end local v0           #buffer:[B
    .end local v1           #length:I
    .end local v2           #myInput:Ljava/io/InputStream;
    .end local v3           #myOutput:Ljava/io/OutputStream;
    .end local v4           #outFileName:Ljava/lang/String;
    :goto_1
    return-void

    .line 128
    .restart local v0       #buffer:[B
    .restart local v1       #length:I
    .restart local v2       #myInput:Ljava/io/InputStream;
    .restart local v3       #myOutput:Ljava/io/OutputStream;
    .restart local v4       #outFileName:Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    .end local v0           #buffer:[B
    .end local v1           #length:I
    .end local v2           #myInput:Ljava/io/InputStream;
    .end local v3           #myOutput:Ljava/io/OutputStream;
    .end local v4           #outFileName:Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private deleteAllFiles(Ljava/io/File;)V
    .locals 5
    .parameter "root"

    .prologue
    .line 58
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 59
    .local v1, files:[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 60
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_1

    .line 77
    :cond_0
    return-void

    .line 60
    :cond_1
    aget-object v0, v1, v3

    .line 61
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 62
    invoke-direct {p0, v0}, Lcom/whytouch/android/SupportedFunction;->deleteAllFiles(Ljava/io/File;)V

    .line 64
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 69
    invoke-direct {p0, v0}, Lcom/whytouch/android/SupportedFunction;->deleteAllFiles(Ljava/io/File;)V

    .line 71
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 72
    :catch_0
    move-exception v4

    goto :goto_1

    .line 65
    :catch_1
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public Init(Landroid/app/Activity;)Ljava/lang/String;
    .locals 11
    .parameter "act"

    .prologue
    const-string v0, "default.wtppt"

    const-string v0, "data/"

    const-string v0, "/"

    .line 79
    iput-object p1, p0, Lcom/whytouch/android/SupportedFunction;->_act:Landroid/app/Activity;

    .line 80
    const-string v9, "a14fdb3c5d71d02"

    .line 82
    .local v9, ret:Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/whytouch/android/Util;->Init(Landroid/content/Context;)Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/whytouch/android/SupportedFunction;->_act:Landroid/app/Activity;

    invoke-static {v0}, Lcom/whytouch/android/Util;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, appname:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, extpath:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/whytouch/android/SupportedFunction;->datadir:Ljava/lang/String;

    .line 89
    new-instance v7, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/whytouch/android/SupportedFunction;->datadir:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    new-instance v7, Ljava/io/File;

    .end local v7           #file:Ljava/io/File;
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/whytouch/android/SupportedFunction;->datadir:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .restart local v7       #file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 97
    :goto_0
    const-string v0, "pm.dat"

    invoke-direct {p0, p1, v0}, Lcom/whytouch/android/SupportedFunction;->copyAsset(Landroid/app/Activity;Ljava/lang/String;)V

    .line 98
    new-instance v8, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/whytouch/android/SupportedFunction;->datadir:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "default.wtppt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v8, file1:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const-string v0, "default.wtppt"

    invoke-direct {p0, p1, v0}, Lcom/whytouch/android/SupportedFunction;->copyAsset(Landroid/app/Activity;Ljava/lang/String;)V

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/whytouch/android/SupportedFunction;->datadir:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/whytouch/android/SupportedFunction;->SetEnviromentVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 106
    new-instance v10, Lcom/whytouch/android/WorkThreadFunction;

    const-string v0, "Validate"

    invoke-direct {v10, v0, v4}, Lcom/whytouch/android/WorkThreadFunction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .local v10, thr:Lcom/whytouch/android/WorkThreadFunction;
    invoke-virtual {v10}, Lcom/whytouch/android/WorkThreadFunction;->start()V

    .line 112
    .end local v4           #appname:Ljava/lang/String;
    .end local v6           #extpath:Ljava/lang/String;
    .end local v7           #file:Ljava/io/File;
    .end local v8           #file1:Ljava/io/File;
    .end local v10           #thr:Lcom/whytouch/android/WorkThreadFunction;
    :goto_1
    return-object v9

    .line 94
    .restart local v4       #appname:Ljava/lang/String;
    .restart local v6       #extpath:Ljava/lang/String;
    .restart local v7       #file:Ljava/io/File;
    :cond_1
    invoke-direct {p0, v7}, Lcom/whytouch/android/SupportedFunction;->deleteAllFiles(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    .end local v4           #appname:Ljava/lang/String;
    .end local v6           #extpath:Ljava/lang/String;
    .end local v7           #file:Ljava/io/File;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 11
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 30
    sput-object p1, Lcom/whytouch/android/SupportedFunction;->context:Lcom/adobe/fre/FREContext;

    .line 31
    const/4 v5, 0x0

    .line 36
    .local v5, result:Lcom/adobe/fre/FREObject;
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, p2, v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, func:Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v0, p2, v7

    check-cast v0, Lcom/adobe/fre/FREArray;

    .line 38
    .local v0, arr:Lcom/adobe/fre/FREArray;
    const-string v4, ""

    .line 39
    .local v4, param:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 40
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    int-to-long v7, v3

    invoke-virtual {v0}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-ltz v7, :cond_1

    .line 44
    .end local v3           #i:I
    :cond_0
    invoke-static {v2, v4}, Lcom/whytouch/android/SupportedFunction;->CallFunc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 47
    .local v6, retval:Ljava/lang/String;
    invoke-static {v6}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v7

    .line 55
    .end local v0           #arr:Lcom/adobe/fre/FREArray;
    .end local v2           #func:Ljava/lang/String;
    .end local v4           #param:Ljava/lang/String;
    .end local v6           #retval:Ljava/lang/String;
    :goto_1
    return-object v7

    .line 41
    .restart local v0       #arr:Lcom/adobe/fre/FREArray;
    .restart local v2       #func:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v4       #param:Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v8, v3

    invoke-virtual {v0, v8, v9}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "$#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 40
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 49
    .end local v0           #arr:Lcom/adobe/fre/FREArray;
    .end local v2           #func:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #param:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 52
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    const/4 v7, 0x0

    goto :goto_1
.end method
