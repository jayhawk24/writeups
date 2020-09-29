.class public Lcom/tencent/testvuln/MoniterInstallService;
.super Landroid/app/Service;
.source "MoniterInstallService.java"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/tencent/testvuln/c;

.field private e:Landroid/content/BroadcastReceiver;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/testvuln/MoniterInstallService;->a:J

    .line 36
    iput-object v2, p0, Lcom/tencent/testvuln/MoniterInstallService;->b:Ljava/lang/String;

    .line 38
    iput-object v2, p0, Lcom/tencent/testvuln/MoniterInstallService;->c:Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lcom/tencent/testvuln/MoniterInstallService;->d:Lcom/tencent/testvuln/c;

    .line 42
    new-instance v0, Lcom/tencent/testvuln/MoniterInstallService$1;

    invoke-direct {v0, p0}, Lcom/tencent/testvuln/MoniterInstallService$1;-><init>(Lcom/tencent/testvuln/MoniterInstallService;)V

    iput-object v0, p0, Lcom/tencent/testvuln/MoniterInstallService;->e:Landroid/content/BroadcastReceiver;

    .line 118
    new-instance v0, Lcom/tencent/testvuln/MoniterInstallService$2;

    invoke-direct {v0, p0}, Lcom/tencent/testvuln/MoniterInstallService$2;-><init>(Lcom/tencent/testvuln/MoniterInstallService;)V

    iput-object v0, p0, Lcom/tencent/testvuln/MoniterInstallService;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/tencent/testvuln/MoniterInstallService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tencent/testvuln/MoniterInstallService;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/testvuln/MoniterInstallService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tencent/testvuln/MoniterInstallService;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/testvuln/MoniterInstallService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tencent/testvuln/MoniterInstallService;->f:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/crash/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/tencent/testvuln/MoniterInstallService;->d:Lcom/tencent/testvuln/c;

    if-nez v1, :cond_0

    .line 168
    new-instance v1, Lcom/tencent/testvuln/c;

    invoke-direct {v1, v0}, Lcom/tencent/testvuln/c;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/testvuln/MoniterInstallService;->d:Lcom/tencent/testvuln/c;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/tencent/testvuln/MoniterInstallService;->d:Lcom/tencent/testvuln/c;

    invoke-virtual {v0}, Lcom/tencent/testvuln/c;->startWatching()V

    .line 172
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/tencent/testvuln/MoniterInstallService;->d:Lcom/tencent/testvuln/c;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/tencent/testvuln/MoniterInstallService;->d:Lcom/tencent/testvuln/c;

    invoke-virtual {v0}, Lcom/tencent/testvuln/c;->stopWatching()V

    .line 179
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    const-string v1, "com.tencent.testvul.service.MoniterFile"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 112
    iget-object v1, p0, Lcom/tencent/testvuln/MoniterInstallService;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/testvuln/MoniterInstallService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 227
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 228
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 140
    const-string v0, "ili"

    .line 141
    const-string v1, "lil"

    .line 143
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/testvuln/MoniterInstallService;->b:Ljava/lang/String;

    .line 144
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/testvuln/MoniterInstallService;->c:Ljava/lang/String;

    .line 147
    new-instance v0, Lcom/tencent/testvuln/MoniterInstallService$3;

    invoke-direct {v0, p0}, Lcom/tencent/testvuln/MoniterInstallService$3;-><init>(Lcom/tencent/testvuln/MoniterInstallService;)V

    .line 156
    invoke-virtual {v0}, Lcom/tencent/testvuln/MoniterInstallService$3;->start()V

    .line 160
    return-void
.end method
