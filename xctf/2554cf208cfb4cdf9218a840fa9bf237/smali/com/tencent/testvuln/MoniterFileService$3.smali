.class Lcom/tencent/testvuln/MoniterFileService$3;
.super Ljava/lang/Thread;
.source "MoniterFileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/testvuln/MoniterFileService;->onStart(Landroid/content/Intent;I)V
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
    .line 133
    iput-object p1, p0, Lcom/tencent/testvuln/MoniterFileService$3;->a:Lcom/tencent/testvuln/MoniterFileService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 138
    const-wide/16 v0, 0x2710

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 145
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 146
    iget-object v1, p0, Lcom/tencent/testvuln/MoniterFileService$3;->a:Lcom/tencent/testvuln/MoniterFileService;

    invoke-static {v1}, Lcom/tencent/testvuln/MoniterFileService;->a(Lcom/tencent/testvuln/MoniterFileService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 147
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
