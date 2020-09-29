.class Lcom/tencent/testvuln/MoniterInstallService$2;
.super Landroid/os/Handler;
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
    .line 119
    iput-object p1, p0, Lcom/tencent/testvuln/MoniterInstallService$2;->a:Lcom/tencent/testvuln/MoniterInstallService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 122
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 131
    :goto_0
    return-void

    .line 125
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/testvuln/MoniterInstallService$2;->a:Lcom/tencent/testvuln/MoniterInstallService;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/testvuln/MoniterInstallService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
