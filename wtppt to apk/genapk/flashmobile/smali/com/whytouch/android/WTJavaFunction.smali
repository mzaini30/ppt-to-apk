.class public Lcom/whytouch/android/WTJavaFunction;
.super Ljava/lang/Object;
.source "WTJavaFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static functionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public _act:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/whytouch/android/WTJavaFunction;->functionMap:Ljava/util/Map;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "act"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/whytouch/android/WTJavaFunction;->_act:Landroid/app/Activity;

    .line 39
    invoke-virtual {p0}, Lcom/whytouch/android/WTJavaFunction;->Init()V

    .line 40
    return-void
.end method

.method public static CallJdir(Lcom/adobe/fre/FREArray;)Ljava/lang/String;
    .locals 15
    .parameter "frearr"

    .prologue
    const-wide/16 v13, 0x0

    const-string v11, "%!"

    .line 296
    const-string v8, ""

    .line 298
    .local v8, param:Ljava/lang/String;
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v11

    cmp-long v11, v11, v13

    if-lez v11, :cond_0

    .line 299
    const-wide/16 v11, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v8

    .line 305
    :cond_0
    :goto_0
    const-string v1, ""

    .line 306
    .local v1, dirstr:Ljava/lang/String;
    const/4 v6, 0x0

    .line 307
    .local v6, items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 311
    .local v9, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 312
    .end local v6           #items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v7, items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 313
    .end local v9           #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v10, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 316
    .local v4, files:[Ljava/io/File;
    if-eqz v4, :cond_3

    .line 317
    array-length v0, v4

    .line 318
    .local v0, count:I
    const/4 v5, 0x0

    .end local p0
    .local v5, i:I
    :goto_1
    if-lt v5, v0, :cond_1

    .line 334
    const-string v11, "Calldir"

    invoke-static {v11, v1}, Lcom/whytouch/android/ExtensionContext;->CallFlash(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v10

    .end local v10           #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9       #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v6, v7

    .line 339
    .end local v0           #count:I
    .end local v2           #f:Ljava/io/File;
    .end local v4           #files:[Ljava/io/File;
    .end local v5           #i:I
    .end local v7           #items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    return-object v1

    .line 319
    .end local v6           #items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0       #count:I
    .restart local v2       #f:Ljava/io/File;
    .restart local v4       #files:[Ljava/io/File;
    .restart local v5       #i:I
    .restart local v7       #items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10       #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    aget-object v3, v4, v5

    .line 320
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 325
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "d"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "%!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 318
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 331
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "f"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "%!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    goto :goto_3

    .line 336
    .end local v0           #count:I
    .end local v2           #f:Ljava/io/File;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #files:[Ljava/io/File;
    .end local v5           #i:I
    .end local v7           #items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9       #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local p0
    :catch_0
    move-exception v11

    goto :goto_2

    .end local v6           #items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7       #items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v11

    move-object v6, v7

    .end local v7           #items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2

    .end local v6           #items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local p0
    .restart local v7       #items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10       #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_2
    move-exception v11

    move-object v9, v10

    .end local v10           #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9       #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v6, v7

    .end local v7           #items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2

    .line 301
    .end local v1           #dirstr:Ljava/lang/String;
    .end local v6           #items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local p0
    :catch_3
    move-exception v11

    goto/16 :goto_0

    .restart local v1       #dirstr:Ljava/lang/String;
    .restart local v2       #f:Ljava/io/File;
    .restart local v4       #files:[Ljava/io/File;
    .restart local v7       #items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10       #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-object v9, v10

    .end local v10           #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9       #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v6, v7

    .end local v7           #items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2
.end method

.method public static native FinalizeApp()Ljava/lang/String;
.end method

.method private varargs InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "method"
    .parameter "args"

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 246
    .local v0, retval:Ljava/lang/Object;
    if-eqz p2, :cond_0

    .line 247
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 257
    .end local v0           #retval:Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 249
    .restart local v0       #retval:Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static QuitApp(Ljava/lang/Object;)V
    .locals 1
    .parameter "frearr"

    .prologue
    .line 43
    invoke-static {}, Lcom/whytouch/android/WTJavaFunction;->FinalizeApp()Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 45
    return-void
.end method


# virtual methods
.method public BackPressed(Lcom/adobe/fre/FREArray;)V
    .locals 1
    .parameter "frearr"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/whytouch/android/WTJavaFunction;->_act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 83
    return-void
.end method

.method public ChangeOrientation(Lcom/adobe/fre/FREArray;)Lcom/adobe/fre/FREObject;
    .locals 3
    .parameter "frearr"

    .prologue
    .line 201
    const-wide/16 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1, v2}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, p1:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ChangeOrientation java "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/whytouch/android/WTDebuglog;->log(Ljava/lang/String;)V

    .line 203
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/whytouch/android/WTJavaFunction;->_act:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 206
    const-string v1, "set landscape"

    invoke-static {v1}, Lcom/whytouch/android/WTDebuglog;->log(Ljava/lang/String;)V

    .line 214
    .end local v0           #p1:Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 209
    .restart local v0       #p1:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/whytouch/android/WTJavaFunction;->_act:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 210
    const-string v1, "set portrait"

    invoke-static {v1}, Lcom/whytouch/android/WTDebuglog;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    .end local v0           #p1:Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public GetAppName(Lcom/adobe/fre/FREArray;)Lcom/adobe/fre/FREObject;
    .locals 1
    .parameter "frearr"

    .prologue
    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/whytouch/android/WTJavaFunction;->_act:Landroid/app/Activity;

    invoke-static {v0}, Lcom/whytouch/android/Util;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    .line 95
    :catch_0
    move-exception v0

    .line 98
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetCode(Lcom/adobe/fre/FREArray;)Lcom/adobe/fre/FREObject;
    .locals 1
    .parameter "frearr"

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/whytouch/android/WTJavaFunction;->_act:Landroid/app/Activity;

    invoke-static {v0}, Lcom/whytouch/android/Util;->getOtherInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 90
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetFileName(Lcom/adobe/fre/FREArray;)Lcom/adobe/fre/FREObject;
    .locals 18
    .parameter "frearr"

    .prologue
    .line 141
    const-string v14, ""

    .line 143
    .local v14, retdata:Ljava/lang/String;
    const-wide/16 v16, 0x0

    :try_start_0
    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v10

    .line 144
    .local v10, p1:Ljava/lang/String;
    const-wide/16 v16, 0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v11

    .line 148
    .local v11, p2:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v3, f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 151
    .local v4, files1:[Ljava/io/File;
    new-instance v3, Ljava/io/File;

    .end local v3           #f:Ljava/io/File;
    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .restart local v3       #f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 157
    .local v5, files2:[Ljava/io/File;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    move-object v0, v4

    array-length v0, v0

    move/from16 v16, v0

    move v0, v8

    move/from16 v1, v16

    if-lt v0, v1, :cond_0

    .line 178
    invoke-static {v14}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v16

    .line 184
    .end local v3           #f:Ljava/io/File;
    .end local v4           #files1:[Ljava/io/File;
    .end local v5           #files2:[Ljava/io/File;
    .end local v8           #i:I
    .end local v10           #p1:Ljava/lang/String;
    .end local v11           #p2:Ljava/lang/String;
    :goto_1
    return-object v16

    .line 158
    .restart local v3       #f:Ljava/io/File;
    .restart local v4       #files1:[Ljava/io/File;
    .restart local v5       #files2:[Ljava/io/File;
    .restart local v8       #i:I
    .restart local v10       #p1:Ljava/lang/String;
    .restart local v11       #p2:Ljava/lang/String;
    :cond_0
    aget-object v16, v4, v8

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 159
    .local v6, fn:Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 161
    const-string v16, "."

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 162
    .local v12, pos:I
    const/16 v16, -0x1

    move v0, v12

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    .line 157
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 164
    :cond_1
    const/16 v16, 0x0

    move-object v0, v6

    move/from16 v1, v16

    move v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 165
    .local v15, str:Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, "_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 166
    const/4 v9, 0x0

    .local v9, j:I
    :goto_3
    if-eqz v5, :cond_2

    move-object v0, v5

    array-length v0, v0

    move/from16 v16, v0

    move v0, v9

    move/from16 v1, v16

    if-lt v0, v1, :cond_3

    .line 174
    :cond_2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    .line 168
    :cond_3
    aget-object v16, v5, v9

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 170
    .local v7, fn2:Ljava/lang/String;
    invoke-virtual {v7, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 171
    .local v13, pos2:I
    const/16 v16, -0x1

    move v0, v13

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    .line 166
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 172
    :cond_4
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    goto :goto_4

    .line 179
    .end local v3           #f:Ljava/io/File;
    .end local v4           #files1:[Ljava/io/File;
    .end local v5           #files2:[Ljava/io/File;
    .end local v6           #fn:Ljava/lang/String;
    .end local v7           #fn2:Ljava/lang/String;
    .end local v8           #i:I
    .end local v9           #j:I
    .end local v10           #p1:Ljava/lang/String;
    .end local v11           #p2:Ljava/lang/String;
    .end local v12           #pos:I
    .end local v13           #pos2:I
    .end local v15           #str:Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 184
    const/16 v16, 0x0

    goto/16 :goto_1
.end method

.method public IconSizeRatio(Lcom/adobe/fre/FREArray;)Lcom/adobe/fre/FREObject;
    .locals 3
    .parameter "frearr"

    .prologue
    .line 187
    const/16 v1, 0x64

    .line 188
    .local v1, result:I
    iget-object v2, p0, Lcom/whytouch/android/WTJavaFunction;->_act:Landroid/app/Activity;

    invoke-static {v2}, Lcom/whytouch/android/Util;->GetMenuIconExpandRatio(Landroid/content/Context;)I

    move-result v1

    .line 191
    :try_start_0
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 196
    :goto_0
    return-object v2

    .line 192
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Lcom/adobe/fre/FREWrongThreadException;
    invoke-virtual {v0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    .line 196
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public Init()V
    .locals 7

    .prologue
    const-string v0, "BackPressed"

    const-class v0, Lcom/adobe/fre/FREArray;

    const-string v0, "com.whytouch.android.WTJavaFunction"

    .line 218
    :try_start_0
    sget-object v0, Lcom/whytouch/android/WTJavaFunction;->functionMap:Ljava/util/Map;

    const-string v1, "FlashQuit"

    const-string v2, "com.whytouch.android.WTJavaFunction"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "QuitApp"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/whytouch/android/WTJavaFunction;->functionMap:Ljava/util/Map;

    const-string v1, "WtpptUnzip"

    const-string v2, "com.whytouch.android.WTJavaFunction"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "WtpptUnzip"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/adobe/fre/FREArray;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/whytouch/android/WTJavaFunction;->functionMap:Ljava/util/Map;

    const-string v1, "InitApp"

    const-string v2, "com.whytouch.android.WTJavaFunction"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "InitApp"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/adobe/fre/FREArray;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/whytouch/android/WTJavaFunction;->functionMap:Ljava/util/Map;

    const-string v1, "CallJdir"

    const-string v2, "com.whytouch.android.WTJavaFunction"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "CallJdir"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/adobe/fre/FREArray;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/whytouch/android/WTJavaFunction;->functionMap:Ljava/util/Map;

    const-string v1, "SaveBinary"

    const-string v2, "com.whytouch.android.WTJavaFunction"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "SaveBinary"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/adobe/fre/FREArray;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/whytouch/android/WTJavaFunction;->functionMap:Ljava/util/Map;

    const-string v1, "SaveData"

    const-string v2, "com.whytouch.android.WTJavaFunction"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "SaveData"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/adobe/fre/FREArray;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/whytouch/android/WTJavaFunction;->functionMap:Ljava/util/Map;

    const-string v1, "GetFileName"

    const-string v2, "com.whytouch.android.WTJavaFunction"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "GetFileName"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/adobe/fre/FREArray;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/whytouch/android/WTJavaFunction;->functionMap:Ljava/util/Map;

    const-string v1, "InvokeKeyboard"

    const-string v2, "com.whytouch.android.WTJavaFunction"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "InvokeKeyboard"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/adobe/fre/FREArray;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/whytouch/android/WTJavaFunction;->functionMap:Ljava/util/Map;

    const-string v1, "BackPressed"

    const-string v2, "com.whytouch.android.WTJavaFunction"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "BackPressed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/adobe/fre/FREArray;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/whytouch/android/WTJavaFunction;->functionMap:Ljava/util/Map;

    const-string v1, "IconSizeRatio"

    const-string v2, "com.whytouch.android.WTJavaFunction"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "IconSizeRatio"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/adobe/fre/FREArray;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/whytouch/android/WTJavaFunction;->functionMap:Ljava/util/Map;

    const-string v1, "ChangeOrientation"

    const-string v2, "com.whytouch.android.WTJavaFunction"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "ChangeOrientation"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/adobe/fre/FREArray;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/whytouch/android/WTJavaFunction;->functionMap:Ljava/util/Map;

    const-string v1, "GetCode"

    const-string v2, "com.whytouch.android.WTJavaFunction"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "GetCode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/adobe/fre/FREArray;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/whytouch/android/WTJavaFunction;->functionMap:Ljava/util/Map;

    const-string v1, "GetAppName"

    const-string v2, "com.whytouch.android.WTJavaFunction"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "GetAppName"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/adobe/fre/FREArray;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public InitApp(Lcom/adobe/fre/FREArray;)V
    .locals 2
    .parameter "frearr"

    .prologue
    .line 75
    const-string v0, "InitApp"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/whytouch/android/SupportedFunction;->CallFunc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    return-void
.end method

.method public InvokeKeyboard(Lcom/adobe/fre/FREArray;)V
    .locals 3
    .parameter "frearr"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/whytouch/android/WTJavaFunction;->_act:Landroid/app/Activity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 79
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 80
    return-void
.end method

.method public SaveBinary(Lcom/adobe/fre/FREArray;)V
    .locals 6
    .parameter "frearr"

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/whytouch/android/WTJavaFunction;->BackPressed(Lcom/adobe/fre/FREArray;)V

    .line 103
    const-wide/16 v4, 0x0

    :try_start_0
    invoke-virtual {p1, v4, v5}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, data:Ljava/lang/String;
    const-wide/16 v4, 0x1

    invoke-virtual {p1, v4, v5}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, path:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 109
    .local v3, ret:[B
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, myOutput:Ljava/io/OutputStream;
    const/4 v4, 0x0

    array-length v5, v3

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 113
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 114
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v0           #data:Ljava/lang/String;
    .end local v1           #myOutput:Ljava/io/OutputStream;
    .end local v2           #path:Ljava/lang/String;
    .end local v3           #ret:[B
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public SaveData(Lcom/adobe/fre/FREArray;)V
    .locals 6
    .parameter "frearr"

    .prologue
    .line 124
    const-wide/16 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v3, v4}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, path:Ljava/lang/String;
    const-wide/16 v3, 0x1

    invoke-virtual {p1, v3, v4}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, data:Ljava/lang/String;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, myOutput:Ljava/io/OutputStream;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 131
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 132
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v0           #data:Ljava/lang/String;
    .end local v1           #myOutput:Ljava/io/OutputStream;
    .end local v2           #path:Ljava/lang/String;
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public WtpptUnzip(Lcom/adobe/fre/FREArray;)V
    .locals 7
    .parameter "frearr"

    .prologue
    .line 59
    const-string v1, ""

    .line 61
    .local v1, param:Ljava/lang/String;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 62
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    int-to-long v3, v0

    invoke-virtual {p1}, Lcom/adobe/fre/FREArray;->getLength()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    .line 71
    .end local v0           #i:I
    :cond_0
    :goto_1
    new-instance v2, Lcom/whytouch/android/WorkThreadFunction;

    const-string v3, "WtpptUnzip"

    invoke-direct {v2, v3, v1}, Lcom/whytouch/android/WorkThreadFunction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .local v2, thr:Lcom/whytouch/android/WorkThreadFunction;
    invoke-virtual {v2}, Lcom/whytouch/android/WorkThreadFunction;->start()V

    .line 73
    return-void

    .line 64
    .end local v2           #thr:Lcom/whytouch/android/WorkThreadFunction;
    .restart local v0       #i:I
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v4, v0

    invoke-virtual {p1, v4, v5}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    .end local v0           #i:I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 8
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 261
    const/4 v4, 0x0

    .line 263
    .local v4, result:Lcom/adobe/fre/FREObject;
    const-string v5, "[ call wtjava func ]"

    invoke-static {v5}, Lcom/whytouch/android/WTDebuglog;->log(Ljava/lang/String;)V

    .line 267
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, fn:Ljava/lang/String;
    sget-object v5, Lcom/whytouch/android/WTJavaFunction;->functionMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 270
    .local v3, func:Ljava/lang/reflect/Method;
    if-nez v3, :cond_0

    .line 279
    const-string v5, ""

    invoke-static {v5}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v5

    .line 291
    .end local v2           #fn:Ljava/lang/String;
    .end local v3           #func:Ljava/lang/reflect/Method;
    :goto_0
    return-object v5

    .line 283
    .restart local v2       #fn:Ljava/lang/String;
    .restart local v3       #func:Ljava/lang/reflect/Method;
    :cond_0
    const/4 v5, 0x1

    aget-object v1, p2, v5

    check-cast v1, Lcom/adobe/fre/FREArray;

    .line 284
    .local v1, arr:Lcom/adobe/fre/FREArray;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    aget-object v7, p2, v7

    aput-object v7, v5, v6

    invoke-direct {p0, v3, v5}, Lcom/whytouch/android/WTJavaFunction;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/adobe/fre/FREObject;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #arr:Lcom/adobe/fre/FREArray;
    .end local v2           #fn:Ljava/lang/String;
    .end local v3           #func:Ljava/lang/reflect/Method;
    :goto_1
    move-object v5, v4

    .line 291
    goto :goto_0

    .line 286
    :catch_0
    move-exception v5

    goto :goto_1
.end method
