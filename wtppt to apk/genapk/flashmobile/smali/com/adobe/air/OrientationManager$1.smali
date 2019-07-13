.class Lcom/adobe/air/OrientationManager$1;
.super Landroid/view/OrientationEventListener;
.source "OrientationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/OrientationManager;->onActivityCreated(Landroid/app/Activity;Lcom/adobe/air/AIRWindowSurfaceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/OrientationManager;


# direct methods
.method constructor <init>(Lcom/adobe/air/OrientationManager;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0xe1

    const/16 v5, 0x87

    const/16 v2, 0x2d

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 240
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    .line 254
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 256
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    #setter for: Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I
    invoke-static {v0, v1}, Lcom/adobe/air/OrientationManager;->access$002(Lcom/adobe/air/OrientationManager;I)I

    .line 257
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    .line 280
    :cond_0
    :goto_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->mAutoOrients:Z
    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$100(Lcom/adobe/air/OrientationManager;)Z

    move-result v1

    if-ne v1, v3, :cond_a

    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->mOldDeviceOrientation:I
    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$200(Lcom/adobe/air/OrientationManager;)I

    move-result v1

    iget-object v2, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I
    invoke-static {v2}, Lcom/adobe/air/OrientationManager;->access$000(Lcom/adobe/air/OrientationManager;)I

    move-result v2

    if-eq v1, v2, :cond_a

    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_a

    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->mOrientation:I
    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$300(Lcom/adobe/air/OrientationManager;)I

    move-result v1

    if-eq v1, v0, :cond_a

    .line 284
    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$400(Lcom/adobe/air/OrientationManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 286
    iget-object v2, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/adobe/air/OrientationManager;->access$400(Lcom/adobe/air/OrientationManager;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #calls: Lcom/adobe/air/OrientationManager;->isReOrientingAllowed()Z
    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$500(Lcom/adobe/air/OrientationManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    iget-object v2, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->mOrientation:I
    invoke-static {v2}, Lcom/adobe/air/OrientationManager;->access$300(Lcom/adobe/air/OrientationManager;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/adobe/air/OrientationManager;->nativeOrientationChanging(II)Z

    move-result v1

    .line 292
    if-eqz v1, :cond_8

    .line 294
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->mOrientation:I
    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$300(Lcom/adobe/air/OrientationManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/air/OrientationManager;->setNearestOrientation(I)V

    .line 295
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->mOrientation:I
    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$300(Lcom/adobe/air/OrientationManager;)I

    move-result v1

    #setter for: Lcom/adobe/air/OrientationManager;->mFinalOrientation:I
    invoke-static {v0, v1}, Lcom/adobe/air/OrientationManager;->access$602(Lcom/adobe/air/OrientationManager;I)I

    .line 312
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I
    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$000(Lcom/adobe/air/OrientationManager;)I

    move-result v1

    #setter for: Lcom/adobe/air/OrientationManager;->mOldDeviceOrientation:I
    invoke-static {v0, v1}, Lcom/adobe/air/OrientationManager;->access$202(Lcom/adobe/air/OrientationManager;I)I

    .line 313
    return-void

    .line 259
    :cond_2
    if-lt p1, v2, :cond_3

    if-ge p1, v5, :cond_3

    .line 261
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_RIGHT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    #setter for: Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I
    invoke-static {v0, v1}, Lcom/adobe/air/OrientationManager;->access$002(Lcom/adobe/air/OrientationManager;I)I

    .line 262
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 264
    :cond_3
    if-lt p1, v5, :cond_4

    if-ge p1, v6, :cond_4

    .line 266
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->UPSIDE_DOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    #setter for: Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I
    invoke-static {v0, v1}, Lcom/adobe/air/OrientationManager;->access$002(Lcom/adobe/air/OrientationManager;I)I

    .line 267
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->UPSIDE_DOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 269
    :cond_4
    if-lt p1, v6, :cond_5

    const/16 v1, 0x13b

    if-ge p1, v1, :cond_5

    .line 271
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    #setter for: Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I
    invoke-static {v0, v1}, Lcom/adobe/air/OrientationManager;->access$002(Lcom/adobe/air/OrientationManager;I)I

    .line 272
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_RIGHT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 274
    :cond_5
    if-ltz p1, :cond_6

    if-lt p1, v2, :cond_7

    :cond_6
    const/16 v1, 0x13b

    if-lt p1, v1, :cond_0

    const/16 v1, 0x168

    if-ge p1, v1, :cond_0

    .line 276
    :cond_7
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    #setter for: Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I
    invoke-static {v0, v1}, Lcom/adobe/air/OrientationManager;->access$002(Lcom/adobe/air/OrientationManager;I)I

    .line 277
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 299
    :cond_8
    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    iget-object v2, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #calls: Lcom/adobe/air/OrientationManager;->setSensorBasedOrientation()Z
    invoke-static {v2}, Lcom/adobe/air/OrientationManager;->access$700(Lcom/adobe/air/OrientationManager;)Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_2
    #setter for: Lcom/adobe/air/OrientationManager;->mFinalOrientation:I
    invoke-static {v1, v0}, Lcom/adobe/air/OrientationManager;->access$602(Lcom/adobe/air/OrientationManager;I)I

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->mOrientation:I
    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$300(Lcom/adobe/air/OrientationManager;)I

    move-result v0

    goto :goto_2

    .line 304
    :cond_a
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->mAutoOrients:Z
    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$100(Lcom/adobe/air/OrientationManager;)Z

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->mSetOrientation:Z
    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$800(Lcom/adobe/air/OrientationManager;)Z

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->mOldDeviceOrientation:I
    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$200(Lcom/adobe/air/OrientationManager;)I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I
    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$000(Lcom/adobe/air/OrientationManager;)I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->mOldDeviceOrientation:I
    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$200(Lcom/adobe/air/OrientationManager;)I

    move-result v0

    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I
    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$000(Lcom/adobe/air/OrientationManager;)I

    move-result v0

    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F
    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$900(Lcom/adobe/air/OrientationManager;)F

    move-result v0

    const v1, 0x40533333

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$400(Lcom/adobe/air/OrientationManager;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 308
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$400(Lcom/adobe/air/OrientationManager;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 309
    :cond_b
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #setter for: Lcom/adobe/air/OrientationManager;->mSetOrientation:Z
    invoke-static {v0, v4}, Lcom/adobe/air/OrientationManager;->access$802(Lcom/adobe/air/OrientationManager;Z)Z

    goto/16 :goto_1
.end method
