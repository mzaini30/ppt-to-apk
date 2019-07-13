.class public Lcom/mzaini30/tugasrenelagi/AppEntry;
.super Landroid/app/Activity;
.source "AppEntry.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppEntry"

.field private static final RESOURCE_BUTTON_EXIT:Ljava/lang/String; = "string.button_exit"

.field private static final RESOURCE_BUTTON_INSTALL:Ljava/lang/String; = "string.button_install"

.field private static final RESOURCE_CLASS:Ljava/lang/String; = "air.SingleFile.R"

.field private static final RESOURCE_TEXT_RUNTIME_REQUIRED:Ljava/lang/String; = "string.text_runtime_required"

.field private static final RESOURCE_TITLE_ADOBE_AIR:Ljava/lang/String; = "string.title_adobe_air"

.field private static RUNTIME_PACKAGE_ID:Ljava/lang/String;

.field private static sAndroidActivityWrapper:Ljava/lang/Object;

.field private static sAndroidActivityWrapperClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sDloader:Ldalvik/system/DexClassLoader;

.field private static sRuntimeClassesLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mzaini30/tugasrenelagi/AppEntry;->sRuntimeClassesLoaded:Z

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapper:Ljava/lang/Object;

    .line 62
    const-string v0, "com.adobe.air"

    sput-object v0, Lcom/mzaini30/tugasrenelagi/AppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private BroadcastIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "action"
    .parameter "data"

    .prologue
    .line 69
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mzaini30/tugasrenelagi/AppEntry;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    goto :goto_0

    .line 71
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private varargs InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "method"
    .parameter "args"

    .prologue
    .line 341
    sget-boolean v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sRuntimeClassesLoaded:Z

    if-nez v1, :cond_0

    .line 342
    const/4 v1, 0x0

    .line 356
    :goto_0
    return-object v1

    .line 344
    :cond_0
    const/4 v0, 0x0

    .line 347
    .local v0, retval:Ljava/lang/Object;
    if-eqz p2, :cond_1

    .line 348
    :try_start_0
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapper:Ljava/lang/Object;

    invoke-virtual {p1, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #retval:Ljava/lang/Object;
    :goto_1
    move-object v1, v0

    .line 356
    goto :goto_0

    .line 350
    .restart local v0       #retval:Ljava/lang/Object;
    :cond_1
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapper:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 352
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private InvokeWrapperOnCreate()V
    .locals 12

    .prologue
    .line 319
    :try_start_0
    sget-object v7, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v8, "onCreate"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/app/Activity;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, [Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 324
    .local v4, method:Ljava/lang/reflect/Method;
    const-string v6, ""

    .line 325
    .local v6, xmlPath:Ljava/lang/String;
    const-string v5, ""

    .line 326
    .local v5, rootDirectory:Ljava/lang/String;
    const-string v1, "-nodebug"

    .line 327
    .local v1, extraArgs:Ljava/lang/String;
    new-instance v2, Ljava/lang/Boolean;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Ljava/lang/Boolean;-><init>(Z)V

    .line 328
    .local v2, isADL:Ljava/lang/Boolean;
    new-instance v3, Ljava/lang/Boolean;

    const/4 v7, 0x0

    invoke-direct {v3, v7}, Ljava/lang/Boolean;-><init>(Z)V

    .line 329
    .local v3, isDebuggerMode:Ljava/lang/Boolean;
    const/4 v7, 0x5

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v0, v7

    const/4 v7, 0x1

    aput-object v5, v0, v7

    const/4 v7, 0x2

    aput-object v1, v0, v7

    const/4 v7, 0x3

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v7, 0x4

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    .line 331
    .local v0, args:[Ljava/lang/String;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-direct {p0, v4, v7}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #extraArgs:Ljava/lang/String;
    .end local v2           #isADL:Ljava/lang/Boolean;
    .end local v3           #isDebuggerMode:Ljava/lang/Boolean;
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v5           #rootDirectory:Ljava/lang/String;
    .end local v6           #xmlPath:Ljava/lang/String;
    :goto_0
    return-void

    .line 333
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private static KillSelf()V
    .locals 1

    .prologue
    .line 361
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 362
    return-void
.end method

.method static synthetic access$000(Lcom/mzaini30/tugasrenelagi/AppEntry;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/mzaini30/tugasrenelagi/AppEntry;->launchMarketPlaceForAIR()V

    return-void
.end method

.method static synthetic access$100(Lcom/mzaini30/tugasrenelagi/AppEntry;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/mzaini30/tugasrenelagi/AppEntry;->loadSharedRuntimeDex()V

    return-void
.end method

.method static synthetic access$200(Lcom/mzaini30/tugasrenelagi/AppEntry;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/mzaini30/tugasrenelagi/AppEntry;->createActivityWrapper(Z)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/mzaini30/tugasrenelagi/AppEntry;->sRuntimeClassesLoaded:Z

    return v0
.end method

.method static synthetic access$400(Lcom/mzaini30/tugasrenelagi/AppEntry;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeWrapperOnCreate()V

    return-void
.end method

.method static synthetic access$500()V
    .locals 0

    .prologue
    .line 55
    invoke-static {}, Lcom/mzaini30/tugasrenelagi/AppEntry;->KillSelf()V

    return-void
.end method

.method private createActivityWrapper(Z)V
    .locals 6
    .parameter "hasCaptiveRuntime"

    .prologue
    const-string v1, "CreateAndroidActivityWrapper"

    .line 573
    if-eqz p1, :cond_0

    .line 575
    :try_start_0
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "CreateAndroidActivityWrapper"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/Boolean;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 576
    .local v0, methodCreateAndroidActivityWrapper:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapper:Ljava/lang/Object;

    .line 588
    .end local v0           #methodCreateAndroidActivityWrapper:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 580
    :cond_0
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "CreateAndroidActivityWrapper"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 581
    .restart local v0       #methodCreateAndroidActivityWrapper:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapper:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 584
    .end local v0           #methodCreateAndroidActivityWrapper:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isRuntimeInstalled()Z
    .locals 4

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/mzaini30/tugasrenelagi/AppEntry;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 124
    .local v1, pkgMgr:Landroid/content/pm/PackageManager;
    :try_start_0
    sget-object v2, Lcom/mzaini30/tugasrenelagi/AppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    const/16 v3, 0x100

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 127
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 129
    .local v0, nfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isRuntimeOnExternalStorage()Z
    .locals 5

    .prologue
    const/high16 v4, 0x4

    .line 137
    invoke-virtual {p0}, Lcom/mzaini30/tugasrenelagi/AppEntry;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 142
    .local v1, pkgMgr:Landroid/content/pm/PackageManager;
    :try_start_0
    sget-object v2, Lcom/mzaini30/tugasrenelagi/AppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    const/16 v3, 0x2000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 143
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_0

    .line 144
    const/4 v2, 0x1

    .line 151
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v2

    .line 146
    :catch_0
    move-exception v2

    .line 151
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private launchAIRService()V
    .locals 4

    .prologue
    .line 271
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.adobe.air.AIRServiceAction"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Lcom/mzaini30/tugasrenelagi/AppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    const-string v3, "com.adobe.air.AIRService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    new-instance v0, Lcom/mzaini30/tugasrenelagi/AppEntry$4;

    invoke-direct {v0, p0}, Lcom/mzaini30/tugasrenelagi/AppEntry$4;-><init>(Lcom/mzaini30/tugasrenelagi/AppEntry;)V

    .line 306
    .local v0, conn:Landroid/content/ServiceConnection;
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/mzaini30/tugasrenelagi/AppEntry;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .end local v0           #conn:Landroid/content/ServiceConnection;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 309
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private launchMarketPlaceForAIR()V
    .locals 8

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 88
    .local v1, airDownloadURL:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/mzaini30/tugasrenelagi/AppEntry;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/mzaini30/tugasrenelagi/AppEntry;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 89
    .local v2, info:Landroid/content/pm/ActivityInfo;
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 92
    .local v4, metadata:Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 94
    const-string v5, "airDownloadURL"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    .end local v2           #info:Landroid/content/pm/ActivityInfo;
    .end local v4           #metadata:Landroid/os/Bundle;
    :cond_0
    :goto_0
    move-object v3, v1

    .line 105
    .local v3, marketPlaceURL:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "market://details?id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/mzaini30/tugasrenelagi/AppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 110
    :cond_1
    :try_start_1
    const-string v5, "android.intent.action.VIEW"

    invoke-direct {p0, v5, v3}, Lcom/mzaini30/tugasrenelagi/AppEntry;->BroadcastIntent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    :goto_1
    return-void

    .line 112
    :catch_0
    move-exception v5

    goto :goto_1

    .line 98
    .end local v3           #marketPlaceURL:Ljava/lang/String;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private loadCaptiveRuntimeClasses()Z
    .locals 2

    .prologue
    .line 527
    const/4 v0, 0x0

    .line 531
    .local v0, hasCaptiveRuntime:Z
    :try_start_0
    const-string v1, "com.adobe.air.AndroidActivityWrapper"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    .line 532
    const/4 v0, 0x1

    .line 533
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sRuntimeClassesLoaded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :cond_0
    :goto_0
    return v0

    .line 535
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private loadSharedRuntimeDex()V
    .locals 6

    .prologue
    .line 548
    :try_start_0
    sget-boolean v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sRuntimeClassesLoaded:Z

    if-nez v1, :cond_0

    .line 551
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/mzaini30/tugasrenelagi/AppEntry;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 552
    .local v0, con:Landroid/content/Context;
    new-instance v1, Ldalvik/system/DexClassLoader;

    sget-object v2, Lcom/mzaini30/tugasrenelagi/AppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mzaini30/tugasrenelagi/AppEntry;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sDloader:Ldalvik/system/DexClassLoader;

    .line 557
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sDloader:Ldalvik/system/DexClassLoader;

    const-string v2, "com.adobe.air.AndroidActivityWrapper"

    invoke-virtual {v1, v2}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    .line 558
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 559
    const/4 v1, 0x1

    sput-boolean v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sRuntimeClassesLoaded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    .end local v0           #con:Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 564
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showDialog(ILjava/lang/String;II)V
    .locals 2
    .parameter "titleId"
    .parameter "text"
    .parameter "positiveButtonId"
    .parameter "negativeButtonId"

    .prologue
    .line 156
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 157
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 158
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 159
    new-instance v1, Lcom/mzaini30/tugasrenelagi/AppEntry$1;

    invoke-direct {v1, p0}, Lcom/mzaini30/tugasrenelagi/AppEntry$1;-><init>(Lcom/mzaini30/tugasrenelagi/AppEntry;)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 166
    new-instance v1, Lcom/mzaini30/tugasrenelagi/AppEntry$2;

    invoke-direct {v1, p0}, Lcom/mzaini30/tugasrenelagi/AppEntry$2;-><init>(Lcom/mzaini30/tugasrenelagi/AppEntry;)V

    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 172
    new-instance v1, Lcom/mzaini30/tugasrenelagi/AppEntry$3;

    invoke-direct {v1, p0}, Lcom/mzaini30/tugasrenelagi/AppEntry$3;-><init>(Lcom/mzaini30/tugasrenelagi/AppEntry;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 178
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 179
    return-void
.end method

.method private showRuntimeNotInstalledDialog()V
    .locals 5

    .prologue
    .line 189
    new-instance v0, Lcom/adobe/air/ResourceIdMap;

    const-string v2, "air.SingleFile.R"

    invoke-direct {v0, v2}, Lcom/adobe/air/ResourceIdMap;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, r:Lcom/adobe/air/ResourceIdMap;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "string.text_runtime_required"

    invoke-virtual {v0, v3}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/mzaini30/tugasrenelagi/AppEntry;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "string.text_install_runtime"

    invoke-virtual {v0, v3}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/mzaini30/tugasrenelagi/AppEntry;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, text:Ljava/lang/String;
    const-string v2, "string.title_adobe_air"

    invoke-virtual {v0, v2}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v2

    const-string v3, "string.button_install"

    invoke-virtual {v0, v3}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v3

    const-string v4, "string.button_exit"

    invoke-virtual {v0, v4}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v2, v1, v3, v4}, Lcom/mzaini30/tugasrenelagi/AppEntry;->showDialog(ILjava/lang/String;II)V

    .line 195
    return-void
.end method

.method private showRuntimeOnExternalStorageDialog()V
    .locals 5

    .prologue
    .line 199
    new-instance v0, Lcom/adobe/air/ResourceIdMap;

    const-string v2, "air.SingleFile.R"

    invoke-direct {v0, v2}, Lcom/adobe/air/ResourceIdMap;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, r:Lcom/adobe/air/ResourceIdMap;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "string.text_runtime_required"

    invoke-virtual {v0, v3}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/mzaini30/tugasrenelagi/AppEntry;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "string.text_runtime_on_external_storage"

    invoke-virtual {v0, v3}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/mzaini30/tugasrenelagi/AppEntry;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, text:Ljava/lang/String;
    const-string v2, "string.title_adobe_air"

    invoke-virtual {v0, v2}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v2

    const-string v3, "string.button_install"

    invoke-virtual {v0, v3}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v3

    const-string v4, "string.button_exit"

    invoke-virtual {v0, v4}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v2, v1, v3, v4}, Lcom/mzaini30/tugasrenelagi/AppEntry;->showDialog(ILjava/lang/String;II)V

    .line 205
    return-void
.end method


# virtual methods
.method public finishActivityFromChild(Landroid/app/Activity;I)V
    .locals 6
    .parameter "child"
    .parameter "requestCode"

    .prologue
    .line 593
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->finishActivityFromChild(Landroid/app/Activity;I)V

    .line 597
    :try_start_0
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "finishActivityFromChild"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 598
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 600
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .locals 6
    .parameter "child"

    .prologue
    .line 609
    invoke-super {p0, p1}, Landroid/app/Activity;->finishFromChild(Landroid/app/Activity;)V

    .line 613
    :try_start_0
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "finishFromChild"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 614
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 616
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 494
    :try_start_0
    sget-boolean v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sRuntimeClassesLoaded:Z

    if-eqz v1, :cond_0

    .line 496
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onActivityResult"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 497
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    .end local v0           #method:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 500
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 6
    .parameter "theme"
    .parameter "resid"
    .parameter "first"

    .prologue
    .line 1143
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 1147
    :try_start_0
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onApplyThemeResource"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/res/Resources$Theme;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1148
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1154
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1150
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 625
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 629
    :try_start_0
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onAttachedToWindow"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 630
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 632
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 641
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 645
    :try_start_0
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onBackPressed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 646
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 648
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "childActivity"
    .parameter "title"

    .prologue
    .line 1159
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 1163
    :try_start_0
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onChildTitleChanged"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1164
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1166
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    .line 458
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 462
    :try_start_0
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onConfigurationChanged"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/res/Configuration;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 463
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 465
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 4

    .prologue
    .line 657
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 661
    :try_start_0
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onContentChanged"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 662
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 664
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    .line 673
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 677
    .local v2, retval:Z
    :try_start_0
    sget-object v3, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onContextItemSelected"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/view/MenuItem;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 678
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 683
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 680
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 683
    goto :goto_0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 6
    .parameter "menu"

    .prologue
    .line 690
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 694
    :try_start_0
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onContextMenuClosed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/Menu;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 695
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 697
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 215
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 216
    .local v3, t:Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 217
    .local v1, millis:J
    const-string v4, "StartupTime1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-direct {p0}, Lcom/mzaini30/tugasrenelagi/AppEntry;->loadCaptiveRuntimeClasses()Z

    move-result v0

    .line 223
    .local v0, hasCaptiveRuntime:Z
    if-nez v0, :cond_2

    .line 225
    sget-boolean v4, Lcom/mzaini30/tugasrenelagi/AppEntry;->sRuntimeClassesLoaded:Z

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/mzaini30/tugasrenelagi/AppEntry;->isRuntimeInstalled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 230
    invoke-direct {p0}, Lcom/mzaini30/tugasrenelagi/AppEntry;->isRuntimeOnExternalStorage()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/mzaini30/tugasrenelagi/AppEntry;->showRuntimeOnExternalStorageDialog()V

    .line 263
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/mzaini30/tugasrenelagi/AppEntry;->showRuntimeNotInstalledDialog()V

    goto :goto_0

    .line 236
    :cond_1
    invoke-direct {p0}, Lcom/mzaini30/tugasrenelagi/AppEntry;->loadSharedRuntimeDex()V

    .line 239
    :cond_2
    sget-boolean v4, Lcom/mzaini30/tugasrenelagi/AppEntry;->sRuntimeClassesLoaded:Z

    if-eqz v4, :cond_3

    .line 241
    invoke-direct {p0, v0}, Lcom/mzaini30/tugasrenelagi/AppEntry;->createActivityWrapper(Z)V

    .line 244
    invoke-direct {p0}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeWrapperOnCreate()V

    goto :goto_0

    .line 248
    :cond_3
    if-eqz v0, :cond_4

    .line 252
    invoke-static {}, Lcom/mzaini30/tugasrenelagi/AppEntry;->KillSelf()V

    goto :goto_0

    .line 260
    :cond_4
    invoke-direct {p0}, Lcom/mzaini30/tugasrenelagi/AppEntry;->launchAIRService()V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 706
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 710
    :try_start_0
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onCreateContextMenu"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/ContextMenu;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/view/ContextMenu$ContextMenuInfo;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 711
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 713
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onCreateDescription()Ljava/lang/CharSequence;
    .locals 8

    .prologue
    .line 722
    invoke-super {p0}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 726
    .local v2, retval:Ljava/lang/CharSequence;
    :try_start_0
    sget-object v3, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onCreateDescription"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/CharSequence;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 727
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-direct {p0, v1, v3}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p0

    .line 732
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 729
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move-object v3, v2

    .line 732
    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    .line 1175
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    .line 1179
    .local v2, retval:Landroid/app/Dialog;
    :try_start_0
    sget-object v3, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onCreateDialog"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/app/Dialog;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1180
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-direct {p0, v1, v3}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p0

    .line 1185
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 1182
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move-object v3, v2

    .line 1185
    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "id"
    .parameter "args"

    .prologue
    .line 1192
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    .line 1196
    .local v2, retval:Landroid/app/Dialog;
    :try_start_0
    sget-object v3, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onCreateDialog"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/os/Bundle;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Landroid/app/Dialog;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1197
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-direct {p0, v1, v3}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p0

    .line 1202
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 1199
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move-object v3, v2

    .line 1202
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    .line 739
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    .line 743
    .local v2, retval:Z
    :try_start_0
    sget-object v3, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onCreateOptionsMenu"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/view/Menu;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 744
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 749
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 746
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 749
    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 8
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 756
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v2

    .line 760
    .local v2, retval:Z
    :try_start_0
    sget-object v3, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onCreatePanelMenu"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/view/Menu;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 761
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 766
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 763
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 766
    goto :goto_0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 8
    .parameter "featureId"

    .prologue
    .line 773
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v2

    .line 777
    .local v2, retval:Landroid/view/View;
    :try_start_0
    sget-object v3, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onCreatePanelView"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/view/View;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 778
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-direct {p0, v1, v3}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p0

    .line 783
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 780
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move-object v3, v2

    .line 783
    goto :goto_0
.end method

.method public onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .locals 8
    .parameter "outBitmap"
    .parameter "canvas"

    .prologue
    .line 790
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result v2

    .line 794
    .local v2, retval:Z
    :try_start_0
    sget-object v3, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onCreateThumbnail"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/graphics/Bitmap;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/graphics/Canvas;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 795
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 800
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 797
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 800
    goto :goto_0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 8
    .parameter "name"
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 807
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v2

    .line 811
    .local v2, retval:Landroid/view/View;
    :try_start_0
    sget-object v3, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onCreateView"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Landroid/util/AttributeSet;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Landroid/view/View;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 812
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object v2, v3, v4

    invoke-direct {p0, v1, v3}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p0

    .line 817
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 814
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move-object v3, v2

    .line 817
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 442
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 445
    :try_start_0
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onDestroy"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 446
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 448
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 824
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 828
    :try_start_0
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onDetachedFromWindow"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 829
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 831
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 840
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 844
    .local v2, retval:Z
    :try_start_0
    sget-object v3, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onKeyDown"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/view/KeyEvent;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 845
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 850
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 847
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 850
    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 857
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 861
    .local v2, retval:Z
    :try_start_0
    sget-object v3, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onKeyLongPress"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/view/KeyEvent;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 862
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 867
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 864
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 867
    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 874
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    .line 878
    .local v2, retval:Z
    :try_start_0
    sget-object v3, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onKeyMultiple"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Landroid/view/KeyEvent;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 879
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 884
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 881
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 884
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 891
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 895
    .local v2, retval:Z
    :try_start_0
    sget-object v3, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onKeyUp"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/view/KeyEvent;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 896
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 901
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 898
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 901
    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 4

    .prologue
    .line 480
    :try_start_0
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onLowMemory"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 481
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 483
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 8
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 908
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    .line 912
    .local v2, retval:Z
    :try_start_0
    sget-object v3, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onMenuItemSelected"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/view/MenuItem;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 913
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 918
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 915
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 918
    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 8
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 925
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v2

    .line 929
    .local v2, retval:Z
    :try_start_0
    sget-object v3, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onMenuOpened"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/view/Menu;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 930
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 935
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 932
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 935
    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "aIntent"

    .prologue
    .line 509
    move-object v0, p1

    .line 510
    .local v0, ii:Landroid/content/Intent;
    invoke-super {p0, v0}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 516
    :try_start_0
    sget-object v2, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v3, "onNewIntent"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Intent;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 517
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 519
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    .line 943
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 947
    .local v2, retval:Z
    :try_start_0
    sget-object v3, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onOptionsItemSelected"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/view/MenuItem;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 948
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 953
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 950
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 953
    goto :goto_0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 6
    .parameter "menu"

    .prologue
    .line 960
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 964
    :try_start_0
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onOptionsMenuClosed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/Menu;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 965
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 971
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 967
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 6
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 976
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 980
    :try_start_0
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onPanelClosed"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/view/Menu;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 981
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 987
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 983
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 391
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 394
    :try_start_0
    sget-boolean v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sRuntimeClassesLoaded:Z

    if-eqz v1, :cond_0

    .line 396
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onPause"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 397
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    .end local v0           #method:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 1209
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 1213
    :try_start_0
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onPostCreate"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1214
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1220
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1216
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onPostResume()V
    .locals 4

    .prologue
    .line 1225
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 1229
    :try_start_0
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onPostResume"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1230
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1236
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1232
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 6
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1241
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1245
    :try_start_0
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onPrepareDialog"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/R$id;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/app/Dialog;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1246
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1252
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1248
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 6
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 1257
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 1261
    :try_start_0
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onPrepareDialog"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/R$id;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/app/Dialog;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1262
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1268
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1264
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    .line 992
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    .line 996
    .local v2, retval:Z
    :try_start_0
    sget-object v3, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onPrepareOptionsMenu"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/view/Menu;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 997
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1002
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 999
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 1002
    goto :goto_0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 8
    .parameter "featureId"
    .parameter "view"
    .parameter "menu"

    .prologue
    .line 1009
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    .line 1013
    .local v2, retval:Z
    :try_start_0
    sget-object v3, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onPreparePanel"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/view/View;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Landroid/view/Menu;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1014
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1019
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 1016
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 1019
    goto :goto_0
.end method

.method public onRestart()V
    .locals 4

    .prologue
    .line 373
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 376
    :try_start_0
    sget-boolean v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sRuntimeClassesLoaded:Z

    if-eqz v1, :cond_0

    .line 378
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onRestart"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 379
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    .end local v0           #method:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 1273
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1277
    :try_start_0
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onRestoreInstanceState"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1278
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1284
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1280
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 409
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 412
    :try_start_0
    sget-boolean v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sRuntimeClassesLoaded:Z

    if-eqz v1, :cond_0

    .line 414
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onResume"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 415
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    .end local v0           #method:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 418
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 1026
    invoke-super {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    .line 1030
    .local v2, retval:Ljava/lang/Object;
    :try_start_0
    sget-object v3, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onRetainNonConfigurationInstance"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1031
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-direct {p0, v1, v3}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1036
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 1033
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move-object v3, v2

    .line 1036
    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "outState"

    .prologue
    .line 1289
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1293
    :try_start_0
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onSaveInstanceState"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1294
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1300
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1296
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 8

    .prologue
    .line 1043
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v2

    .line 1047
    .local v2, retval:Z
    :try_start_0
    sget-object v3, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onSearchRequested"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1048
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1053
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 1050
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 1053
    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 367
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 368
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 427
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 430
    :try_start_0
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onStop"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 431
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 433
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 6
    .parameter "title"
    .parameter "color"

    .prologue
    .line 1305
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 1309
    :try_start_0
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onTitleChanged"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1310
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1316
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1312
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    .line 1060
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1064
    .local v2, retval:Z
    :try_start_0
    sget-object v3, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onTouchEvent"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/view/MotionEvent;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1065
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1070
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 1067
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 1070
    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    .line 1077
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1081
    .local v2, retval:Z
    :try_start_0
    sget-object v3, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onTrackballEvent"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/view/MotionEvent;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1082
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1088
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 1085
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 1088
    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 4

    .prologue
    .line 1095
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 1099
    :try_start_0
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onUserInteraction"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1100
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1102
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onUserLeaveHint()V
    .locals 4

    .prologue
    .line 1321
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 1325
    :try_start_0
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onUserLeaveHint"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1326
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1332
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1328
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 6
    .parameter "params"

    .prologue
    .line 1111
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1115
    :try_start_0
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onWindowAttributesChanged"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/WindowManager$LayoutParams;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1116
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1122
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1118
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6
    .parameter "hasFocus"

    .prologue
    .line 1127
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 1131
    :try_start_0
    sget-object v1, Lcom/mzaini30/tugasrenelagi/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onWindowFocusChanged"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1132
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/mzaini30/tugasrenelagi/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1138
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1134
    :catch_0
    move-exception v1

    goto :goto_0
.end method
