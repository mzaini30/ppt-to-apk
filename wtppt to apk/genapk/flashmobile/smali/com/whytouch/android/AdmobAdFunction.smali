.class public Lcom/whytouch/android/AdmobAdFunction;
.super Ljava/lang/Object;
.source "AdmobAdFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;
.implements Lcom/google/ads/AdListener;


# instance fields
.field private _act:Landroid/app/Activity;

.field private adgot:I

.field private adview:Lcom/google/ads/AdView;

.field private init:I

.field private lay:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .parameter "act"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v1, p0, Lcom/whytouch/android/AdmobAdFunction;->adgot:I

    .line 45
    iput v1, p0, Lcom/whytouch/android/AdmobAdFunction;->init:I

    .line 50
    iput-object p1, p0, Lcom/whytouch/android/AdmobAdFunction;->_act:Landroid/app/Activity;

    .line 51
    new-instance v1, Lcom/google/ads/AdView;

    iget-object v2, p0, Lcom/whytouch/android/AdmobAdFunction;->_act:Landroid/app/Activity;

    sget-object v3, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    invoke-direct {v1, v2, v3, p2}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/whytouch/android/AdmobAdFunction;->adview:Lcom/google/ads/AdView;

    .line 52
    iget-object v1, p0, Lcom/whytouch/android/AdmobAdFunction;->adview:Lcom/google/ads/AdView;

    invoke-virtual {v1, p0}, Lcom/google/ads/AdView;->setAdListener(Lcom/google/ads/AdListener;)V

    .line 53
    new-instance v0, Lcom/google/ads/AdRequest;

    invoke-direct {v0}, Lcom/google/ads/AdRequest;-><init>()V

    .line 55
    .local v0, localAdRequest:Lcom/google/ads/AdRequest;
    sget-object v1, Lcom/google/ads/AdRequest;->TEST_EMULATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->addTestDevice(Ljava/lang/String;)Lcom/google/ads/AdRequest;

    .line 56
    iget-object v1, p0, Lcom/whytouch/android/AdmobAdFunction;->adview:Lcom/google/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 58
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/whytouch/android/AdmobAdFunction;->_act:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/whytouch/android/AdmobAdFunction;->lay:Landroid/widget/LinearLayout;

    .line 59
    iget-object v1, p0, Lcom/whytouch/android/AdmobAdFunction;->lay:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/whytouch/android/AdmobAdFunction;->adview:Lcom/google/ads/AdView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 61
    return-void
.end method


# virtual methods
.method public Hide()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/whytouch/android/AdmobAdFunction;->lay:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    return-void
.end method

.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 10
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 94
    const/4 v6, 0x0

    .line 97
    .local v6, result:Lcom/adobe/fre/FREObject;
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, p2, v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, func:Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v0, p2, v8

    check-cast v0, Lcom/adobe/fre/FREArray;

    .line 101
    .local v0, arr:Lcom/adobe/fre/FREArray;
    const-string v8, "Show"

    invoke-virtual {v3, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_3

    .line 102
    iget v8, p0, Lcom/whytouch/android/AdmobAdFunction;->init:I

    if-nez v8, :cond_1

    .line 103
    const/4 v8, 0x1

    iput v8, p0, Lcom/whytouch/android/AdmobAdFunction;->init:I

    .line 104
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 105
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget-object v8, p0, Lcom/whytouch/android/AdmobAdFunction;->_act:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 106
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 107
    .local v7, width:I
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 108
    .local v4, height:I
    if-ge v7, v4, :cond_0

    .line 109
    move v7, v4

    .line 113
    :cond_0
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 114
    .local v5, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/whytouch/android/AdmobAdFunction;->lay:Landroid/widget/LinearLayout;

    const/16 v9, 0x30

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 116
    iget-object v8, p0, Lcom/whytouch/android/AdmobAdFunction;->_act:Landroid/app/Activity;

    iget-object v9, p0, Lcom/whytouch/android/AdmobAdFunction;->lay:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v9, v5}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v4           #height:I
    .end local v5           #localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v7           #width:I
    :cond_1
    iget-object v8, p0, Lcom/whytouch/android/AdmobAdFunction;->lay:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_2

    .line 120
    iget-object v8, p0, Lcom/whytouch/android/AdmobAdFunction;->lay:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    :cond_2
    :goto_0
    const-string v8, ""

    invoke-static {v8}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v8

    .line 133
    .end local v0           #arr:Lcom/adobe/fre/FREArray;
    .end local v3           #func:Ljava/lang/String;
    :goto_1
    return-object v8

    .line 123
    .restart local v0       #arr:Lcom/adobe/fre/FREArray;
    .restart local v3       #func:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/whytouch/android/AdmobAdFunction;->Hide()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    .end local v0           #arr:Lcom/adobe/fre/FREArray;
    .end local v3           #func:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 130
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/whytouch/android/AdmobAdFunction;->adview:Lcom/google/ads/AdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->setAdListener(Lcom/google/ads/AdListener;)V

    .line 83
    iget-object v0, p0, Lcom/whytouch/android/AdmobAdFunction;->adview:Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->stopLoading()V

    .line 84
    iget-object v0, p0, Lcom/whytouch/android/AdmobAdFunction;->adview:Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->destroy()V

    .line 85
    return-void
.end method

.method public onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 0
    .parameter "paramAd"

    .prologue
    .line 70
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 1
    .parameter "paramAd"
    .parameter "paramErrorCode"

    .prologue
    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/whytouch/android/AdmobAdFunction;->adgot:I

    .line 77
    return-void
.end method

.method public onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 0
    .parameter "paramAd"

    .prologue
    .line 80
    return-void
.end method

.method public onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 0
    .parameter "paramAd"

    .prologue
    .line 78
    return-void
.end method

.method public onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 2
    .parameter "paramAd"

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adheight "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/whytouch/android/AdmobAdFunction;->adview:Lcom/google/ads/AdView;

    invoke-virtual {v1}, Lcom/google/ads/AdView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/whytouch/android/WTDebuglog;->log(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/whytouch/android/AdmobAdFunction;->adgot:I

    .line 68
    return-void
.end method
