.class Lcom/tencent/testvuln/MoniterInstallService$3;
.super Ljava/lang/Thread;
.source "MoniterInstallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/testvuln/MoniterInstallService;->onStart(Landroid/content/Intent;I)V
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
    .line 148
    iput-object p1, p0, Lcom/tencent/testvuln/MoniterInstallService$3;->a:Lcom/tencent/testvuln/MoniterInstallService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 151
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 152
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 153
    iget-object v1, p0, Lcom/tencent/testvuln/MoniterInstallService$3;->a:Lcom/tencent/testvuln/MoniterInstallService;

    invoke-static {v1}, Lcom/tencent/testvuln/MoniterInstallService;->c(Lcom/tencent/testvuln/MoniterInstallService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 155
    return-void
.end method
