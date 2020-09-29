.class public Lcom/tencent/testvuln/a;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, ""

    sput-object v0, Lcom/tencent/testvuln/a;->a:Ljava/lang/String;

    .line 18
    const-string v0, ""

    sput-object v0, Lcom/tencent/testvuln/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 15
    const-string v0, "BaseActivity"

    iput-object v0, p0, Lcom/tencent/testvuln/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 53
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 43
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 33
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 38
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 28
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 48
    return-void
.end method
