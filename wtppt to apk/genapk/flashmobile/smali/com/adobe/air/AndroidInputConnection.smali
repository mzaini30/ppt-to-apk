.class public Lcom/adobe/air/AndroidInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "AndroidInputConnection.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AndroidInputConnection"


# instance fields
.field private mComposedText:Ljava/lang/CharSequence;

.field private mExtractRequest:Landroid/view/inputmethod/ExtractedTextRequest;

.field private mExtractedText:Landroid/view/inputmethod/ExtractedText;

.field private final mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;


# direct methods
.method public constructor <init>(Lcom/adobe/air/AIRWindowSurfaceView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 49
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 41
    iput-object v1, p0, Lcom/adobe/air/AndroidInputConnection;->mExtractRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 50
    iput-object v1, p0, Lcom/adobe/air/AndroidInputConnection;->mComposedText:Ljava/lang/CharSequence;

    .line 51
    iput-object v1, p0, Lcom/adobe/air/AndroidInputConnection;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 52
    iput-object p1, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 53
    return-void
.end method

.method private native nativeGetTextAfterCursor(I)Ljava/lang/String;
.end method

.method private native nativeGetTextBeforeCursor(I)Ljava/lang/String;
.end method

.method private native nativeGetTextBoxMaxChars()I
.end method

.method private native nativeSetSelection(II)V
.end method

.method private writeText(Ljava/lang/CharSequence;)V
    .locals 11
    .parameter

    .prologue
    .line 271
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 272
    const/4 v0, 0x0

    .line 275
    iget-object v1, p0, Lcom/adobe/air/AndroidInputConnection;->mComposedText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 277
    iget-object v1, p0, Lcom/adobe/air/AndroidInputConnection;->mComposedText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 278
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v9, v0

    .line 280
    :goto_0
    if-ge v9, v1, :cond_0

    .line 282
    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iget-object v2, p0, Lcom/adobe/air/AndroidInputConnection;->mComposedText:Ljava/lang/CharSequence;

    invoke-interface {v2, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v0, v2, :cond_1

    :cond_0
    move v10, v9

    .line 287
    :goto_1
    if-ge v10, v8, :cond_3

    .line 289
    const-string v0, "AndroidInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JP] writeText "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/air/utils/AIRLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x0

    const/16 v2, 0x43

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnKeyListener(IIIZZZ)Z

    .line 294
    iget-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x1

    const/16 v2, 0x43

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnKeyListener(IIIZZZ)Z

    .line 287
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_1

    .line 280
    :cond_1
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 300
    :goto_2
    if-ge v8, v7, :cond_2

    .line 302
    const-string v0, "AndroidInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JP] writeText 2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/air/utils/AIRLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnKeyListener(IIIZZZ)Z

    .line 308
    iget-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnKeyListener(IIIZZZ)Z

    .line 300
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    .line 314
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/air/AndroidInputConnection;->updateIMEText()V

    .line 315
    return-void

    :cond_3
    move v8, v9

    goto :goto_2

    :cond_4
    move v8, v0

    goto :goto_2
.end method


# virtual methods
.method public Reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 363
    iput-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mComposedText:Ljava/lang/CharSequence;

    .line 364
    iput-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mExtractRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 365
    iput-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 366
    return-void
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 263
    const-string v0, "AndroidInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JP] setComposingText "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/air/utils/AIRLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-direct {p0, p1}, Lcom/adobe/air/AndroidInputConnection;->writeText(Ljava/lang/CharSequence;)V

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mComposedText:Ljava/lang/CharSequence;

    .line 266
    const/4 v0, 0x1

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x0

    move v7, v0

    .line 59
    :goto_0
    if-ge v7, p2, :cond_0

    .line 61
    const-string v0, "AndroidInputConnection"

    const-string v1, "[JP] deleteSurroundingText "

    invoke-static {v0, v1}, Lcom/adobe/air/utils/AIRLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x0

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnKeyListener(IIIZZZ)Z

    .line 63
    iget-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x1

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnKeyListener(IIIZZZ)Z

    .line 59
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 65
    :cond_0
    add-int v7, p2, p1

    .line 66
    const/4 v0, 0x0

    move v8, v0

    .line 67
    :goto_1
    if-ge v8, v7, :cond_1

    .line 69
    const-string v0, "AndroidInputConnection"

    const-string v1, "[JP] deleteSurroundingText 2 "

    invoke-static {v0, v1}, Lcom/adobe/air/utils/AIRLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x0

    const/16 v2, 0x43

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnKeyListener(IIIZZZ)Z

    .line 71
    iget-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x1

    const/16 v2, 0x43

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnKeyListener(IIIZZZ)Z

    .line 67
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    .line 74
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public finishComposingText()Z
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mComposedText:Ljava/lang/CharSequence;

    .line 246
    iget-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getIsFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->IsSurfaceChangedForSoftKeyboard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeShowOriginalRect()V

    .line 250
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0, p0}, Lcom/adobe/air/AIRWindowSurfaceView;->setInputConnection(Lcom/adobe/air/AndroidInputConnection;)V

    .line 95
    iget-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetTextContent()Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 98
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 99
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    .line 101
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 102
    iput-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 103
    iput-object p1, p0, Lcom/adobe/air/AndroidInputConnection;->mExtractRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 107
    iget-object v1, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeShowOriginalRect()V

    .line 112
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/adobe/air/AndroidInputConnection;->nativeGetTextAfterCursor(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/adobe/air/AndroidInputConnection;->nativeGetTextBeforeCursor(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public performContextMenuAction(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 135
    packed-switch p1, :pswitch_data_0

    .line 175
    :goto_0
    :pswitch_0
    return v0

    .line 141
    :pswitch_1
    iget-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsTextSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 175
    :goto_1
    :pswitch_2
    iget-object v1, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->onTextBoxContextMenuItem(I)Z

    move-result v0

    goto :goto_0

    .line 147
    :cond_0
    const/4 v0, 0x2

    .line 149
    goto :goto_1

    .line 151
    :pswitch_3
    iget-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsTextSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    const/4 v0, 0x3

    goto :goto_1

    .line 157
    :cond_1
    const/4 v0, 0x4

    .line 159
    goto :goto_1

    .line 161
    :pswitch_4
    const/4 v0, 0x5

    .line 162
    goto :goto_1

    .line 164
    :pswitch_5
    const/4 v0, 0x6

    .line 165
    goto :goto_1

    .line 167
    :pswitch_6
    const/4 v0, 0x7

    .line 168
    goto :goto_1

    .line 170
    :pswitch_7
    const/16 v0, 0x8

    .line 171
    goto :goto_1

    .line 135
    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public performEditorAction(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 123
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->showSoftKeyboard(Z)V

    .line 126
    iget-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeDispatchUserTriggeredSkDeactivateEvent()V

    .line 127
    const/4 v0, 0x1

    .line 129
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/adobe/air/AndroidInputConnection;->nativeGetTextBoxMaxChars()I

    move-result v0

    .line 184
    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 186
    iget-object v1, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetTextContent()Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    .line 187
    iget-object v2, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    add-int/2addr v0, v2

    iget v1, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    sub-int/2addr v0, v1

    .line 188
    const/4 v1, 0x0

    .line 189
    iget-object v2, p0, Lcom/adobe/air/AndroidInputConnection;->mComposedText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 190
    iget-object v1, p0, Lcom/adobe/air/AndroidInputConnection;->mComposedText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 191
    :cond_0
    add-int/2addr v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 192
    if-lez v0, :cond_1

    .line 193
    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v7, v0

    .line 198
    :goto_0
    if-eqz v7, :cond_3

    .line 200
    const-string v0, "AndroidInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JP] setComposingText "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/air/utils/AIRLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-direct {p0, v7}, Lcom/adobe/air/AndroidInputConnection;->writeText(Ljava/lang/CharSequence;)V

    .line 202
    iput-object v7, p0, Lcom/adobe/air/AndroidInputConnection;->mComposedText:Ljava/lang/CharSequence;

    .line 205
    if-gtz p2, :cond_2

    .line 207
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int v8, v0, v1

    .line 208
    const/4 v0, 0x0

    move v9, v0

    :goto_1
    if-ge v9, v8, :cond_3

    .line 210
    const-string v0, "AndroidInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JP] setComposingText "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/air/utils/AIRLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x0

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnKeyListener(IIIZZZ)Z

    .line 212
    iget-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x1

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnKeyListener(IIIZZZ)Z

    .line 208
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    .line 195
    :cond_1
    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_0

    .line 216
    :cond_2
    const/4 v0, 0x1

    if-le p2, v0, :cond_3

    .line 218
    const/4 v0, 0x1

    sub-int v8, p2, v0

    .line 219
    const/4 v0, 0x0

    move v9, v0

    :goto_2
    if-ge v9, v8, :cond_3

    .line 221
    const-string v0, "AndroidInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JP] setComposingText 2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/air/utils/AIRLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x0

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnKeyListener(IIIZZZ)Z

    .line 223
    iget-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x1

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnKeyListener(IIIZZZ)Z

    .line 219
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_2

    .line 227
    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    move-object v7, p1

    goto/16 :goto_0
.end method

.method public setSelection(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 256
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidInputConnection;->nativeSetSelection(II)V

    .line 257
    const/4 v0, 0x1

    return v0
.end method

.method public updateIMEText()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 319
    iget-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mExtractRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    if-nez v0, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetTextContent()Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    .line 327
    iget-object v2, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/air/AndroidInputConnection;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget-object v3, v3, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 329
    if-eqz v2, :cond_2

    iget v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget-object v4, p0, Lcom/adobe/air/AndroidInputConnection;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v4, v4, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    if-ne v3, v4, :cond_2

    iget v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget-object v4, p0, Lcom/adobe/air/AndroidInputConnection;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v4, v4, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-ne v3, v4, :cond_2

    iget v3, v1, Landroid/view/inputmethod/ExtractedText;->flags:I

    iget-object v4, p0, Lcom/adobe/air/AndroidInputConnection;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v4, v4, Landroid/view/inputmethod/ExtractedText;->flags:I

    if-eq v3, v4, :cond_0

    .line 334
    :cond_2
    iput v5, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 340
    if-eqz v2, :cond_3

    .line 342
    iput v5, v1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 343
    iput v5, v1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 344
    const-string v2, ""

    iput-object v2, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 346
    iget-object v2, p0, Lcom/adobe/air/AndroidInputConnection;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v3, v1, Landroid/view/inputmethod/ExtractedText;->flags:I

    iput v3, v2, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 347
    iget-object v2, p0, Lcom/adobe/air/AndroidInputConnection;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iput v3, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 348
    iget-object v2, p0, Lcom/adobe/air/AndroidInputConnection;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iput v3, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 356
    :goto_1
    iget-object v2, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    iget-object v3, p0, Lcom/adobe/air/AndroidInputConnection;->mExtractRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    iget v3, v3, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    goto :goto_0

    .line 352
    :cond_3
    iput v6, v1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 353
    iput v6, v1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 354
    iput-object v1, p0, Lcom/adobe/air/AndroidInputConnection;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    goto :goto_1
.end method
