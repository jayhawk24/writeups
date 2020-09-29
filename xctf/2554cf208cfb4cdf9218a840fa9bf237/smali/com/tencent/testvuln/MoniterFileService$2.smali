.class Lcom/tencent/testvuln/MoniterFileService$2;
.super Landroid/os/Handler;
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
    .line 82
    iput-object p1, p0, Lcom/tencent/testvuln/MoniterFileService$2;->a:Lcom/tencent/testvuln/MoniterFileService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 94
    :goto_0
    return-void

    .line 88
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/testvuln/MoniterFileService$2;->a:Lcom/tencent/testvuln/MoniterFileService;

    invoke-virtual {v0}, Lcom/tencent/testvuln/MoniterFileService;->a()V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
