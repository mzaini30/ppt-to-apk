.class public Lcom/adobe/air/AndroidActivityWrapper;
.super Ljava/lang/Object;
.source "AndroidActivityWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/AndroidActivityWrapper$1;,
        Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;,
        Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;,
        Lcom/adobe/air/AndroidActivityWrapper$DebugMode;,
        Lcom/adobe/air/AndroidActivityWrapper$PlaneID;,
        Lcom/adobe/air/AndroidActivityWrapper$ActivityState;
    }
.end annotation


# static fields
.field public static final IMAGE_PICKER_REQUEST_CODE:I = 0x2

.field private static final INVOKE_EVENT_OPEN_URL:I = 0x1

.field private static final INVOKE_EVENT_STANDARD:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "AndroidActivityWrapper"

.field public static final STILL_PICTURE_REQUEST_CODE:I = 0x3

.field public static final VIDEO_CAPTURE_REQUEST_CODE:I = 0x4

.field public static final WEBVIEW_UPLOAD_FILE_CHOOSER_CODE:I = 0x5

.field private static sActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

.field private static sAndroidTelephonyManager:Lcom/adobe/air/telephony/AndroidTelephonyManager;

.field private static sApplicationLaunched:Z

.field private static sEntryPoint:Lcom/adobe/air/Entrypoints;

.field private static sHasCaptiveRuntime:Z

.field private static sIdleStateManager:Lcom/adobe/air/AndroidIdleState;

.field private static sRuntimeLibrariesLoaded:Z


# instance fields
.field private debuggerPort:I

.field private keyGuardManager:Landroid/app/KeyguardManager;

.field private mActivateEventPending:Z

.field private mActivityResultListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

.field private mActivityStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigDownloadListener:Lcom/adobe/air/ConfigDownloadListener;

.field private mContainsVideo:Z

.field private mDebuggerSettings:Lcom/adobe/air/DebuggerSettings;

.field private mDisplayWaitingDialog:Z

.field private mExtraArgs:Ljava/lang/String;

.field private mFullScreenSetFromMetaData:Z

.field private mHardKeyboardHidden:I

.field private mHardKeyboardType:I

.field private mInvokeEventPendingFromOnCreate:Z

.field private mIsADL:Z

.field private mIsDebuggerMode:Z

.field private mIsFullScreen:Z

.field private mLibCorePath:Ljava/lang/String;

.field private mOrientationManager:Lcom/adobe/air/OrientationManager;

.field private mRGB565Override:Z

.field private mRootDir:Ljava/lang/String;

.field private mScreenOn:Z

.field private mShowDebuggerDialog:Z

.field private mXmlPath:Ljava/lang/String;

.field private m_activity:Landroid/app/Activity;

.field private m_application:Landroid/app/Application;

.field private m_cameraView:Lcom/adobe/air/AndroidCameraView;

.field private m_flashEGL:Lcom/adobe/air/FlashEGL;

.field private m_layout:Landroid/widget/FrameLayout;

.field private m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

.field private m_newActivityCondition:Ljava/util/concurrent/locks/Condition;

.field private m_newActivityLock:Ljava/util/concurrent/locks/Lock;

.field private m_overlaysLayout:Landroid/widget/RelativeLayout;

.field private m_planeBreakCascade:Z

.field private m_planeCascadeInit:Z

.field private m_planeCascadeStep:I

.field private m_planes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/SurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private m_runtimeContext:Landroid/content/Context;

.field private m_skipKickCascade:Z

.field private m_videoView:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 81
    sput-boolean v1, Lcom/adobe/air/AndroidActivityWrapper;->sApplicationLaunched:Z

    .line 82
    sput-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sEntryPoint:Lcom/adobe/air/Entrypoints;

    .line 83
    sput-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sIdleStateManager:Lcom/adobe/air/AndroidIdleState;

    .line 84
    sput-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sAndroidTelephonyManager:Lcom/adobe/air/telephony/AndroidTelephonyManager;

    .line 85
    sput-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    .line 109
    sput-boolean v1, Lcom/adobe/air/AndroidActivityWrapper;->sRuntimeLibrariesLoaded:Z

    .line 114
    sput-boolean v1, Lcom/adobe/air/AndroidActivityWrapper;->sHasCaptiveRuntime:Z

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    .line 87
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mConfigDownloadListener:Lcom/adobe/air/ConfigDownloadListener;

    .line 88
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    .line 89
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityResultListeners:Ljava/util/List;

    .line 90
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 91
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_videoView:Landroid/view/SurfaceView;

    .line 92
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_cameraView:Lcom/adobe/air/AndroidCameraView;

    .line 93
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    .line 94
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_flashEGL:Lcom/adobe/air/FlashEGL;

    .line 95
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mXmlPath:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mRootDir:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mExtraArgs:Ljava/lang/String;

    .line 98
    iput-boolean v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsADL:Z

    .line 99
    iput-boolean v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mRGB565Override:Z

    .line 100
    iput-boolean v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsDebuggerMode:Z

    .line 101
    const/4 v0, 0x2

    iput v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mHardKeyboardHidden:I

    .line 102
    iput v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mHardKeyboardType:I

    .line 103
    iput-boolean v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mShowDebuggerDialog:Z

    .line 104
    iput-boolean v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDisplayWaitingDialog:Z

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->debuggerPort:I

    .line 106
    iput-boolean v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInvokeEventPendingFromOnCreate:Z

    .line 107
    iput-boolean v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivateEventPending:Z

    .line 108
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    .line 110
    iput-boolean v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mFullScreenSetFromMetaData:Z

    .line 111
    iput-boolean v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsFullScreen:Z

    .line 112
    iput-boolean v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mContainsVideo:Z

    .line 113
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mLibCorePath:Ljava/lang/String;

    .line 116
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_runtimeContext:Landroid/content/Context;

    .line 118
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    .line 120
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityLock:Ljava/util/concurrent/locks/Lock;

    .line 121
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityCondition:Ljava/util/concurrent/locks/Condition;

    .line 130
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    .line 131
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->keyGuardManager:Landroid/app/KeyguardManager;

    .line 134
    iput-boolean v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->mScreenOn:Z

    .line 135
    new-instance v0, Lcom/adobe/air/DebuggerSettings;

    invoke-direct {v0}, Lcom/adobe/air/DebuggerSettings;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDebuggerSettings:Lcom/adobe/air/DebuggerSettings;

    .line 138
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->STARTED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    .line 282
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    .line 284
    iput v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    .line 285
    iput-boolean v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeBreakCascade:Z

    .line 286
    iput-boolean v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeInit:Z

    .line 287
    iput-boolean v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_skipKickCascade:Z

    .line 209
    iput-object p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    .line 210
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityLock:Ljava/util/concurrent/locks/Lock;

    .line 211
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityCondition:Ljava/util/concurrent/locks/Condition;

    .line 212
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    .line 221
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->LoadRuntimeLibraries()V

    .line 223
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->keyGuardManager:Landroid/app/KeyguardManager;

    .line 224
    return-void
.end method

.method public static CreateAndroidActivityWrapper(Landroid/app/Activity;)Lcom/adobe/air/AndroidActivityWrapper;
    .locals 1
    .parameter

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->CreateAndroidActivityWrapper(Landroid/app/Activity;Ljava/lang/Boolean;)Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static CreateAndroidActivityWrapper(Landroid/app/Activity;Ljava/lang/Boolean;)Lcom/adobe/air/AndroidActivityWrapper;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->sHasCaptiveRuntime:Z

    .line 193
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/air/utils/Utils;->setRuntimePackageName(Ljava/lang/String;)V

    .line 202
    :goto_0
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lcom/adobe/air/AndroidActivityWrapper;

    invoke-direct {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    .line 204
    :cond_0
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    return-object v0

    .line 200
    :cond_1
    const-string v0, "com.adobe.air"

    invoke-static {v0}, Lcom/adobe/air/utils/Utils;->setRuntimePackageName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    return-object v0
.end method

.method private LaunchApplication(Landroid/app/Activity;Lcom/adobe/air/AIRWindowSurfaceView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 764
    sget-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->sApplicationLaunched:Z

    if-eqz v0, :cond_0

    .line 821
    :goto_0
    return-void

    .line 776
    :cond_0
    if-eqz p6, :cond_4

    .line 779
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "args"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 780
    if-eqz v0, :cond_3

    .line 782
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 783
    const/4 v1, 0x0

    aget-object v1, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 784
    const/4 v2, 0x1

    :try_start_1
    aget-object v2, v0, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 786
    :try_start_2
    array-length v3, v0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 788
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v3

    .line 790
    :goto_1
    const/4 v4, 0x3

    move v12, v4

    move-object v4, v3

    move v3, v12

    :goto_2
    :try_start_3
    array-length v5, v0

    if-ge v3, v5, :cond_1

    .line 792
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v4

    .line 790
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    move-object v0, v4

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    :goto_3
    move-object v3, v0

    move-object v12, v1

    move-object v1, v2

    move-object v2, v12

    .line 808
    :goto_4
    :try_start_4
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 810
    new-instance v0, Lcom/adobe/air/Entrypoints;

    invoke-direct {v0}, Lcom/adobe/air/Entrypoints;-><init>()V

    sput-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sEntryPoint:Lcom/adobe/air/Entrypoints;

    .line 811
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sEntryPoint:Lcom/adobe/air/Entrypoints;

    invoke-static {}, Lcom/adobe/air/utils/Utils;->getRuntimePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    move-object v5, p2

    move-object v9, p0

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v0 .. v11}, Lcom/adobe/air/Entrypoints;->EntryMain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    .line 813
    invoke-static {v8}, Lcom/adobe/air/AndroidIdleState;->GetIdleStateManager(Landroid/content/Context;)Lcom/adobe/air/AndroidIdleState;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sIdleStateManager:Lcom/adobe/air/AndroidIdleState;

    .line 815
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->sApplicationLaunched:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 817
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 802
    :catch_1
    move-exception v0

    move-object/from16 v0, p5

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    :goto_5
    move-object v3, v0

    move-object v12, v1

    move-object v1, v2

    move-object v2, v12

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v0, p5

    move-object v2, v1

    move-object/from16 v1, p4

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v0, p5

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v0, v4

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto :goto_5

    :cond_2
    move-object/from16 v3, p5

    goto :goto_1

    :cond_3
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    goto :goto_3

    :cond_4
    move-object/from16 v3, p5

    move-object/from16 v2, p4

    move-object/from16 v1, p3

    goto :goto_4
.end method

.method private LoadRuntimeLibraries()V
    .locals 1

    .prologue
    .line 1208
    sget-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->sRuntimeLibrariesLoaded:Z

    if-nez v0, :cond_0

    .line 1212
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->GetLibCorePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 1213
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->sRuntimeLibrariesLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1220
    :cond_0
    :goto_0
    return-void

    .line 1215
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private SetVisible(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1056
    if-eqz p1, :cond_1

    .line 1058
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->isSurfaceValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->STOPPED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->DESTROYED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    if-eq v0, v1, :cond_0

    .line 1059
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->nativeSetVisible(Z)V

    .line 1067
    :cond_0
    :goto_0
    return-void

    .line 1064
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1065
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->nativeSetVisible(Z)V

    goto :goto_0
.end method

.method private SignalNewActivityCreated()V
    .locals 1

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1546
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 1547
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1548
    return-void
.end method

.method private afterOnCreate()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 655
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 656
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    move v0, v2

    .line 657
    :goto_0
    if-ge v0, v3, :cond_0

    .line 658
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 657
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 663
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 664
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    .line 667
    new-instance v0, Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-direct {v0, v1, p0}, Lcom/adobe/air/AIRWindowSurfaceView;-><init>(Landroid/content/Context;Lcom/adobe/air/AndroidActivityWrapper;)V

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 672
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_cameraView:Lcom/adobe/air/AndroidCameraView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_runtimeContext:Landroid/content/Context;

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 674
    new-instance v0, Lcom/adobe/air/AndroidCameraView;

    invoke-direct {v0, v1, p0}, Lcom/adobe/air/AndroidCameraView;-><init>(Landroid/content/Context;Lcom/adobe/air/AndroidActivityWrapper;)V

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_cameraView:Lcom/adobe/air/AndroidCameraView;

    .line 689
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_cameraView:Lcom/adobe/air/AndroidCameraView;

    if-eqz v0, :cond_2

    .line 690
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_cameraView:Lcom/adobe/air/AndroidCameraView;

    const/16 v3, 0x8

    const/16 v4, 0x10

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 694
    :cond_2
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 695
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 697
    if-eqz v0, :cond_3

    .line 699
    const-string v2, "containsVideo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 701
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 703
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mContainsVideo:Z

    .line 704
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getVideoView()Lcom/adobe/flashruntime/shared/VideoView;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_videoView:Landroid/view/SurfaceView;

    .line 705
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_videoView:Landroid/view/SurfaceView;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 709
    :cond_3
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 711
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    .line 712
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 716
    :cond_4
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 723
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsADL:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mShowDebuggerDialog:Z

    if-eqz v0, :cond_6

    .line 725
    :cond_5
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    if-eq v0, v2, :cond_6

    .line 727
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->requestFocus()Z

    .line 728
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->onWindowFocusChanged(Z)V

    .line 732
    :cond_6
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mFullScreenSetFromMetaData:Z

    if-nez v0, :cond_7

    .line 734
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->setFullScreenFromMetaData()V

    .line 736
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mFullScreenSetFromMetaData:Z

    .line 740
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getIsFullScreen()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 742
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->setFullScreen()V

    .line 746
    :cond_8
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mHardKeyboardHidden:I

    .line 747
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mHardKeyboardType:I

    .line 750
    invoke-static {}, Lcom/adobe/air/OrientationManager;->getOrientationManager()Lcom/adobe/air/OrientationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    .line 751
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0, v2, v3}, Lcom/adobe/air/OrientationManager;->onActivityCreated(Landroid/app/Activity;Lcom/adobe/air/AIRWindowSurfaceView;)V

    .line 752
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->callActivityStateListeners()V

    .line 754
    invoke-static {v1}, Lcom/adobe/flashplayer/HDMIUtils;->initHelper(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    :goto_1
    return-void

    .line 756
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private callActivityResultListeners(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityResultListeners:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1541
    :cond_0
    :goto_0
    return-void

    .line 1532
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_0

    .line 1534
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1532
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 1537
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private callActivityStateListeners()V
    .locals 4

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1472
    :cond_0
    :goto_0
    return-void

    .line 1463
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_0

    .line 1465
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

    iget-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    invoke-interface {v0, v3}, Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;->onActivityStateChanged(Lcom/adobe/air/AndroidActivityWrapper$ActivityState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1463
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 1468
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private callActivityStateListeners(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1492
    :cond_0
    :goto_0
    return-void

    .line 1483
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_0

    .line 1485
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

    invoke-interface {v0, p1}, Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1483
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 1488
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private checkForDebuggerAndLaunchDialog()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "raw.debuginfo"

    .line 1237
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsADL:Z

    if-nez v0, :cond_1

    .line 1239
    new-instance v0, Lcom/adobe/air/ResourceFileManager;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/adobe/air/ResourceFileManager;-><init>(Landroid/content/Context;)V

    .line 1241
    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->None:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

    .line 1243
    const-string v2, "raw.debuginfo"

    invoke-virtual {v0, v3}, Lcom/adobe/air/ResourceFileManager;->lookupResId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/adobe/air/ResourceFileManager;->resExists(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1246
    :try_start_0
    const-string v2, "raw.debuginfo"

    invoke-virtual {v0, v2}, Lcom/adobe/air/ResourceFileManager;->lookupResId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/adobe/air/ResourceFileManager;->getFileStreamFromRawRes(I)Ljava/io/InputStream;

    move-result-object v0

    .line 1251
    const-string v2, "="

    invoke-static {v0, v2}, Lcom/adobe/air/utils/Utils;->parseKeyValuePairFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 1252
    const-string v0, "incomingDebugPort"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1254
    if-eqz v0, :cond_0

    .line 1257
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->debuggerPort:I

    .line 1258
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->ListenMode:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v0

    .line 1267
    :cond_0
    :goto_0
    :try_start_2
    const-string v0, "outgoingDebugHost"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 1272
    sget-object v2, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->ListenMode:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

    if-ne v1, v2, :cond_2

    .line 1273
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->ConflictMode:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

    .line 1276
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "listen and connect are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1282
    :catch_0
    move-exception v0

    .line 1363
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    .line 1279
    :cond_2
    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->ConnectMode:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 1288
    :goto_2
    sget-object v2, Lcom/adobe/air/AndroidActivityWrapper$1;->$SwitchMap$com$adobe$air$AndroidActivityWrapper$DebugMode:[I

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1301
    :pswitch_1
    :try_start_3
    new-instance v1, Ljava/net/ServerSocket;

    iget v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->debuggerPort:I

    const/4 v3, 0x1

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 1302
    :try_start_4
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    .line 1319
    if-eqz v1, :cond_3

    .line 1320
    :try_start_5
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    move v1, v6

    .line 1327
    :cond_4
    :goto_3
    if-eqz v1, :cond_9

    .line 1328
    iput-boolean v6, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDisplayWaitingDialog:Z

    .line 1329
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->afterOnCreate()V

    .line 1335
    :goto_4
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDebuggerSettings:Lcom/adobe/air/DebuggerSettings;

    sget-object v2, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->ListenMode:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

    if-ne v0, v2, :cond_a

    move v0, v6

    :goto_5
    invoke-virtual {v1, v0}, Lcom/adobe/air/DebuggerSettings;->setListen(Z)V

    .line 1336
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDebuggerSettings:Lcom/adobe/air/DebuggerSettings;

    iget v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->debuggerPort:I

    invoke-virtual {v0, v1}, Lcom/adobe/air/DebuggerSettings;->setDebugerPort(I)V

    goto :goto_1

    .line 1321
    :catch_1
    move-exception v1

    move v1, v6

    .line 1325
    goto :goto_3

    .line 1303
    :catch_2
    move-exception v1

    move-object v1, v7

    .line 1319
    :goto_6
    if-eqz v1, :cond_5

    .line 1320
    :try_start_6
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_5
    move v1, v5

    .line 1324
    goto :goto_3

    .line 1321
    :catch_3
    move-exception v1

    move v1, v5

    .line 1325
    goto :goto_3

    .line 1306
    :catch_4
    move-exception v1

    move-object v1, v7

    .line 1319
    :goto_7
    if-eqz v1, :cond_6

    .line 1320
    :try_start_7
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_6
    move v1, v5

    .line 1324
    goto :goto_3

    .line 1321
    :catch_5
    move-exception v1

    move v1, v5

    .line 1325
    goto :goto_3

    .line 1309
    :catch_6
    move-exception v1

    move-object v2, v7

    .line 1310
    :goto_8
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.os.NetworkOnMainThreadException"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result v1

    if-eqz v1, :cond_7

    move v1, v6

    .line 1319
    :goto_9
    if-eqz v2, :cond_4

    .line 1320
    :try_start_9
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_3

    .line 1321
    :catch_7
    move-exception v2

    goto :goto_3

    :cond_7
    move v1, v5

    .line 1314
    goto :goto_9

    .line 1318
    :catchall_0
    move-exception v0

    move-object v1, v7

    .line 1319
    :goto_a
    if-eqz v1, :cond_8

    .line 1320
    :try_start_a
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 1324
    :cond_8
    :goto_b
    throw v0

    .line 1332
    :cond_9
    iget v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->debuggerPort:I

    invoke-direct {p0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->showDialogUnableToListenOnPort(I)V

    goto :goto_4

    :cond_a
    move v0, v5

    .line 1335
    goto :goto_5

    .line 1340
    :pswitch_2
    invoke-static {v1}, Lcom/adobe/air/utils/Utils;->nativeConnectDebuggerSocket(Ljava/lang/String;)Z

    move-result v0

    .line 1343
    if-nez v0, :cond_b

    .line 1344
    invoke-direct {p0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->showDialogforIpAddress(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1347
    :cond_b
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDebuggerSettings:Lcom/adobe/air/DebuggerSettings;

    invoke-virtual {v0, v1}, Lcom/adobe/air/DebuggerSettings;->setHost(Ljava/lang/String;)V

    .line 1348
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->afterOnCreate()V

    goto/16 :goto_1

    .line 1354
    :pswitch_3
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->afterOnCreate()V

    goto/16 :goto_1

    .line 1321
    :catch_8
    move-exception v1

    goto :goto_b

    .line 1318
    :catchall_1
    move-exception v0

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_a

    .line 1309
    :catch_9
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_8

    .line 1306
    :catch_a
    move-exception v2

    goto :goto_7

    .line 1303
    :catch_b
    move-exception v2

    goto :goto_6

    .line 1259
    :catch_c
    move-exception v0

    goto/16 :goto_0

    :cond_c
    move-object v0, v1

    move-object v1, v7

    goto/16 :goto_2

    .line 1288
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private closeDialogWaitingForConnection()V
    .locals 4

    .prologue
    .line 1374
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1378
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1379
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1380
    const-string v2, "RemoteDebuggerListenerDialogClose"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1381
    const-string v2, "debuggerPort"

    iget v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->debuggerPort:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1382
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1388
    :goto_0
    return-void

    .line 1384
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initializeAndroidAppVars(Landroid/content/pm/ApplicationInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 553
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 554
    invoke-static {v0}, Lcom/adobe/air/ApplicationFileManager;->setAndroidPackageName(Ljava/lang/String;)V

    .line 557
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/air/ApplicationFileManager;->setAndroidAPKPath(Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 561
    invoke-static {v0}, Lcom/adobe/air/ApplicationFileManager;->processAndroidDataPath(Ljava/lang/String;)V

    .line 562
    return-void
.end method

.method public static isGingerbread()Z
    .locals 2

    .prologue
    .line 169
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 170
    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHoneycomb()Z
    .locals 2

    .prologue
    .line 175
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 176
    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJellybean()Z
    .locals 2

    .prologue
    .line 181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 182
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeActivateEvent()V
.end method

.method private native nativeDeactivateEvent()V
.end method

.method private native nativeLowMemoryEvent()V
.end method

.method private native nativeOnFocusListener(Z)V
.end method

.method private native nativeSendInvokeEventWithData(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method private native nativeSetVisible(Z)V
.end method

.method private parseArgs(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const-string v5, "false"

    const-string v3, ""

    .line 566
    const-string v0, ""

    .line 567
    const-string v0, ""

    .line 568
    const-string v0, ""

    .line 569
    const-string v0, "false"

    .line 570
    const-string v0, "false"

    .line 573
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    const/4 v1, 0x1

    :try_start_1
    aget-object v1, p2, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 575
    const/4 v2, 0x2

    :try_start_2
    aget-object v2, p2, v2
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 576
    const/4 v3, 0x3

    :try_start_3
    aget-object v3, p2, v3
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    .line 577
    const/4 v4, 0x4

    :try_start_4
    aget-object v4, p2, v4
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v6, v4

    move-object v4, v0

    move-object v0, v6

    move-object v7, v1

    move-object v1, v3

    move-object v3, v7

    .line 588
    :goto_0
    iput-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mExtraArgs:Ljava/lang/String;

    .line 589
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsADL:Z

    .line 590
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsDebuggerMode:Z

    .line 592
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 595
    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->initializeAndroidAppVars(Landroid/content/pm/ApplicationInfo;)V

    .line 597
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsADL:Z

    if-eqz v0, :cond_0

    .line 598
    iput-object v4, p0, Lcom/adobe/air/AndroidActivityWrapper;->mXmlPath:Ljava/lang/String;

    .line 599
    iput-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->mRootDir:Ljava/lang/String;

    .line 604
    :goto_1
    return-void

    .line 578
    :catch_0
    move-exception v0

    move-object v0, v5

    move-object v1, v3

    move-object v2, v3

    :goto_2
    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_0

    .line 601
    :cond_0
    invoke-static {}, Lcom/adobe/air/ApplicationFileManager;->getAppXMLRoot()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mXmlPath:Ljava/lang/String;

    .line 602
    invoke-static {}, Lcom/adobe/air/ApplicationFileManager;->getAppRoot()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mRootDir:Ljava/lang/String;

    goto :goto_1

    .line 578
    :catch_1
    move-exception v1

    move-object v1, v3

    move-object v2, v3

    move-object v3, v0

    move-object v0, v5

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v5

    goto :goto_2

    :catch_3
    move-exception v3

    move-object v3, v0

    move-object v0, v5

    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_2

    :catch_4
    move-exception v4

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    goto :goto_2
.end method

.method private setFullScreenFromMetaData()V
    .locals 3

    .prologue
    .line 1572
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1573
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1576
    if-nez v0, :cond_1

    .line 1590
    :cond_0
    :goto_0
    return-void

    .line 1579
    :cond_1
    const-string v1, "fullScreen"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1581
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1583
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->setFullScreen()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1586
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setMainView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 825
    sget-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->sApplicationLaunched:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sEntryPoint:Lcom/adobe/air/Entrypoints;

    if-nez v0, :cond_1

    .line 839
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    :try_start_0
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sEntryPoint:Lcom/adobe/air/Entrypoints;

    invoke-virtual {v0, p1}, Lcom/adobe/air/Entrypoints;->setMainView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 834
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showDialogUnableToListenOnPort(I)V
    .locals 2
    .parameter

    .prologue
    .line 1224
    new-instance v0, Lcom/adobe/air/ListenErrorDialog;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/adobe/air/ListenErrorDialog;-><init>(Landroid/app/Activity;I)V

    .line 1225
    invoke-virtual {v0}, Lcom/adobe/air/ListenErrorDialog;->createAndShowDialog()V

    .line 1226
    return-void
.end method

.method private showDialogWaitingForConnection(I)V
    .locals 3
    .parameter

    .prologue
    .line 1393
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getApplicationContext()Landroid/content/Context;

    .line 1397
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_runtimeContext:Landroid/content/Context;

    const-class v2, Lcom/adobe/air/RemoteDebuggerListenerDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1398
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1399
    const-string v1, "RemoteDebuggerListenerDialog"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1400
    const-string v1, "debuggerPort"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1401
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1407
    :goto_0
    return-void

    .line 1403
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showDialogforIpAddress(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1367
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getApplicationContext()Landroid/content/Context;

    .line 1368
    new-instance v0, Lcom/adobe/air/RemoteDebuggerDialog;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/adobe/air/RemoteDebuggerDialog;-><init>(Landroid/app/Activity;)V

    .line 1369
    invoke-virtual {v0, p1}, Lcom/adobe/air/RemoteDebuggerDialog;->createAndShowDialog(Ljava/lang/String;)V

    .line 1370
    return-void
.end method


# virtual methods
.method public BroadcastIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1167
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getDefaultContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getDefaultIntentFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1177
    :goto_0
    return-void

    .line 1173
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1169
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public GetAppCacheDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1604
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetAppDataDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    return-object v0
.end method

.method public GetDebuggerSettings()Lcom/adobe/air/DebuggerSettings;
    .locals 1

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDebuggerSettings:Lcom/adobe/air/DebuggerSettings;

    return-object v0
.end method

.method public GetLibCorePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mLibCorePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1201
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    invoke-static {v0}, Lcom/adobe/air/utils/Utils;->GetLibCorePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mLibCorePath:Ljava/lang/String;

    .line 1203
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mLibCorePath:Ljava/lang/String;

    return-object v0
.end method

.method public GetRuntimeDataDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_runtimeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public LaunchMarketPlaceForAIR(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1183
    .line 1184
    if-nez p1, :cond_0

    .line 1185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/adobe/air/utils/Utils;->getRuntimePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1189
    :goto_0
    :try_start_0
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p0, v1, v0}, Lcom/adobe/air/AndroidActivityWrapper;->BroadcastIntent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1196
    :goto_1
    return-void

    .line 1192
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public SendIntentToRuntime(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 481
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_runtimeContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 482
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    invoke-virtual {v0, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :goto_0
    return-void

    .line 486
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public SendIntentToRuntime(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 496
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_runtimeContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 497
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    invoke-virtual {v0, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    invoke-virtual {v0, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :goto_0
    return-void

    .line 502
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public SendInvokeEvent()V
    .locals 3

    .prologue
    .line 972
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 976
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 977
    const/4 v2, 0x0

    .line 982
    if-eqz v1, :cond_0

    .line 984
    const/4 v2, 0x1

    .line 988
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, v2}, Lcom/adobe/air/AndroidActivityWrapper;->nativeSendInvokeEventWithData(Ljava/lang/String;Ljava/lang/String;I)V

    .line 989
    return-void
.end method

.method public ShowImmediateUpdateDialog()V
    .locals 8

    .prologue
    const-class v1, Lcom/adobe/air/AIRUpdateDialog;

    const-string v2, "android.intent.action.MAIN"

    const-string v4, "airDownloadURL"

    const-string v3, "AIRUpdateDialog"

    .line 525
    const/4 v5, 0x0

    .line 529
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v6, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v0, v6, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 530
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 533
    if-eqz v0, :cond_1

    .line 535
    const-string v6, "airDownloadURL"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v5, v0

    .line 544
    :goto_1
    if-eqz v5, :cond_0

    .line 545
    const-class v0, Lcom/adobe/air/AIRUpdateDialog;

    const-string v0, "android.intent.action.MAIN"

    const-string v0, "AIRUpdateDialog"

    const-string v0, "airDownloadURL"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/air/AndroidActivityWrapper;->SendIntentToRuntime(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :goto_2
    return-void

    .line 547
    :cond_0
    const-class v0, Lcom/adobe/air/AIRUpdateDialog;

    const-string v0, "android.intent.action.MAIN"

    const-string v0, "AIRUpdateDialog"

    invoke-virtual {p0, v1, v2, v3}, Lcom/adobe/air/AndroidActivityWrapper;->SendIntentToRuntime(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 539
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v0, v5

    goto :goto_0
.end method

.method public StartDownloadConfigService()V
    .locals 2

    .prologue
    .line 510
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 511
    invoke-static {}, Lcom/adobe/air/utils/Utils;->getRuntimePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    const-string v1, "com.adobe.air.DownloadConfig"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :goto_0
    return-void

    .line 516
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public WaitForNewActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1557
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 1558
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1563
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1565
    :goto_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    return-object v0

    .line 1560
    :catch_0
    move-exception v0

    .line 1563
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public addActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V
    .locals 1
    .parameter

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityResultListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityResultListeners:Ljava/util/List;

    .line 1506
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1508
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1510
    :cond_1
    return-void
.end method

.method public addActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V
    .locals 1
    .parameter

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    .line 1442
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1443
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1444
    :cond_1
    return-void
.end method

.method public applyDownloadedConfig()V
    .locals 1

    .prologue
    .line 1827
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sEntryPoint:Lcom/adobe/air/Entrypoints;

    if-eqz v0, :cond_0

    .line 1829
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sEntryPoint:Lcom/adobe/air/Entrypoints;

    invoke-virtual {v0}, Lcom/adobe/air/Entrypoints;->EntryApplyDownloadedConfig()V

    .line 1831
    :cond_0
    return-void
.end method

.method public didRemoveOverlay()V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 444
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    .line 446
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1037
    :cond_0
    return-void
.end method

.method public finishActivityFromChild(Landroid/app/Activity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1619
    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 1623
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    return-object v0
.end method

.method public getAutoOrients()Z
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager;->getAutoOrients()Z

    move-result v0

    return v0
.end method

.method public getCameraView()Lcom/adobe/air/AndroidCameraView;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_cameraView:Lcom/adobe/air/AndroidCameraView;

    return-object v0
.end method

.method public getDefaultContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    .line 417
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    goto :goto_0
.end method

.method public getDefaultIntentFlags()I
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 423
    const/4 v0, 0x0

    .line 425
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x1000

    goto :goto_0
.end method

.method public getDeviceOrientation()I
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager;->getDeviceOrientation()I

    move-result v0

    return v0
.end method

.method public getEgl()Lcom/adobe/air/FlashEGL;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_flashEGL:Lcom/adobe/air/FlashEGL;

    if-nez v0, :cond_0

    .line 467
    new-instance v0, Lcom/adobe/air/FlashEGL;

    invoke-direct {v0}, Lcom/adobe/air/FlashEGL;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_flashEGL:Lcom/adobe/air/FlashEGL;

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_flashEGL:Lcom/adobe/air/FlashEGL;

    return-object v0
.end method

.method public getHardKeyboardType()I
    .locals 1

    .prologue
    .line 1135
    iget v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mHardKeyboardType:I

    return v0
.end method

.method protected getIsFullScreen()Z
    .locals 1

    .prologue
    .line 1599
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsFullScreen:Z

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getOverlaysLayout(Z)Landroid/widget/RelativeLayout;
    .locals 2
    .parameter

    .prologue
    .line 430
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 432
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    .line 433
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getRuntimeContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_runtimeContext:Landroid/content/Context;

    return-object v0
.end method

.method public getSpeakerphoneOn()Z
    .locals 2

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method public getSupportedOrientations()[I
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager;->getSupportedOrientations()[I

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    return-object v0
.end method

.method public gotResultFromDialog(ZLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1411
    .line 1412
    if-eqz p1, :cond_4

    .line 1414
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1415
    invoke-static {p2}, Lcom/adobe/air/utils/Utils;->nativeConnectDebuggerSocket(Ljava/lang/String;)Z

    move-result v0

    .line 1417
    :goto_0
    if-nez v0, :cond_2

    .line 1418
    invoke-direct {p0, p2}, Lcom/adobe/air/AndroidActivityWrapper;->showDialogforIpAddress(Ljava/lang/String;)V

    .line 1427
    :goto_1
    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 1428
    :cond_0
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->afterOnCreate()V

    .line 1429
    :cond_1
    return-void

    .line 1421
    :cond_2
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDebuggerSettings:Lcom/adobe/air/DebuggerSettings;

    invoke-virtual {v1, p2}, Lcom/adobe/air/DebuggerSettings;->setHost(Ljava/lang/String;)V

    .line 1422
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDebuggerSettings:Lcom/adobe/air/DebuggerSettings;

    invoke-virtual {v1, v2}, Lcom/adobe/air/DebuggerSettings;->setListen(Z)V

    .line 1423
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mShowDebuggerDialog:Z

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public initCallStateListener()V
    .locals 2

    .prologue
    .line 843
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sAndroidTelephonyManager:Lcom/adobe/air/telephony/AndroidTelephonyManager;

    if-nez v0, :cond_0

    .line 845
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/air/telephony/AndroidTelephonyManager;->CreateAndroidTelephonyManager(Landroid/content/Context;)Lcom/adobe/air/telephony/AndroidTelephonyManager;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sAndroidTelephonyManager:Lcom/adobe/air/telephony/AndroidTelephonyManager;

    .line 846
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sAndroidTelephonyManager:Lcom/adobe/air/telephony/AndroidTelephonyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/air/telephony/AndroidTelephonyManager;->listen(Z)V

    .line 848
    :cond_0
    return-void
.end method

.method public isApplicationLaunched()Z
    .locals 1

    .prologue
    .line 460
    sget-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->sApplicationLaunched:Z

    return v0
.end method

.method public isHardKeyboardHidden()Z
    .locals 2

    .prologue
    .line 1130
    iget v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mHardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResumed()Z
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->RESUMED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScreenLocked()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->keyGuardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    return v0
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mScreenOn:Z

    return v0
.end method

.method public isStarted()Z
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->STARTED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->RESTARTED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSurfaceValid()Z
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->isSurfaceValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsCompositingSurface()Z
    .locals 2

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_runtimeContext:Landroid/content/Context;

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1142
    const/4 v0, 0x1

    .line 1144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1125
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/air/AndroidActivityWrapper;->callActivityResultListeners(IILandroid/content/Intent;)V

    .line 1126
    return-void
.end method

.method public onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1771
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 1627
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 1631
    return-void
.end method

.method public onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1775
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 1071
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mHardKeyboardHidden:I

    .line 1072
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mHardKeyboardType:I

    .line 1074
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v0, p1}, Lcom/adobe/air/OrientationManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1076
    invoke-direct {p0, p1}, Lcom/adobe/air/AndroidActivityWrapper;->callActivityStateListeners(Landroid/content/res/Configuration;)V

    .line 1077
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 1635
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1639
    return p2
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .parameter

    .prologue
    .line 1644
    return-void
.end method

.method public onCreate(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 609
    iput-object p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    .line 610
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->STARTED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    .line 612
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidActivityWrapper;->parseArgs(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 614
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->SignalNewActivityCreated()V

    .line 618
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-static {}, Lcom/adobe/air/utils/Utils;->getRuntimePackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_runtimeContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    :goto_0
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsDebuggerMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsADL:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->sApplicationLaunched:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/adobe/air/DeviceProfiling;->checkAndInitiateProfiler(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->checkForDebuggerAndLaunchDialog()V

    .line 646
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInvokeEventPendingFromOnCreate:Z

    .line 648
    invoke-static {}, Lcom/adobe/air/ConfigDownloadListener;->GetConfigDownloadListener()Lcom/adobe/air/ConfigDownloadListener;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mConfigDownloadListener:Lcom/adobe/air/ConfigDownloadListener;

    .line 649
    return-void

    .line 642
    :cond_0
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->afterOnCreate()V

    goto :goto_1

    .line 620
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1648
    return-void
.end method

.method public onCreateDescription(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter

    .prologue
    .line 1652
    return-object p1
.end method

.method public onCreateDialog(ILandroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1784
    return-object p2
.end method

.method public onCreateDialog(ILandroid/os/Bundle;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1779
    return-object p3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1657
    return p2
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;Z)Z
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1662
    return p3
.end method

.method public onCreatePanelView(ILandroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1667
    return-object p2
.end method

.method public onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Z)Z
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1672
    return p3
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1677
    return-object p4
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 940
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->DESTROYED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    .line 942
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->callActivityStateListeners()V

    .line 944
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager;->onActivityDestroyed()V

    .line 947
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0x8

    if-ge v1, v0, :cond_2

    .line 948
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 949
    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 947
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 953
    :cond_2
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 954
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 957
    :cond_3
    iput-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    .line 958
    iput-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_cameraView:Lcom/adobe/air/AndroidCameraView;

    .line 959
    iput-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 960
    iput-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    .line 961
    invoke-direct {p0, v3}, Lcom/adobe/air/AndroidActivityWrapper;->setMainView(Landroid/view/View;)V

    .line 963
    invoke-static {}, Lcom/adobe/flashplayer/HDMIUtils;->closeHelper()V

    .line 966
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1682
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;Z)Z
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1686
    return p3
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;Z)Z
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1691
    return p3
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;Z)Z
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1696
    return p4
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;Z)Z
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1701
    return p3
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 1081
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->nativeLowMemoryEvent()V

    .line 1082
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;Z)Z
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1706
    return p3
.end method

.method public onMenuOpened(ILandroid/view/Menu;Z)Z
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1711
    return p3
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 995
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 996
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->SendInvokeEvent()V

    .line 997
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1716
    return p2
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .parameter

    .prologue
    .line 1721
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1725
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 854
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->PAUSED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    .line 856
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->callActivityStateListeners()V

    .line 860
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->forceSoftKeyboardDown()V

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    if-eqz v0, :cond_1

    .line 864
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager;->onActivityPaused()V

    .line 866
    :cond_1
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sIdleStateManager:Lcom/adobe/air/AndroidIdleState;

    if-eqz v0, :cond_2

    .line 867
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sIdleStateManager:Lcom/adobe/air/AndroidIdleState;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidIdleState;->releaseLock()V

    .line 870
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 872
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->nativeOnFocusListener(Z)V

    .line 873
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->nativeDeactivateEvent()V

    .line 876
    :cond_3
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    .line 877
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 1789
    return-void
.end method

.method public onPostResume()V
    .locals 0

    .prologue
    .line 1793
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1801
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1797
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1729
    return p2
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;Z)Z
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1734
    return p4
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 911
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->RESTARTED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    .line 913
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->callActivityStateListeners()V

    .line 924
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->HideSoftKeyboardOnWindowFocusChange()V

    .line 927
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->SetVisible(Z)V

    .line 928
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 1805
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 883
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->RESUMED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    .line 885
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->callActivityStateListeners()V

    .line 887
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager;->onActivityResumed()V

    .line 890
    :cond_0
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sIdleStateManager:Lcom/adobe/air/AndroidIdleState;

    if-eqz v0, :cond_1

    .line 891
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sIdleStateManager:Lcom/adobe/air/AndroidIdleState;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidIdleState;->acquireLock()V

    .line 893
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 895
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->nativeActivateEvent()V

    .line 896
    invoke-direct {p0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->nativeOnFocusListener(Z)V

    .line 903
    :goto_0
    iput-boolean v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_skipKickCascade:Z

    .line 904
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    .line 905
    return-void

    .line 900
    :cond_2
    iput-boolean v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivateEventPending:Z

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter

    .prologue
    .line 1739
    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 1809
    return-void
.end method

.method public onScreenStateChanged(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1046
    iput-boolean p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mScreenOn:Z

    .line 1047
    invoke-direct {p0, p1}, Lcom/adobe/air/AndroidActivityWrapper;->SetVisible(Z)V

    .line 1048
    if-eqz p1, :cond_0

    .line 1049
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_skipKickCascade:Z

    .line 1050
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    .line 1052
    :cond_0
    return-void
.end method

.method public onSearchRequested(Z)Z
    .locals 0
    .parameter

    .prologue
    .line 1744
    return p1
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 933
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->STOPPED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    .line 934
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->callActivityStateListeners()V

    .line 935
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->SetVisible(Z)V

    .line 936
    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 1

    .prologue
    .line 1041
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->SetVisible(Z)V

    .line 1042
    return-void
.end method

.method public onSurfaceInitialized()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1001
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->setMainView(Landroid/view/View;)V

    .line 1002
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->SetVisible(Z)V

    .line 1004
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDisplayWaitingDialog:Z

    if-eqz v0, :cond_0

    .line 1006
    iget v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->debuggerPort:I

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->showDialogWaitingForConnection(I)V

    .line 1007
    iput-boolean v8, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDisplayWaitingDialog:Z

    .line 1010
    :cond_0
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    iget-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->mXmlPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/adobe/air/AndroidActivityWrapper;->mRootDir:Ljava/lang/String;

    iget-object v5, p0, Lcom/adobe/air/AndroidActivityWrapper;->mExtraArgs:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsADL:Z

    iget-boolean v7, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsDebuggerMode:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/adobe/air/AndroidActivityWrapper;->LaunchApplication(Landroid/app/Activity;Lcom/adobe/air/AIRWindowSurfaceView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1012
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInvokeEventPendingFromOnCreate:Z

    if-eqz v0, :cond_2

    .line 1014
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsADL:Z

    if-nez v0, :cond_1

    .line 1017
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->SendInvokeEvent()V

    .line 1020
    :cond_1
    iput-boolean v8, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInvokeEventPendingFromOnCreate:Z

    .line 1023
    :cond_2
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivateEventPending:Z

    if-eqz v0, :cond_3

    .line 1025
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->nativeActivateEvent()V

    .line 1026
    iput-boolean v8, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivateEventPending:Z

    .line 1030
    :cond_3
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->planeCleanCascade()V

    .line 1031
    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1813
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1749
    return p2
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1754
    return p2
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 1759
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 0

    .prologue
    .line 1817
    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .parameter

    .prologue
    .line 1763
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1767
    return-void
.end method

.method public planeBreakCascade()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 313
    move v1, v0

    .line 314
    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    .line 315
    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 316
    add-int/lit8 v1, v1, 0x1

    .line 314
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_1
    if-le v1, v3, :cond_2

    .line 321
    iput-boolean v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeBreakCascade:Z

    .line 323
    :cond_2
    return-void
.end method

.method public planeCleanCascade()V
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeInit:Z

    if-nez v0, :cond_0

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeInit:Z

    .line 306
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    .line 308
    :cond_0
    return-void
.end method

.method public planeKickCascade()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 328
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->isHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_skipKickCascade:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->isJellybean()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mContainsVideo:Z

    if-ne v0, v4, :cond_2

    .line 362
    :cond_1
    :goto_0
    return-void

    .line 332
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->planeCleanCascade()V

    .line 333
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 336
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeBreakCascade:Z

    if-eqz v0, :cond_6

    move v1, v3

    .line 337
    :goto_1
    if-ge v1, v5, :cond_4

    .line 338
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 339
    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 340
    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 337
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 344
    :cond_4
    iput-boolean v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeBreakCascade:Z

    move v1, v3

    .line 345
    :goto_2
    if-ge v1, v5, :cond_5

    .line 346
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 347
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 348
    iput-boolean v4, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeBreakCascade:Z

    .line 353
    :cond_5
    iput v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    .line 355
    :cond_6
    iget v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    if-nez v0, :cond_1

    .line 356
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->planeStepCascade()V

    .line 360
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->requestFocus()Z

    goto :goto_0

    .line 345
    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public planeStepCascade()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 367
    iput-boolean v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_skipKickCascade:Z

    .line 376
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeBreakCascade:Z

    if-nez v0, :cond_0

    .line 381
    :goto_1
    iget v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 382
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    iget v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 383
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    iget v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_2

    .line 384
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    iget v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 386
    :cond_2
    iget v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    goto :goto_0

    .line 381
    :cond_3
    iget v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    goto :goto_1
.end method

.method public registerPlane(Landroid/view/SurfaceView;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 291
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    .line 293
    return-void
.end method

.method public removeActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V
    .locals 1
    .parameter

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityResultListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1516
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1518
    :cond_0
    return-void
.end method

.method public removeActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V
    .locals 1
    .parameter

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1450
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1452
    :cond_0
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1
    .parameter

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v0, p1}, Lcom/adobe/air/OrientationManager;->setAspectRatio(I)V

    .line 1104
    return-void
.end method

.method public setAutoOrients(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v0, p1}, Lcom/adobe/air/OrientationManager;->setAutoOrients(Z)V

    .line 1109
    return-void
.end method

.method protected setIsFullScreen(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1594
    iput-boolean p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsFullScreen:Z

    .line 1595
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v0, p1}, Lcom/adobe/air/OrientationManager;->setOrientation(I)V

    .line 1098
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 2
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 240
    return-void
.end method

.method public setUseRGB565(Ljava/lang/Boolean;)V
    .locals 1
    .parameter

    .prologue
    .line 1149
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mRGB565Override:Z

    .line 1150
    return-void
.end method

.method public unregisterPlane(I)V
    .locals 2
    .parameter

    .prologue
    .line 297
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    .line 299
    return-void
.end method

.method public useRGB565()Z
    .locals 2

    .prologue
    .line 1154
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsADL:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mRGB565Override:Z

    .line 1158
    :goto_0
    return v0

    .line 1155
    :cond_0
    new-instance v0, Lcom/adobe/air/ResourceFileManager;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/adobe/air/ResourceFileManager;-><init>(Landroid/content/Context;)V

    .line 1158
    const-string v1, "raw.rgba8888"

    invoke-virtual {v0, v1}, Lcom/adobe/air/ResourceFileManager;->lookupResId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/air/ResourceFileManager;->resExists(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
