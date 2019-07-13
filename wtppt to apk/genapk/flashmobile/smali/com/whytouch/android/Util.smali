.class public Lcom/whytouch/android/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetMenuIconExpandRatio(Landroid/content/Context;)I
    .locals 12
    .parameter "context"

    .prologue
    const-wide/high16 v10, 0x4048

    .line 185
    const/16 v0, 0x64

    .line 186
    .local v0, expandRatio:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 187
    .local v2, metrics:Landroid/util/DisplayMetrics;
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 188
    .local v3, widthPixels:I
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 189
    .local v1, heightPixels:I
    iget v4, v2, Landroid/util/DisplayMetrics;->xdpi:F

    .line 190
    .local v4, xdpi:F
    iget v5, v2, Landroid/util/DisplayMetrics;->ydpi:F

    .line 191
    .local v5, ydpi:F
    float-to-double v6, v4

    div-double v6, v10, v6

    const-wide v8, 0x3fcae147ae147ae1L

    cmpg-double v6, v6, v8

    if-ltz v6, :cond_0

    float-to-double v6, v4

    div-double v6, v10, v6

    const-wide/high16 v8, 0x3fe0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    .line 192
    :cond_0
    const-wide/high16 v6, 0x3fd8

    float-to-double v8, v4

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000

    mul-double/2addr v6, v8

    double-to-int v0, v6

    .line 194
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Ratio: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/whytouch/android/WTDebuglog;->log(Ljava/lang/String;)V

    .line 195
    return v0
.end method

.method public static Init(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "mContext"

    .prologue
    .line 129
    invoke-static {p0}, Lcom/whytouch/android/Util;->getOtherInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, val:Ljava/lang/String;
    invoke-static {v0}, Lcom/whytouch/android/Util;->SetOtherInfo(Ljava/lang/String;)V

    .line 131
    return-object v0
.end method

.method public static Record()V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/whytouch/android/Util$1;

    invoke-direct {v0}, Lcom/whytouch/android/Util$1;-><init>()V

    .line 148
    invoke-virtual {v0}, Lcom/whytouch/android/Util$1;->start()V

    .line 149
    return-void
.end method

.method private static native RecordData()V
.end method

.method public static native SetOtherInfo(Ljava/lang/String;)V
.end method

.method static synthetic access$0()V
    .locals 0

    .prologue
    .line 197
    invoke-static {}, Lcom/whytouch/android/Util;->RecordData()V

    return-void
.end method

.method private static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "mContext"

    .prologue
    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, androidId:Ljava/lang/String;
    return-object v0
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 161
    const-string v0, ""

    .line 163
    .local v0, packagename:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 167
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appname "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/whytouch/android/WTDebuglog;->log(Ljava/lang/String;)V

    .line 168
    return-object v0

    .line 165
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCpuInfo()[Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "\\s+"

    const-string v10, ""

    .line 21
    const-string v5, "/proc/cpuinfo"

    .line 22
    .local v5, str1:Ljava/lang/String;
    const-string v6, ""

    .line 23
    .local v6, str2:Ljava/lang/String;
    new-array v1, v7, [Ljava/lang/String;

    const-string v7, ""

    aput-object v10, v1, v8

    const-string v7, ""

    aput-object v10, v1, v9

    .line 26
    .local v1, cpuInfo:[Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 27
    .local v2, fr:Ljava/io/FileReader;
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v7, 0x2000

    invoke-direct {v4, v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 28
    .local v4, localBufferedReader:Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 29
    const-string v7, "\\s+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, arrayOfString:[Ljava/lang/String;
    const/4 v3, 0x2

    .local v3, i:I
    :goto_0
    array-length v7, v0

    if-lt v3, v7, :cond_0

    .line 33
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 34
    const-string v7, "\\s+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 35
    const/4 v7, 0x1

    aget-object v8, v1, v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x2

    aget-object v8, v0, v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    .line 36
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 39
    .end local v0           #arrayOfString:[Ljava/lang/String;
    .end local v2           #fr:Ljava/io/FileReader;
    .end local v3           #i:I
    .end local v4           #localBufferedReader:Ljava/io/BufferedReader;
    :goto_1
    return-object v1

    .line 31
    .restart local v0       #arrayOfString:[Ljava/lang/String;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v3       #i:I
    .restart local v4       #localBufferedReader:Ljava/io/BufferedReader;
    :cond_0
    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    aget-object v9, v1, v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 37
    .end local v0           #arrayOfString:[Ljava/lang/String;
    .end local v2           #fr:Ljava/io/FileReader;
    .end local v3           #i:I
    .end local v4           #localBufferedReader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .locals 6

    .prologue
    .line 74
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_1

    .line 93
    .end local v0           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_0
    const/4 v5, 0x0

    :goto_1
    return-object v5

    .line 75
    .restart local v0       #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 77
    .local v3, intf:Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    .line 76
    if-eqz v5, :cond_0

    .line 78
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 79
    .local v2, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_2

    .line 81
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, lip:Ljava/lang/String;
    invoke-static {v4}, Lcom/whytouch/android/WTDebuglog;->log(Ljava/lang/String;)V

    .line 83
    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ltz v5, :cond_2

    move-object v5, v4

    .line 84
    goto :goto_1

    .line 90
    .end local v0           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v1           #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v2           #inetAddress:Ljava/net/InetAddress;
    .end local v3           #intf:Ljava/net/NetworkInterface;
    .end local v4           #lip:Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static getMACInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "mContext"

    .prologue
    .line 42
    const-string v0, ""

    .line 43
    .local v0, other:Ljava/lang/String;
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 44
    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 45
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 46
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 47
    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 52
    :goto_0
    return-object v0

    .line 49
    :cond_0
    const-string v0, "Fail"

    goto :goto_0
.end method

.method public static getOtherInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "mContext"

    .prologue
    .line 55
    const-string v4, "52712173"

    .line 57
    .local v4, val:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/whytouch/android/Util;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, val2:Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, v1:Ljava/lang/String;
    const/4 v6, 0x6

    const/16 v7, 0xc

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, v2:Ljava/lang/String;
    const/16 v6, 0x10

    invoke-static {v2, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 62
    .local v0, l1:I
    const/16 v6, 0x10

    invoke-static {v3, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 63
    .local v1, l2:I
    shl-int/lit8 v6, v0, 0x7

    xor-int v0, v6, v1

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 69
    .end local v0           #l1:I
    .end local v1           #l2:I
    .end local v2           #v1:Ljava/lang/String;
    .end local v3           #v2:Ljava/lang/String;
    .end local v5           #val2:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 66
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public static getVerCode(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 151
    const/4 v0, -0x1

    .line 153
    .local v0, verCode:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 153
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 154
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "verCode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/whytouch/android/WTDebuglog;->log(Ljava/lang/String;)V

    .line 158
    return v0

    .line 155
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getVerName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 171
    const-string v0, ""

    .line 173
    .local v0, verName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 173
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 174
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "verName "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/whytouch/android/WTDebuglog;->log(Ljava/lang/String;)V

    .line 178
    return-object v0

    .line 175
    :catch_0
    move-exception v1

    goto :goto_0
.end method
