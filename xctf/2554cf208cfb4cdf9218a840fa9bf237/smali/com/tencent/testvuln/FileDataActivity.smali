.class public Lcom/tencent/testvuln/FileDataActivity;
.super Lcom/tencent/testvuln/a;
.source "FileDataActivity.java"


# instance fields
.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/tencent/testvuln/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/tencent/testvuln/a;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/tencent/testvuln/FileDataActivity;->setContentView(I)V

    .line 21
    const/high16 v0, 0x7f070000

    invoke-virtual {p0, v0}, Lcom/tencent/testvuln/FileDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/testvuln/FileDataActivity;->c:Landroid/widget/TextView;

    .line 22
    iget-object v0, p0, Lcom/tencent/testvuln/FileDataActivity;->c:Landroid/widget/TextView;

    const-string v1, "9YuQ2dk8CSaCe7DTAmaqAA=="

    invoke-static {p0, v1}, Lcom/tencent/testvuln/c/Encryto;->decode(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    return-void
.end method
