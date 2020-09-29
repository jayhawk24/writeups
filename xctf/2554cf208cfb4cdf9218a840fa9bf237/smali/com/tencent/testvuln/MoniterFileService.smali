.class public Lcom/tencent/testvuln/MoniterFileService;
.super Landroid/app/Service;
.source "MoniterFileService.java"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/tencent/testvuln/c;

.field private e:Lcom/tencent/testvuln/c;

.field private f:Landroid/content/BroadcastReceiver;

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/testvuln/MoniterFileService;->a:J

    .line 34
    iput-object v2, p0, Lcom/tencent/testvuln/MoniterFileService;->b:Ljava/lang/String;

    .line 36
    iput-object v2, p0, Lcom/tencent/testvuln/MoniterFileService;->c:Ljava/lang/String;

    .line 38
    iput-object v2, p0, Lcom/tencent/testvuln/MoniterFileService;->d:Lcom/tencent/testvuln/c;

    .line 40
    iput-object v2, p0, Lcom/tencent/testvuln/MoniterFileService;->e:Lcom/tencent/testvuln/c;

    .line 42
    new-instance v0, Lcom/tencent/testvuln/MoniterFileService$1;

    invoke-direct {v0, p0}, Lcom/tencent/testvuln/MoniterFileService$1;-><init>(Lcom/tencent/testvuln/MoniterFileService;)V

    iput-object v0, p0, Lcom/tencent/testvuln/MoniterFileService;->f:Landroid/content/BroadcastReceiver;

    .line 82
    new-instance v0, Lcom/tencent/testvuln/MoniterFileService$2;

    invoke-direct {v0, p0}, Lcom/tencent/testvuln/MoniterFileService$2;-><init>(Lcom/tencent/testvuln/MoniterFileService;)V

    iput-object v0, p0, Lcom/tencent/testvuln/MoniterFileService;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/tencent/testvuln/MoniterFileService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tencent/testvuln/MoniterFileService;->g:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.xplatform.launchdplugin2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 104
    const-string v2, "packagename"

    const-string v3, "com.tencent.mobileqq111"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v2, "processname"

    const-string v3, "com.tencent.mobileqq:tool123"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v2, "preload"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    const-string v2, "movesofile"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    const-string v2, "activityname"

    const-string v3, "com.tencent.mobileqq.MainActivity"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v2, "processname"

    const-string v3, "1.0"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, v0}, Lcom/tencent/testvuln/MoniterFileService;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 64
    const-string v0, "com.tencent.wifimanager"

    .line 65
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    const-string v2, "action.guid.got:%s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    const-string v2, "action.rsa.got:%s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const-string v2, "action.reg.guid:%s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    const-string v2, "action.up.rsa:%s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string v2, "action.d.a:%s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/tencent/testvuln/MoniterFileService;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/testvuln/MoniterFileService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    const-string v1, "com.tencent.testvul.service.MoniterFile"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 77
    iget-object v1, p0, Lcom/tencent/testvuln/MoniterFileService;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/testvuln/MoniterFileService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 293
    const-string v0, "Test"

    const-string v1, "Service onDestroy--->"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 295
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 125
    const-string v0, "ilil"

    .line 126
    const-string v1, "lili"

    .line 128
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/testvuln/MoniterFileService;->b:Ljava/lang/String;

    .line 129
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/testvuln/MoniterFileService;->c:Ljava/lang/String;

    .line 132
    new-instance v0, Lcom/tencent/testvuln/MoniterFileService$3;

    invoke-direct {v0, p0}, Lcom/tencent/testvuln/MoniterFileService$3;-><init>(Lcom/tencent/testvuln/MoniterFileService;)V

    .line 148
    invoke-virtual {v0}, Lcom/tencent/testvuln/MoniterFileService$3;->start()V

    .line 152
    return-void
.end method
