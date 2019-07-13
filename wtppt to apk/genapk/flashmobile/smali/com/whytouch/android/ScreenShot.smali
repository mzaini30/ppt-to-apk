.class public Lcom/whytouch/android/ScreenShot;
.super Ljava/lang/Object;
.source "ScreenShot.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static savePic(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4
    .parameter "b"
    .parameter "strFileName"

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 44
    .local v0, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v0           #fos:Ljava/io/FileOutputStream;
    .local v1, fos:Ljava/io/FileOutputStream;
    if-eqz v1, :cond_0

    .line 47
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 49
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 50
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 58
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v2

    goto :goto_0

    .end local v0           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 53
    :catch_2
    move-exception v2

    goto :goto_0

    .end local v0           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .end local v0           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_0
    move-object v0, v1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public static shoot(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .parameter "a"
    .parameter "fn"

    .prologue
    .line 61
    invoke-static {p0}, Lcom/whytouch/android/ScreenShot;->takeScreenShot(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/whytouch/android/ScreenShot;->savePic(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method private static takeScreenShot(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "activity"

    .prologue
    .line 14
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    .line 15
    .local v5, view:Landroid/view/View;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 16
    invoke-virtual {v5}, Landroid/view/View;->buildDrawingCache()V

    .line 17
    invoke-virtual {v5}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 19
    .local v1, b1:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 20
    .local v2, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 21
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 24
    .local v4, statusBarHeight:I
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v6

    .line 25
    .local v6, width:I
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 30
    .local v3, height:I
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-static {v1, v7, v8, v6, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 32
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/view/View;->destroyDrawingCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    .line 38
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #b1:Landroid/graphics/Bitmap;
    .end local v2           #frame:Landroid/graphics/Rect;
    .end local v3           #height:I
    .end local v4           #statusBarHeight:I
    .end local v5           #view:Landroid/view/View;
    .end local v6           #width:I
    :goto_0
    return-object v7

    .line 35
    :catch_0
    move-exception v7

    .line 38
    const/4 v7, 0x0

    goto :goto_0
.end method
