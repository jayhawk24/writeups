.class Lcom/tencent/testvuln/MoniterFileService$1;
.super Landroid/content/BroadcastReceiver;
.source "MoniterFileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/testvuln/MoniterFileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/testvuln/MoniterFileService;


# direct methods
.method constructor <init>(Lcom/tencent/testvuln/MoniterFileService;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/tencent/testvuln/MoniterFileService$1;->a:Lcom/tencent/testvuln/MoniterFileService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 49
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
