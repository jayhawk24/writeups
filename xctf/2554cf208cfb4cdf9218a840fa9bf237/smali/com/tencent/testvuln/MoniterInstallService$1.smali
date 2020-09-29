.class Lcom/tencent/testvuln/MoniterInstallService$1;
.super Landroid/content/BroadcastReceiver;
.source "MoniterInstallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/testvuln/MoniterInstallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/testvuln/MoniterInstallService;


# direct methods
.method constructor <init>(Lcom/tencent/testvuln/MoniterInstallService;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/tencent/testvuln/MoniterInstallService$1;->a:Lcom/tencent/testvuln/MoniterInstallService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tencent/testvuln/MoniterInstallService$1;->a:Lcom/tencent/testvuln/MoniterInstallService;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/testvuln/MoniterInstallService;->b(Ljava/lang/String;)V

    .line 50
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.setting.word"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    const-string v1, "1"

    iget-object v2, p0, Lcom/tencent/testvuln/MoniterInstallService$1;->a:Lcom/tencent/testvuln/MoniterInstallService;

    invoke-static {v2}, Lcom/tencent/testvuln/MoniterInstallService;->a(Lcom/tencent/testvuln/MoniterInstallService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v1, "2"

    iget-object v2, p0, Lcom/tencent/testvuln/MoniterInstallService$1;->a:Lcom/tencent/testvuln/MoniterInstallService;

    invoke-static {v2}, Lcom/tencent/testvuln/MoniterInstallService;->b(Lcom/tencent/testvuln/MoniterInstallService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 65
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
