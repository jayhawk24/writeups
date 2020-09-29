.class public Lcom/tencent/testvuln/TestRemoteService;
.super Landroid/app/Service;
.source "TestRemoteService.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/tencent/testvuln/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/tencent/testvuln/TestRemoteService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/testvuln/TestRemoteService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 14
    new-instance v0, Lcom/tencent/testvuln/TestRemoteService$1;

    invoke-direct {v0, p0}, Lcom/tencent/testvuln/TestRemoteService$1;-><init>(Lcom/tencent/testvuln/TestRemoteService;)V

    iput-object v0, p0, Lcom/tencent/testvuln/TestRemoteService;->b:Lcom/tencent/testvuln/b$a;

    .line 29
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/tencent/testvuln/TestRemoteService;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tencent/testvuln/TestRemoteService;->b:Lcom/tencent/testvuln/b$a;

    return-object v0
.end method
